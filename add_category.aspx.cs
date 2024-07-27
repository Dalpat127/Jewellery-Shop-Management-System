using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class add_category : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select * from category order by id desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label1.Text = "1";
        }
        else
            Label1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            string s = "insert into category values(" + Label1.Text + ",'" + TextBox1.Text + "')";
            dc.dal(s);
            Response.Write("<script>alert('Category Added.....')</script>");
            TextBox1.Text = "";
        }
        else
            Response.Write("<script>alert('Enter Category.....')</script>");
    }
}