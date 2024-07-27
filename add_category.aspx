<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            text-align: center;
            font-size: large;
        }
        .style7
        {
            text-align: center;
        }
        .style8
        {
            width: 389px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <cener>
    <table class="style1" style="margin-left: 3px; width: 80%; margin-right: 0px;">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700; font-size: large; color: #990000" class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Enter Category:&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style8">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" 
                    style="background-color: #FF9966; margin-left: 0px;" Width="344px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                <br />
                <asp:Button ID="Button14" runat="server" Height="33px" onclick="Button14_Click" 
                    style="color: #990000; font-weight: 700; font-size: large; background-color: #FFCC99" 
                    Text="Add Category" Width="159px" />
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
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    </cener>
</asp:Content>

