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
       // grdUsers.Columns[0].Visible = !User.IsInRole("C");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (clsDataLayer.SaveUser(Server.MapPath("~/Database/Group4DB.accdb"),
  txtUserName.Text, txtPassword.Text, drpSecurityLevel.SelectedValue))
        {
            lblDisplay.Text = "The user was successfully added!";
            grdUsers.DataBind();
        }
        else
        {
            lblDisplay.Text = "The User was not added";
        }
    }

    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtPassword_TextChanged(object sender, EventArgs e)
    {

    }
}