<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 410px;
        }
        .style24
        {
            text-align: right;
            width: 59%;
        }
        .style3
        {
            text-align: right;
            width: 49%;
        }
        .style6
        {
            height: 70px;
        }
        .style14
        {
            color: #660066;
            font-size: x-large;
        }
        .style25
        {
            height: 23px;
            font-weight: bold;
            }
        .style12
        {
            color: #660066;
            font-weight: bold;
            text-align: left;
            margin-left: 51px;
            margin-right: 46px;
            margin-bottom: 8px;
        }
        .style11
        {
            color: #660066;
        }
        .style21
        {
            width: 49%;
        }
        .style22
        {
            height: 25px;
            font-weight: bold;
            width: 49%;
            margin-left: 120px;
        }
        .style26
        {
            height: 23px;
            font-weight: bold;
            text-align: center;
        }
        .style27
        {
            height: 38px;
            font-weight: bold;
        }
        .style28
        {
            width: 49%;
            height: 38px;
        }
        .style29
        {
            height: 25px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    
        <table class="style1">
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" style="color: #660033"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="2" style="text-align: center">
                <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/img/j3.jpg" 
                    Width="156px" />
                <br />
                <span class="style14"><strong>Registeration Form</strong></span></td>
        </tr>
        <tr>
            <td class="style25">
                <span class="style12">&nbsp;Name:</span><b><br class="style11" />
                </b>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style12" Height="29px" 
                    Width="416px"></asp:TextBox>
            </td>
            <td class="style21">
                <span class="style12">&nbsp;Surname:</span><b><br class="style11" />
                </b>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style12" Height="29px" 
                    Width="416px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style27">
                <span class="style12">User Name:</span><b><br class="style11" />
                </b>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style12" Height="29px" 
                    Width="416px"></asp:TextBox>
            </td>
            <td class="style28">
                <span class="style12">Password:</span><b><br class="style11" />
                </b>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style12" Height="29px" 
                    Width="416px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style29">
                <span class="style12">Email:</span><b><br class="style11" />
                </b>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style12" Height="29px" 
                    TextMode="Email" Width="416px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style22">
                <span class="style12">Mobile Number:</span><b><br class="style11" />
                </b>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="style12" Height="29px" 
                    TextMode="Number" Width="416px" MaxLength="10"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td class="style26" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" Height="35px" onclick="Button1_Click" 
                    style="color: #990000; font-weight: 700; font-size: large; background-color: #FFCC66" 
                    Text="Register" Width="184px" />
                <br />
            </td>
            </tr>
        </table>
    
    </div>
    
    </div>
    </form>
</body>
</html>
