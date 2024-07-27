using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home_customer.aspx");
    }
        protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add_Customer.aspx");
    }
    protected void Button2_Click2(object sender, EventArgs e)
    {
        Response.Redirect("add_category.aspx");
    }
    protected void Button3_Click2(object sender, EventArgs e)
    {
        Response.Redirect("view_category.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("supplier_search.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add_Customer.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("All_Customer.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("add_product.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_product.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sell.aspx");
    }
    protected void Button12_Click1(object sender, EventArgs e)
    {
        Response.Redirect("View.aspx");
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("Stock.aspx");
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        Response.Redirect("Request.aspx");
    }
}
