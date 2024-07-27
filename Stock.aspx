<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Stock.aspx.cs" Inherits="Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            text-align: center;
            height: 39px;
        }
    .style7
    {
        color: #990000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style7" 
                style="font-weight: 700; font-size: large; text-align: right">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Enter Item Name:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                <br />
                <asp:Button ID="Button14" runat="server" Height="29px" 
                    
                    style="font-weight: 700; font-size: large; color: #990000; background-color: #FFFF99;" 
                    Text="Search" Width="154px" onclick="Button14_Click" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
            <center>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    Width="369px">
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
                </center>
            </td>
        </tr>
    </table>
</asp:Content>

