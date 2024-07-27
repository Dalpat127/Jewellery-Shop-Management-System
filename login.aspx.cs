using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            string s = "select * from register where uname='"+ TextBox1.Text+"' and password='" + TextBox2.Text + "' and status='Accept'";
            DataSet ds = new DataSet();
            ds = dc.kal(s);
            if (TextBox1.Text == "dalpat124" && TextBox2.Text == "14789")
            {
                Response.Redirect("home_customer.aspx");
            }
            else if(ds.Tables[0].Rows.Count!=0)
            {
               
                Response.Redirect("customer/home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong User name and Password....')</script>");
                Response.Write("<script>alert('Try Again....')</script>");
                TextBox1.Text = TextBox2.Text = "";
            }
        }
        else
            Response.Write("<script>alert('Fill Username and Password...')</script>");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}