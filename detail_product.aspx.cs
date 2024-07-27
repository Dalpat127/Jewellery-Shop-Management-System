using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class detail_product : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s="select * from purchase where id="+Request.QueryString["sid"];
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        Label11.Text = ds.Tables[0].Rows[0][0].ToString();
        Label1.Text = ds.Tables[0].Rows[0][1].ToString();
        Label2.Text = ds.Tables[0].Rows[0][2].ToString();
        Label3.Text = ds.Tables[0].Rows[0][3].ToString();
        Label4.Text = ds.Tables[0].Rows[0][4].ToString();
        Label5.Text = ds.Tables[0].Rows[0][5].ToString();
        Label6.Text = ds.Tables[0].Rows[0][6].ToString();
        Label7.Text = ds.Tables[0].Rows[0][7].ToString();
        Label9.Text = ds.Tables[0].Rows[0][8].ToString();
        Label10.Text = ds.Tables[0].Rows[0][9].ToString();
    }
   
}