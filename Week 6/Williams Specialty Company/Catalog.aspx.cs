﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Catalog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["SecurityLevel"] == "O")//added 11/30/2019 sets visibility to true if securirty level is equl to operations manager - Joey Muzzo
        {
            lblProductName.Visible = true;
            txtProductName.Visible = true;
            lblProductDescription.Visible = true;
            txtProductDescription.Visible = true;
            lblJobType.Visible = true;
            drpJobType.Visible = true;
            lblMediaType.Visible = true;
            drpMediaType.Visible = true;
            lblListPrice.Visible = true;
            txtListPrice.Visible = true;
            btnUpdateCatalog.Visible = true;
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string errorMessage = "";// added 11/30/2019 input validation for UpdateCatalog. Makes sure all input fields are entered correctly. - Joey Muzzo
        try
        {

            bool allOK = true;
            if (Request["txtProductName"].ToString().Trim() == "")
            {
                txtProductName.BackColor = System.Drawing.Color.Yellow;
                errorMessage = errorMessage + " Product Name may not be empty. ";
                allOK = false;
            }
            else
            {
                txtProductName.BackColor = System.Drawing.Color.White;

            }
            if (Request["txtProductDescription"].ToString().Trim() == "")
            {
                txtProductDescription.BackColor = System.Drawing.Color.Yellow;
                errorMessage = errorMessage + " Product Description may not be empty. ";
                allOK = false;
            }
            else
            {
                txtListPrice.BackColor = System.Drawing.Color.White;

            }
            if (Request["txtListPrice"].ToString().Trim() == "")
            {
                txtListPrice.BackColor = System.Drawing.Color.Yellow;
                errorMessage = errorMessage + " List Price may not be empty. ";
                allOK = false;
            }
            else
            {
                txtListPrice.BackColor = System.Drawing.Color.White;

            }

            if (clsDataLayer.UpdateCatalog(Server.MapPath("~/Database/Group4DB.accdb"),
        txtProductName.Text, txtProductDescription.Text, drpJobType.SelectedValue, drpMediaType.SelectedValue, txtListPrice.Text))
            {
                lblUpdateCatalogSuccess.Text = "The order was successfully placed!";
                grdCatalog.DataBind();
            }
            else
            {
                lblDisplayCatalog.Text = "The order was not placed";

                lblDisplayCatalog.Text = errorMessage;



            }

        }
        catch (Exception ex) //added 11/27/2019
        {
            lblDisplayCatalog.Text = ex.Message;
        }
    }
}