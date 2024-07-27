<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgate.aspx.cs" Inherits="forgate" %>

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
                    &nbsp;&nbsp; Enter New Password :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="389px" 
                        CssClass="style6" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
   
            <tr>
                <td class="style8">
                    Re Enter Password:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="389px" 
                        CssClass="style6" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                        ErrorMessage="*Not Matched" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style4" colspan="2">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" 
                        Height="39px" 
                        style="font-weight: 700; color: #990000; background-color: #FF9966" 
                        Text="Update" Width="191px" onclick="Button1_Click" />
&nbsp; &nbsp;
                    <br />
                    <br />
                </td>
            </tr>
        </table>
     </center>
    </div>
    </form>
</body>
</html>
