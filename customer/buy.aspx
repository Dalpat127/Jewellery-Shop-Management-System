<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer.master" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="customer_buy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .style8
    {
        text-align: left;
    }
    

        .style7
        {
            color: #990000;
        }
    .style9
    {
        text-align: left;
        color: #990000;
    }
        .style10
        {
            text-align: center;
            color: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataSourceID="SqlDataSource1" Width="528px">
        <Columns>
            <asp:ImageField DataImageUrlField="pic1" HeaderText="Picture 1">
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="pic2" HeaderText="Picture 2">
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="pic3" HeaderText="Picture 3">
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="pic4" HeaderText="Picture 4">
            </asp:ImageField>
        </Columns>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Jewellery_Automation_SystemConnectionString %>" 
        SelectCommand="SELECT [pic1], [pic2], [pic3], [pic4] FROM [online_buy] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="siid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
<table class="style1" style="font-weight: 700; width: 57%; font-size: large; background-color: #FFFFFF" align="center">
    <tr>
        <td class="style8">
            <span class="style7">&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;
        </td>
                <td>
                    &nbsp;</td>
    </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Category:</td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="#990000"></asp:Label>
                </td>
    </tr>
    <tr>
        <td class="style9">
                &nbsp;&nbsp; Item Name:</td>
                <td>
                    <asp:Label ID="Label2" runat="server" ForeColor="#990000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style9">
                &nbsp;&nbsp; Item Weight:</td>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="#990000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style9">
                &nbsp;&nbsp; Item Purity:</td>
                <td>
                    <asp:Label ID="Label4" runat="server" ForeColor="#990000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style9">
                &nbsp;&nbsp; Item Quantity:</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" ForeColor="#990000"></asp:Label>
                    &nbsp;&nbsp;
                </td>
    </tr>
    <tr>
        <td class="style9">
                &nbsp;&nbsp; Item Price:</td>
                <td>
                    <asp:Label ID="Label6" runat="server" ForeColor="#990000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style9">
                &nbsp;&nbsp; Total Amount:</td>
                <td>
                    <asp:Label ID="Label7" runat="server" ForeColor="#990000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style9">
                    &nbsp;&nbsp; Purchase Date:</td>
                <td>
                    &nbsp;
                    <asp:Label ID="Label8" runat="server" ForeColor="#990000"></asp:Label>
&nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
                    &nbsp;&nbsp; &nbsp;Purchase Time:</td>
        <td>
            <asp:Label ID="Label9" runat="server" ForeColor="#990000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style10" colspan="2">
                    <asp:Button ID="Button32" runat="server" Height="30px" onclick="Button32_Click" 
                        style="font-weight: 700; font-size: medium; color: #990000; background-color: #CCFF66" 
                        Text="Back" Width="130px" />
        </td>
    </tr>
</table>
</center>
</asp:Content>

