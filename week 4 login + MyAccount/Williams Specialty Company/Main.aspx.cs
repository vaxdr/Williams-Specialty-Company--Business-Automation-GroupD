using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session[ "SecurityLevel"] == null)
        {
            btnLogin.Visible = true;
            btnLogout.Visible = false;
        }
        else
        {
            btnLogin.Visible = false;
            btnLogout.Visible = true;
        }
    }


    protected void btnLogin_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void btnLogout_Click(object sender, ImageClickEventArgs e)
    {
        Session["SecurityLevel"] = null;
        Session["CustID"] = null;
        Session["AddressID"] = null;
        Session["UserNameID"] = null;
    }
}