using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Sell : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime currentdate = DateTime.Now;
        DateTime currentime = DateTime.Now;
        Label1.Text = currentime.ToShortTimeString();
        Label2.Text = currentdate.ToShortDateString();
        string s = "select * from sell order by id desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label3.Text = "1";
        }
        else
            Label3.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        if (checkid())
        {
            if (TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
            {
                if (checkitem())
                {
                    if (checkqty())
                    {
                        string s1="update stock set qty=qty-"+TextBox4.Text+" where item_name='"+TextBox2.Text+"'";
                        dc.dal(s1);
                        string s = "insert into sell values(" + Label3.Text + "," + DropDownList3.Text + ",'" + DropDownList1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList2.Text + "'," + TextBox4.Text + "," + TextBox5.Text + "," + TextBox6.Text + ",'" + TextBox7.Text + "','" + Label2.Text + "','" + Label1.Text + "')";
                        dc.dal(s);
                        Response.Write("<script>alert('sell Successfully....')</script>");
                        Label3.Text = (Convert.ToInt32(Label3.Text) + 1).ToString();
                        TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('Item Quantity Not Found....')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Item Not Found....')</script>");
                }
            }
            else
                Response.Write("<script>alert('Fill Up All Details....')</script>");
        }
        else
            Response.Write("<script>alert('Customer Not Found....')</script>");

    }
    public bool checkid()
    {
        string s = "select * from customer where id=" +DropDownList3.Text + "";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;
    }
    public bool checkitem()
    {
        string s = "select * from stock where item_name='" + TextBox2.Text + "'";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;
    }
    public bool checkqty()
    {
        string s = "select * from stock where item_name='" + TextBox2.Text + "'";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
            return false;
        else
            return true;
    }
}