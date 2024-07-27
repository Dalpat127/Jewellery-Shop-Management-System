using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View_product : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void abc(object sender, CommandEventArgs e)
    {
        string s = e.CommandName;
        Response.Redirect("detail_product.aspx?sid=" + e.CommandName);
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        string s = "select * from purchase where item_category='" + DropDownList1.Text+"'";
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
}