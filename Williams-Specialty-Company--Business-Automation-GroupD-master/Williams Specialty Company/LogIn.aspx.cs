using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Catalog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, ImageClickEventArgs e)
    {
        /* If authenticated, redirect to order info 
         * If not redirect to My Account
        
        Response.Redirect("~/OrderInformation.apsx");
        Response.Redirect("~/MyAccount.aspx");*/
    }
}