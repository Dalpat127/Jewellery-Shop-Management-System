<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="home_customer.aspx.cs" Inherits="home_customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="text-align: center">
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="394px"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style6">
            <br />
            <asp:Button ID="Button14" runat="server" Height="37px" onclick="Button14_Click" 
                style="color: #990000; font-weight: 700; background-color: #FFFF99" 
                Text="Search" Width="202px" />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style6">
        <center>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                Width="443px">
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
            <br />
            <br />
            <br />
            <br />
            <br />
            </center>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

