using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["SecurityLevel"] == "O")//added 12/9/19 hides the grid view unless security lvl is ops manager - Joey Muzzo
        {
            grdOrderInformation.Visible = true;
           
        }
        if(Session["SecurityLevel"] == "S")//added 12/9/19 hides the grid view unless security lvl is sales staff - Joey Muzzo
        {
            grdOrderInformation.Visible = true;

        }
        //  grdOrderInformation.DataBind();
    }
}