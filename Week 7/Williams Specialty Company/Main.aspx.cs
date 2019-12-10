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
        if (Session[ "SecurityLevel"] == null)// is user is not signed in then make the login button visible and logout invisible else make logout visible and login invisible
        {
            btnLogin.Visible = true;
            btnLogout.Visible = false;
        }
        else
        {
            btnLogin.Visible = false;
            btnLogout.Visible = true;
        }
        if (Session["SecurityLevel"] == "C")//added 12/10/19 hides the order information button if securirty level is customer - Joey Muzzo
        {
            btnOrderInfo.Visible = false;

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