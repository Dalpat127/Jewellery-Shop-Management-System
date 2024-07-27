using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class customer_buy : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select * from online_buy where id=" + Request.QueryString["siid"]+"";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
            Response.Write("<script>alert('No Buy Any Product....')</script>");
        else
        {
            Label1.Text = ds.Tables[0].Rows[0][2].ToString();
            Label2.Text = ds.Tables[0].Rows[0][3].ToString();
            Label3.Text = ds.Tables[0].Rows[0][4].ToString();
            Label4.Text = ds.Tables[0].Rows[0][5].ToString();
            Label5.Text = ds.Tables[0].Rows[0][6].ToString();
            Label6.Text = ds.Tables[0].Rows[0][7].ToString();
            Label7.Text = ds.Tables[0].Rows[0][8].ToString();
            Label8.Text = ds.Tables[0].Rows[0][13].ToString();
            Label9.Text = ds.Tables[0].Rows[0][14].ToString();
        }
    }
    protected void Button32_Click(object sender, EventArgs e)
    {
        Response.Redirect("my_purchase.aspx");
    }
}