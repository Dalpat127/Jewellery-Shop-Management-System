using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class forgate : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "update register set password='" + TextBox1.Text + "'";
        dc.dal(s);
        Response.Write("<script>alert('Update Successfull....')</script>");
        Response.Redirect("login.aspx");
    }
}