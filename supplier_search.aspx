<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="supplier_search.aspx.cs" Inherits="supplier_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            color: #990000;
        }
        .style7
        {
            color: #990000;
            height: 40px;
        }
        .style8
        {
            height: 40px;
        }
        .style9
        {
            color: #990000;
            height: 45px;
        }
        .style10
        {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table class="style1" 
        
        
        
            style="height: 230px;  width: 86%; font-weight: 700; font-size: large; color: #660066; margin-left: 143px;">
    <tr>
        <td class="style7">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search:</td>
        <td class="style8">
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="abc" Text="By ID" 
                CssClass="style6" />
            <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="abc" 
                Text="By Name" />
            </span>
        </td>
    </tr>
    <tr>
        <td class="style9">
            </td>
        <td class="style10">
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="329px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            <br />
            <asp:Button ID="Button15" runat="server" Height="33px" onclick="Button15_Click" 
                style="font-weight: 700; font-size: large; color: #990000; background-color: #FFCC99" 
                Text="Search" Width="263px" />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td  colspan="2" style="text-align: left">
            <asp:GridView ID="GridView1" runat="server" style="color: #990000" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <br class="style6" />
            <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            </span>
        </td>
    </tr>
</table>
</center>
    <p>
    </p>
</asp:Content>

