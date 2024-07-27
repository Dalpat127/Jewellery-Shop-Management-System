using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class customer_my_purchase : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select * from online_buy where uname='" + Session["uid"].ToString()+"'";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            GridView2.Visible = false;
        }
        else
        {
            GridView2.Visible = true;
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
    }
    public void abb(object sender, CommandEventArgs e)
    {
        string s = e.CommandName.ToString();
        Response.Redirect("buy.aspx?siid=" +s);
    }
}