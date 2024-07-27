using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class customer_Details : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select * from cart where id=" + Request.QueryString["ssid"];
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        if (ds.Tables[0].Rows.Count == 0)
            Response.Write("<script>alert('No Cart Found....')</script>");
        else
        {
            Label17.Text = ds.Tables[0].Rows[0][0].ToString();
            Label1.Text = ds.Tables[0].Rows[0][2].ToString();
            Label2.Text = ds.Tables[0].Rows[0][3].ToString();
            Label3.Text = ds.Tables[0].Rows[0][4].ToString();
            Label4.Text = ds.Tables[0].Rows[0][5].ToString();
            Label5.Text = ds.Tables[0].Rows[0][6].ToString();
            Label6.Text = ds.Tables[0].Rows[0][7].ToString();
            Label7.Text = ds.Tables[0].Rows[0][8].ToString();
            Label8.Text = ds.Tables[0].Rows[0][13].ToString();
            Label9.Text = ds.Tables[0].Rows[0][14].ToString();
        }
        DateTime currentdate = DateTime.Now;
        Label10.Text = currentdate.ToShortDateString();
        Label12.Text = currentdate.ToShortTimeString();
        string s2 = "select * from online_buy order by id desc";
        DataSet dds = new DataSet();
        dds = dc.kal(s2);
        if (dds.Tables[0].Rows.Count == 0)
        {
            Label11.Text = "1";

        }
        else
        {
            Label11.Text = (Convert.ToString(Convert.ToInt32(dds.Tables[0].Rows[0][0].ToString()) + 1));
        }
        
    }
    protected void Button31_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
    protected void Button32_Click(object sender, EventArgs e)
    {
        if (checklogin())
        {
            string s3 = "update stock set qty=qty-" + Label5.Text + " where item_name='"+Label2.Text+"'";
            dc.dal(s3);
            string s1="insert into online_buy values("+Label11.Text+",'"+ Session["uid"].ToString() +"','"+Label1.Text+"','"+Label2.Text+"','"+Label3.Text+"','"+Label4.Text+"',"+Label5.Text+","+Label6.Text+","+Label7.Text+",'"+Label13.Text+"','"+Label14.Text+"','"+Label15.Text+"','"+Label16.Text+"','"+Label10.Text+"','"+Label12.Text+"') ";
            dc.dal(s1);
            string s2 = "delete from cart where id=" + Request.QueryString["ssid"];
            dc.dal(s2);
            Label11.Text = (Convert.ToInt32(Label11.Text) + 1).ToString();
            Response.Write("<script>alert('Congratulation for buy a product....')</script>");
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
}