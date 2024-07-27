<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="supplier.aspx.cs" Inherits="supplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            color: #990000;
        }
        .style7
        {
            color: #990000;
            height: 39px;
        }
        .style8
        {
            height: 39px;
        }
        .style9
        {
            color: #990000;
            height: 40px;
        }
        .style10
        {
            height: 40px;
        }
        .style11
        {
            color: #990000;
            height: 36px;
        }
        .style12
        {
            height: 36px;
        }
        .style13
        {
            color: #990000;
            height: 37px;
        }
        .style14
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <table class="style1" 
        
        
        
            style="height: 230px;  width: 86%; font-weight: 700; font-size: large; color: #660066; margin-left: 143px;">
            <tr class="style6">
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td style="text-align: right">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </td>
            </tr>
            <tr>
                <td class="style13">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Name:</td>
                <td class="style14">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="348px" 
                CssClass="style6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Surname:</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="348px" 
                CssClass="style6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style11">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="351px" 
                CssClass="style6" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact No.</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="351px" 
                CssClass="style6" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Address:</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="351px" 
                TextMode="MultiLine" CssClass="style6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="text-align: left">
                    <br class="style6" /><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:Button ID="Button14" runat="server" Height="34px" onclick="Button14_Click" 
                        style="font-weight: 700; font-size: large; color: #990000; background-color: #FFCC99" 
                        Text="Add Supplier" Width="191px" />
                    <span class="style6">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></span>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>

