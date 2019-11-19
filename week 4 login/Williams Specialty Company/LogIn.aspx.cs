using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Catalog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["SecurityLevel"] = null;
    }

    protected void btnLogin_Click(object sender, ImageClickEventArgs e)
    {
        
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        
        // creates a local variable for the data set
        dsUser dsUserLogon;
        dsCustomers dsCustomerInfo;//added 11/19/19
        // creates a local string variable 
        string SecurityLevel;
        // checks the data set dsUserLogin to see if it is = to the VerifyUser method in the clsDataLayer page
        dsUserLogon = clsDataLayer.VerifyUser(Server.MapPath("~/Database/Group4DB.accdb"), Login1.UserName, Login1.Password);

        if (dsUserLogon.Users.Count < 1)
        {
            //If not valid login redirect back to login page.


            lblStatus.Text = ("Invalid Login!");


        }


        else
        { 
        // takes the security level and changes it to a string variable
        SecurityLevel = dsUserLogon.Users[0].UserSecLevel.ToString();
            // switch statement that checks security level 
            switch (SecurityLevel)
            {
                case "O":
                    // this is the case for an administrator security level 
                    e.Authenticated = true;
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                    Session["SecurityLevel"] = "O";
                    dsCustomerInfo = clsDataLayer.GetAddressInfo(Server.MapPath("Group4DB.accdb"), Login1.UserName); //added 11/19/19
                    int AddressID = dsCustomerInfo.Customer[0].AddressID;
                    Session["AddressID"] = AddressID;
                    dsCustomerInfo = clsDataLayer.GetAddressInfo(Server.MapPath("Group4DB.accdb"), Login1.UserName);//added 11/19/19
                    int CustID = dsCustomerInfo.Customer[0].CustID;
                    Session["CustID"] = CustID;
                    break;
                case "C":
                    // this is the case for a user security level
                    e.Authenticated = true;
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                    Session["SecurityLevel"] = "C";
                    break;
                default:
                    e.Authenticated = false;
                    break;
            }
                    /*
                    dsUser dsUserLogin;
                    dsCustomers dsCustomerInfo;


                    dsUserLogin = clsDataLayer.VerifyUser(Server.MapPath("SiteDB.accdb"), txtUserName.Text, txtPassword.Text);

                    if (dsUserLogin.Users.Count < 1)
                    {
                        //If not valid login redirect back to login page.


                        lblStatus.Text = ("Invalid Login!");


                    }

                    else //If login Correct, Redirect to proper security level enabled Web Page. 
                    {

                        string SecurityLevel = dsUserLogin.Users[0].UserSecLevel;

                        switch (SecurityLevel)
                        {

                            case "C":
                                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
                                Session["SecurityLevel"] = "C";
                                Session["UserNameID"] = txtUserName.Text;
                                dsCustomerInfo = clsDataLayer.GetAddressInfo(Server.MapPath("SiteDB.accdb"), txtUserName.Text);
                                int AddressID = dsCustomerInfo.Customer[0].AddressID;
                                Session["AddressID"] = AddressID;
                                dsCustomerInfo = clsDataLayer.GetAddressInfo(Server.MapPath("SiteDB.accdb"), txtUserName.Text);
                                int CustID = dsCustomerInfo.Customer[0].CustID;
                                Session["CustID"] = CustID;
                                Response.Redirect("public/frmCatalog.aspx");
                                break;
                            case "S":
                                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
                                Session["SecurityLevel"] = "S";
                                Session["UserNameID"] = txtUserName.Text;
                                Response.Redirect("frmViewOrders.aspx");
                                break;
                            case "O":
                                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
                                Session["SecurityLevel"] = "O";
                                Session["UserNameID"] = txtUserName.Text;
                                Response.Redirect("frmUpdateOrder.aspx");
                                break;

                        }








                    }
                    */
            }
        
    }
}