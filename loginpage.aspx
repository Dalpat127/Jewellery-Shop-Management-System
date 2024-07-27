<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="loginpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
     body
        {
            background-image:url('img/j.jpg');
            background-repeat:no-repeat;
            background-size:cover;
            padding-top:140px;
            height: 306px;
        }
        .style1
        {
            width: 61%;
            height: 200px;
        }
        table
        {
            background-color:#FFCC99;
        }
        .style3
        {
            font-size: xx-large;
            font-weight: bold;
            text-align: center;
            height: 58px;
        }
        .style7
        {
            color: #990000;
        }
        .style8
        {
            font-size: large;
            font-weight: bold;
            color: #990000;
        }
        .style6
        {
            background-color: #FFCC99;
        }
        .style2
        {
            font-size: large;
            font-weight: bold;
        }
        .style4
        {
            font-size: large;
            font-weight: bold;
            height: 24px;
            text-align: center;
        }
        .style5
        {
            font-weight: bold;
            color: #990000;
            background-color: #FFCC99;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    <center>
        <table class="style1">
            <tr>
                <td class="style3" colspan="2">
                    <br />
                    <span class="style7">Login Page</span></td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;&nbsp;
                    Enter Username:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="389px" 
                        CssClass="style6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;&nbsp;
                    Enter&nbsp; Password:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="389px" 
                        CssClass="style6" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" style="color: #FF3300" 
                        NavigateUrl="~/forgatepassword.aspx">Forgate password? </asp:HyperLink>
                </td>
            </tr>
    </center>
            <tr>
                <td class="style4" colspan="2">
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="style5" Height="30px" 
                        Text="Login" Width="130px" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="style5" Height="30px" 
                        Text="Sign-In" Width="130px" onclick="Button2_Click" />
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
