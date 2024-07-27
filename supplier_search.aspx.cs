using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class supplier_search : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select * from supplier";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            if(RadioButton1.Checked)
            {
                string s = "select * from supplier where id="+ TextBox1.Text +"";
                DataSet ds=new DataSet();
                ds=dc.kal(s);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('Not Found Any Record...')</script>");
                    TextBox1.Text = "";
                    GridView1.Visible = false;
                }
                else
                {
                    GridView1.Visible = true;
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }

            }
            else
            {
                string s = "select * from supplier where name='"+ TextBox1.Text +"'";
                DataSet ds = new DataSet();
                ds = dc.kal(s);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('Not Found Any Record...')</script>");
                    TextBox1.Text = "";
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
        else
            Response.Write("<script>alert('Enter ID/Name For Search...')</script>");
    }
}