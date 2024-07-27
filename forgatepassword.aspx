<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgatepassword.aspx.cs" Inherits="forgatepassword" %>

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
            color: #990000;
        }
        .style8
        {
            font-size: large;
            font-weight: bold;
            color: #990000;
            text-align: right;
        }
        .style6
        {
            background-color: #FFCC99;
        }
        .style4
        {
            font-size: large;
            font-weight: bold;
            height: 24px;
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <center>
        <table class="style1">
            <tr>
                <td class="style3" colspan="2">
                    Forgate Password</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Email :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="389px" 
                        CssClass="style6" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
    </center>
            <tr>
                <td class="style4" colspan="2">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" 
                        Height="33px" onclick="Button2_Click" 
                        style="font-weight: 700; font-size: large; color: #990000; background-color: #FF9966" 
                        Text="Back" Width="174px" />
&nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
                        style="color: #990000; font-weight: 700; font-size: large; background-color: #FF9966" 
                        Text="Next" Width="174px" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
