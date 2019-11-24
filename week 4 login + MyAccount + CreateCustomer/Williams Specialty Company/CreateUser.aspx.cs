using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["SecurityLevel"] == "O")//added 11/21/19 hides the user grid view unless security lvl is ops manager - Joey Muzzo
        {
            grdUsers.Visible = true;
        }
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (clsDataLayer.SaveUser(Server.MapPath("~/Database/Group4DB.accdb"),
     txtUserName.Text, txtPassword.Text, drpSecurityLevel.SelectedValue, txtAddressLine.Text, txtCity.Text, txtStateCode.Text, txtPostalCode.Text, txtCFName.Text, txtCLName.Text, txtCCNum.Text, txtCCExp.Text, txtCCPin.Text, txtCCType.Text))
        {
            lblDisplay.Text = "The user was successfully added!";
            grdUsers.DataBind();
        }
        else
        {
            lblDisplay.Text = "The User was not added";
        }
        /* if (drpSecurityLevel.SelectedValue == "O")
         {
             if (clsDataLayer.SaveUser(Server.MapPath("~/Database/Group4DB.accdb"),
       txtUserName.Text, txtPassword.Text, drpSecurityLevel.SelectedValue))
             {
                 lblDisplay.Text = "The user was successfully added!";
                 grdUsers.DataBind();
             }
         }
         else if (drpSecurityLevel.SelectedValue == "S")
         {
             if (clsDataLayer.SaveUser(Server.MapPath("~/Database/Group4DB.accdb"),
       txtUserName.Text, txtPassword.Text, drpSecurityLevel.SelectedValue))
             {
                 lblDisplay.Text = "The user was successfully added!";
                 grdUsers.DataBind();
             }
         }
         else
         {
             lblDisplay.Text = "The User was not added";
         }
        */
    }

    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtPassword_TextChanged(object sender, EventArgs e)
    {

    }
}

public class grdUsers
{
}