using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class customer_customer : System.Web.UI.MasterPage
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("view.aspx");
    }
    protected void Button30_Click(object sender, EventArgs e)
    {
        if (checklogin())
        {

            Response.Redirect("cart.aspx");
        }
        else
            Response.Redirect("~/loginpage.aspx");

    }
    public bool checklogin()
    {
        string s = "select * from register where uname='" + Session["uid"] + "' and password='" + Session["upass"] + "'";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;
    }
    protected void Button31_Click(object sender, EventArgs e)
    {
        if (checklogin())
        {

            Response.Redirect("my_purchase.aspx");
        }
        else
            Response.Redirect("~/loginpage.aspx");
    }
}
