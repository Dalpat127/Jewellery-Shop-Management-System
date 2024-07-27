<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Add_Customer.aspx.cs" Inherits="Add_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        text-align: center;
    }
        .style6
        {
            color: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table class="style1" 
        
        
        
            
            style="height: 230px;  width: 86%; font-weight: 700; font-size: large; color: #660066; margin-left: 169px;">
    <tr class="style6">
        <td>
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td style="text-align: right">
            <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer Name:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="348px" 
                CssClass="style6"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender:</td>
        <td>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="abc" Text="Male" 
                CssClass="style6" />
            <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="abc" 
                Text="Female" />
            </span>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="351px" 
                CssClass="style6" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact No.</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="351px" 
                CssClass="style6" TextMode="Number"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WhatsApp No.</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="351px" 
                CssClass="style6" TextMode="Number"></asp:TextBox>
&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" CssClass="style6" />
            <asp:Button ID="Button14" runat="server" onclick="Button14_Click" 
                style="font-weight: 700; color: #990000" Text="Save As Contact No." />
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Address:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="351px" 
                TextMode="MultiLine" CssClass="style6"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td  colspan="2" style="text-align: left">
            <br class="style6" />
            <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button4" runat="server" Height="37px" 
                style="font-weight: 700; font-size: large; text-align: center; background-color: #FFCC99;" 
                Text="Register Customer" Width="187px" onclick="Button4_Click" 
                CssClass="style6" />
            <span class="style6">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </span>
        </td>
    </tr>
</table>
</center>
</asp:Content>

