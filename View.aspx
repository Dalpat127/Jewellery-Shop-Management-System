<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            color: #990000;
            height: 40px;
        text-align: right;
    }
        .style8
        {
            height: 40px;
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
        
        
        
            style="height: 230px;  width: 86%; font-weight: 700; font-size: large; color: #660066; margin-left: 143px;">
            <tr>
                <td class="style7">
                    &nbsp;&nbsp; View:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style8">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="abc" Text="Purchase" 
                CssClass="style6" />
                    <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="abc" 
                Text="Sell" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:RadioButton ID="RadioButton3" runat="server" CssClass="style6" 
                        GroupName="aaa" Text="All" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton4" runat="server" CssClass="style6" 
                        GroupName="aaa" Text="Date" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="27px" 
                        Width="206px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
            &nbsp;</td>
                <td>
                    <br />
                    <asp:Button ID="Button16" runat="server" Height="35px" onclick="Button16_Click" 
                        style="color: #990000; font-weight: 700; font-size: large; background-color: #FFCC99" 
                        Text="View" Width="193px" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="text-align: left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" style="color: #990000" Visible="False">
                    <Columns>
                     <asp:TemplateField HeaderText="Item Name">
                    <ItemTemplate>
                    <%#Eval("item_name") %>
                    </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText=" Item Weight">
                    <ItemTemplate>
                    <%#Eval("weight") %>
                    </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Item Purity">
                    <ItemTemplate>
                    <%#Eval("purity") %>
                    </ItemTemplate>
                    </asp:TemplateField> 
                    <asp:TemplateField HeaderText="Item Quantity">
                    <ItemTemplate>
                    <%#Eval("qty") %>
                    </ItemTemplate>
                    </asp:TemplateField> 
                    <asp:TemplateField HeaderText="Item Price">
                    <ItemTemplate>
                    <%#Eval("price") %>
                    </ItemTemplate>
                    </asp:TemplateField> 
                     <asp:TemplateField HeaderText="Total Amount">
                    <ItemTemplate>
                    <%#Eval("amount") %>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Remark">
                    <ItemTemplate>
                    <%#Eval("remark") %>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                    <%#Eval("dop") %>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time">
                    <ItemTemplate>
                    <%#Eval("pot") %>
                    </ItemTemplate>
                    </asp:TemplateField> 
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
                    <br class="style6" /><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br /></span>
                </td>
            </tr>
        </table>
    </center>
    <p>
    </p>
</asp:Content>

