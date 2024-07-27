using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class customer_details_product : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select * from purchase where id=" + Request.QueryString["sid"];
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
            Response.Write("<script>alert('No Cart Found....')</script>");
        else
        {
          

            Label2.Text = ds.Tables[0].Rows[0][2].ToString();
            Label3.Text = ds.Tables[0].Rows[0][3].ToString();
            Label4.Text = ds.Tables[0].Rows[0][4].ToString();
            Label5.Text = ds.Tables[0].Rows[0][10].ToString();
            Label17.Text = ds.Tables[0].Rows[0][11].ToString();
            Label18.Text = ds.Tables[0].Rows[0][12].ToString();
            Label19.Text = ds.Tables[0].Rows[0][13].ToString();

            //Label5.Text = ds.Tables[0].Rows[0][5].ToString();
            //Label6.Text = ds.Tables[0].Rows[0][6].ToString();
            Label7.Text = ds.Tables[0].Rows[0][7].ToString();
            //Label9.Text = ds.Tables[0].Rows[0][8].ToString();
            Label10.Text = ds.Tables[0].Rows[0][9].ToString();

            //string s1 = "select * from register";
            //DataSet dss = new DataSet();
            //dss = dc.kal(s1);
            //Label12.Text = dss.Tables[0].Rows[0][3].ToString();
            //Label13.Text = dss.Tables[0].Rows[0][4].ToString();
        }
        DateTime currentdate = DateTime.Now;
        Label14.Text = currentdate.ToShortDateString();
        Label15.Text = currentdate.ToShortTimeString();
        string s2 = "select * from cart order by id desc";
        DataSet dds = new DataSet();
        dds = dc.kal(s2);
        if (dds.Tables[0].Rows.Count == 0)
        {
            Label16.Text = "1";
          
        }
        else
        {
            Label16.Text =Convert.ToString(Convert.ToInt32(dds.Tables[0].Rows[0][0].ToString()) + 1);
        }
        string s3 = "select * from online_buy order by id desc";
        DataSet ddss = new DataSet();
        ddss = dc.kal(s3);
        if (ddss.Tables[0].Rows.Count == 0)
        {
            Label11.Text = "1";

        }
        else
        {
            Label11.Text = Convert.ToString(Convert.ToInt32(ddss.Tables[0].Rows[0][0].ToString()) + 1);
        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
       
            if (checklogin())
            {
                if (TextBox1.Text != "")
                {
                    
                    string s1 = "insert into cart values(" + Label16.Text + ",'" + Session["uid"].ToString() + "','" + Label2.Text + "','" + Label3.Text + "','" + Label4.Text + "','" + DropDownList1.Text + "'," + TextBox1.Text + "," + Label7.Text + "," + Label9.Text + ",'" + Label5.Text + "','" + Label17.Text + "','" + Label18.Text + "','" + Label19.Text + "','" + Label15.Text + "','" + Label14.Text + "')";
                    dc.dal(s1);
                    Label16.Text = (Convert.ToInt32(Label16.Text) + 1).ToString();
                    Response.Write("<script>alert('Successfully Add to Cart....')</script>");
                    TextBox1.Text = "";
                }
                else
                    Response.Write("<script>alert('Enter Quantity....')</script>");

            }
            else
                Response.Redirect("~/loginpage.aspx");
       
    }
    public bool checklogin()
    {
        string s = "select * from register where uname='" + Session["uid"] + "' and password='" + Session["upass"] +"'";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int a, b, c;
        a = Convert.ToInt32(TextBox1.Text);
        b = Convert.ToInt32(Label7.Text);
        c = a * b;
        Label9.Text = c.ToString();
    }
    protected void Button31_Click(object sender, EventArgs e)
    {
        if (checklogin())
        {
            if (TextBox1.Text != "")
            {
                string s3 = "update stock set qty=qty-" + TextBox1.Text + " where item_name='"+Label3.Text+"'";
                dc.dal(s3);
                string s1 = "insert into online_buy values(" + Label16.Text + ",'" + Session["uid"].ToString() + "','" + Label2.Text + "','" + Label3.Text + "','" + Label4.Text + "','" + DropDownList1.Text + "'," + TextBox1.Text + "," + Label7.Text + "," + Label9.Text + ",'" + Label5.Text + "','" + Label17.Text + "','" + Label18.Text + "','" + Label19.Text + "','" + Label14.Text + "','" + Label15.Text + "')";
                dc.dal(s1);
                Label11.Text=(Convert.ToInt32(Label11.Text) + 1).ToString();
                Response.Write("<script>alert('Congratulation for buy a product....')</script>");
                TextBox1.Text = "";
            }
            else
                Response.Write("<script>alert('Enter Quantity....')</script>");

        }
        else
            Response.Redirect("~/loginpage.aspx");

    }
    
}