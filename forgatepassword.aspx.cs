using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class forgatepassword : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            string s = "select * from register where email='" + TextBox1.Text + "'";
            DataSet ds = new DataSet();
            ds = dc.kal(s);
            if (ds.Tables[0].Rows.Count != 0)
            {
                Response.Redirect("forgate.aspx");
            }
            else
            {
                Response.Write("<script>alert('Email ID Not Found....')</script>");
                Response.Write("<script>alert('Please Register Now....')</script>");
                
            }
        }
        else
            Response.Write("<script>alert('Enter Email ID....')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}