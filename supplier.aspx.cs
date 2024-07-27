using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class supplier : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime currentdate = DateTime.Now;
        DateTime currentime = DateTime.Now;
        Label1.Text = currentime.ToShortTimeString();
        Label2.Text = currentdate.ToShortDateString();
        string s = "select * from supplier order by id desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label3.Text = "1";
        }
        else
            Label3.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
        {
            string s = "insert into supplier values(" + Label3.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Label2.Text + "','" + Label1.Text + "')";
            dc.dal(s);
            Response.Write("<script>alert('Supplier Added Successfully....')</script>");
            Label3.Text = (Convert.ToInt32(Label3.Text) + 1).ToString();
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
        }
        else
            Response.Write("<script>alert('Fill Up All Details....')</script>");

    }
}