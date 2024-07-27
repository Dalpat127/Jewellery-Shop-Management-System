using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class add_product : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime currentdate = DateTime.Now;
        DateTime currentime = DateTime.Now;
        Label1.Text = currentime.ToShortTimeString();
        Label2.Text = currentdate.ToShortDateString();
        string s = "select * from purchase order by id desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label3.Text = "1";
        }
        else
            Label3.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
       
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        if (checkid())
        {
            if (TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
            {
                FileUpload1.SaveAs(Server.MapPath("~/img/") + Path.GetFileName(FileUpload1.FileName));
                string link1 = "img/" + Path.GetFileName(FileUpload1.FileName);
                FileUpload2.SaveAs(Server.MapPath("~/img/") + Path.GetFileName(FileUpload2.FileName));
                string link2 = "img/" + Path.GetFileName(FileUpload2.FileName);
                FileUpload3.SaveAs(Server.MapPath("~/img/") + Path.GetFileName(FileUpload3.FileName));
                string link3 = "img/" + Path.GetFileName(FileUpload3.FileName);
                FileUpload4.SaveAs(Server.MapPath("~/img/") + Path.GetFileName(FileUpload4.FileName));
                string link4 = "img/" + Path.GetFileName(FileUpload4.FileName);
                string s = "insert into purchase values(" + Label3.Text + "," + DropDownList3.Text + ",'"+ DropDownList1.Text +"','" + TextBox2.Text + "','" + TextBox3.Text + "','"+ DropDownList2.Text +"'," + TextBox4.Text + "," + TextBox5.Text + ","+ TextBox6.Text +",'"+ TextBox7.Text +"','"+link1+"','"+link2+"','"+link3+"','"+ link4 +"','" + Label2.Text + "','" + Label1.Text + "')";
                dc.dal(s);
                if (checkitem())
                {
                    string s2 = "update stock set qty=qty + " + TextBox4.Text + " where item_name='"+ TextBox2.Text +"'";
                    dc.dal(s2);
                }
                else
                {
                    string s3 = "insert into stock values('" + TextBox2.Text + "'," + TextBox4.Text + ")";
                    dc.dal(s3);
                }
                Response.Write("<script>alert('Purchase Successfully....')</script>");
                Label3.Text = (Convert.ToInt32(Label3.Text) + 1).ToString();
                TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text =TextBox6.Text=TextBox7.Text ="";
            }
            else
                Response.Write("<script>alert('Fill Up All Details....')</script>");
        }
        else
            Response.Write("<script>alert('Supplier Not Found....')</script>");

    }
    public bool checkid()
    {
        string s = "select * from supplier where id="+ DropDownList3.Text +"";
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
}