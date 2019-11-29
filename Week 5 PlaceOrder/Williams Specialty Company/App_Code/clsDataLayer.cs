﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Net;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for clsDataLayer
/// </summary>
public class clsDataLayer
{
    public clsDataLayer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    //Added 11/19/19
    public static dsCustomers GetAddressInfo(string Database, string UserLogon)
    {
        dsCustomers DS;
        OleDbConnection sqlConn;
        OleDbDataAdapter sqlDA;


        sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
        "Data Source=" + Database); 

        sqlDA = new OleDbDataAdapter("SELECT Customer.* FROM Users INNER JOIN Customer ON Users.UserID = Customer.UserID WHERE (((Users.UserLogon)= '" + UserLogon + "'))", sqlConn);

        DS = new dsCustomers();
        sqlDA.Fill(DS.Customer);
        return DS;
    }

    //Added 11/18/19
    public static dsUser VerifyUser(string Database, string UserName, string UserPassword)
    {

        dsUser DS;
        OleDbConnection sqlConn;
        OleDbDataAdapter sqlDA;


        sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
        "Data Source=" + Database);


        sqlDA = new OleDbDataAdapter("Select UserSecLevel from Users " +
                                      "where UserLogon like '" + UserName + "' " +
                                      "and UserPassword like '" + UserPassword + "'", sqlConn);


        DS = new dsUser();
        sqlDA.Fill(DS.Users);
        return DS;

    }
 //end 11/18/19 addition

    public static bool SaveUser(string Database, string UserLogon, string UserPassword, string UserSecLevel, string AddressLine1, string City, string StateCode, string PostalCode, string CFName, string CLName, string CCNum, string CCExp, string CCPin, string CCType)
    {
        bool recordSaved;

        try
        {
            // creates new connection to database
            OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);
            conn.Open();
            OleDbCommand command = conn.CreateCommand();
            string strSQL;
            string strSQLID = "Select @@Identity";

            // creates a SQL string to be inserted into the Users table
            strSQL = "Insert into Users " +
            "(UserLogon, UserPassword, UserSecLevel) values ('" +
            UserLogon + "', '" + UserPassword + "', '" + UserSecLevel + "')";

            // issues a SQl string command type
            command.CommandType = CommandType.Text;
            command.CommandText = strSQL;

            // executes an SQL statement
            command.ExecuteNonQuery();

            // Get the UserID back.
            command.CommandText = strSQLID;
            int userID = (int)command.ExecuteScalar();

            strSQL = "Insert into Address " + "(AddressLine1, City, StateCode, PostalCode) values ('" + AddressLine1 + "','" + City + "','" + StateCode + "','" + PostalCode + "')";
            // issues a SQl string command type
            command.CommandType = CommandType.Text;
            command.CommandText = strSQL;

            // executes an SQL statement
            command.ExecuteNonQuery();

            // Get the Address back.
            command.CommandText = strSQLID;
            int addressID = (int)command.ExecuteScalar();

            strSQL = "Insert into Customer " + "(CFName,CLName, CCNum, CCExp,CCPin, CCType, AddressID, UserID) values ('" + CFName + "','" + CLName + "','" + CCNum + "','" + CCExp + "','" +
              CCPin + "','" + CCType + "'," + addressID + "," + userID + ")";

            command.CommandType = CommandType.Text;
            command.CommandText = strSQL;

            command.ExecuteNonQuery();

            // closes the connection to the data source
            conn.Close();

            recordSaved = true;
        }
        catch (Exception ex)
        {
            // catches the new data input if incorrect and rollsback to the previous dataset
            // myTransaction.Rollback();
            recordSaved = false;
        }
        return recordSaved;

    }

    public static bool SaveUser(string v, string text1, string text2, object p)
    {
        throw new NotImplementedException();
    }

    // added 11/27/2019 This function saves the customers order - Joey Muzzo
    public static bool SaveOrder(string Database, int OrderID, int OrderQty, int ProdID, string Message, int ProdTotal)
    {
        bool recordSaved;
        // represents an SQL transaction to be made at a data source
        OleDbTransaction myTransaction = null;
        try
        {
            // creates new connection to database
            OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);
            conn.Open();
            OleDbCommand command = conn.CreateCommand();
            string strSQL;
            // begins the SQl transaction to the data source
            myTransaction = conn.BeginTransaction();
            command.Transaction = myTransaction;
            // creates a SQL string to be inserted into the tblPersonnel table
            strSQL = "Insert into PurshaseOrderDetail " +
            "(OrderID, OrderQty, ProdID, Message, ProdTotal) values ('" +
            OrderID + "', '" + OrderQty + "', '" + ProdID + "', '" + Message + "', '" + ProdTotal + "')";
            // issues a SQl string command type
            command.CommandType = CommandType.Text;
            command.CommandText = strSQL;
            // executes an SQL statement
            command.ExecuteNonQuery();
           
            // commits the new input to the data source
           myTransaction.Commit();
            // closes the connection to the data source
            conn.Close();

            recordSaved = true;
        }
        catch (Exception ex)
        {
            // catches the new data input if incorrect and rollsback to the previous dataset
            myTransaction.Rollback();
            recordSaved = false;
        }
        return recordSaved;
    }
}