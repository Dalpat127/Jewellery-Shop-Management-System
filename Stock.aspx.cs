using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Stock : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        string s = "select * from stock where item_name like'%" + TextBox1.Text + "%'";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}