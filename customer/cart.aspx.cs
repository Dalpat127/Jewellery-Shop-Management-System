﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class customer_cart : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select * from cart";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            GridView1.Visible = false;
        }
        else
        {
            GridView1.Visible = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

    }
    public void ab(object sender, CommandEventArgs e)
    {
        string s = e.CommandName;
        Response.Redirect("Details.aspx?ssid=" + e.CommandName);
    }
}