using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButton3.Visible = false;
        RadioButton4.Visible = false;
        TextBox1.Visible = false;
    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            RadioButton3.Visible = true;
            RadioButton4.Visible = true;
            if (RadioButton3.Checked)
            {
                TextBox1.Visible = false;
                string s = "select * from purchase";
                DataSet ds = new DataSet();
                ds = dc.kal(s);
                GridView1.Visible = true;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                TextBox1.Visible = true;
                string s = "select * from purchase where dop='"+ TextBox1.Text +"'";
                DataSet ds = new DataSet();
                ds = dc.kal(s);
                GridView1.Visible = true;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
           
        }
        else
        {
            RadioButton3.Visible = true;
            RadioButton4.Visible = true;
            if (RadioButton3.Checked)
            {
                TextBox1.Visible = false;
                string s = "select * from sell";
                DataSet ds = new DataSet();
                ds = dc.kal(s);
                GridView1.Visible = true;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                TextBox1.Visible = true;
                string s = "select * from sell where dop='" + TextBox1.Text + "'";
                DataSet ds = new DataSet();
                ds = dc.kal(s);
                GridView1.Visible = true;
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}