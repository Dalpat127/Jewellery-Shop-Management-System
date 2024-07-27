using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class register : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select * from register order by id desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label1.Text = "1";
        }
        else
            Label1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       if(TextBox1.Text!=""&&TextBox2.Text!=""&&TextBox3.Text!=""&&TextBox4.Text!=""&&TextBox5.Text!=""&&TextBox6.Text!="")
       {
        string s = "insert into register values(" + Label1.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','pending')";
        dc.dal(s);
        Response.Write("<script>alert('registration successfull....')</script>");
        TextBox6.Text = TextBox5.Text = TextBox4.Text = TextBox3.Text = TextBox2.Text = TextBox1.Text = "";
        Response.Redirect("login.aspx");
       }
       else
           Response.Write("<script>alert('Fill Up all Details....')</script>");
    }
}