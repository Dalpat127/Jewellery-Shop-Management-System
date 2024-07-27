<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="View_product.aspx.cs" Inherits="View_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            color: #990000;
        }
        .style23
        {
            color: #990000;
            font-weight: bold;
        }
        .style13
        {
            color: #990000;
            height: 40px;
        }
        .style14
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <table class="style1" 
        
        
        
            style="height: 230px;  width: 86%; font-weight: 700; font-size: large; color: #660066; margin-left: 143px;">
            <tr class="style6">
                <td>
                    &nbsp;</td>
                <td style="text-align: right">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </td>
            </tr>
            <tr>
                <td class="style13">
&nbsp;&nbsp;&nbsp;&nbsp; Select Category:</td>
                <td class="style14">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style23" 
                        DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname" 
                        Height="34px" Width="350px">
                    </asp:DropDownList>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Jewellery_Automation_SystemConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [cname] FROM [category]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="text-align: left">
                    <br class="style6" /><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:Button ID="Button15" runat="server" Height="32px" 
                        style="color: #990000; font-weight: 700; font-size: large; background-color: #FFCC99" 
                        Text="Search" Width="233px" onclick="Button15_Click" />
                    <span class="style6">
                    <br />
                    <br />
                    </span>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" style="color: #990000">
                    <Columns>
                     <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="Link" runat="server" OnCommand="abc" CommandName='<%#Eval("id") %>'><img src='<%#Eval("pic1")%>' width="50" height="50" style='border-radius:50%'/></asp:LinkButton>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Supplier ID">
                    <ItemTemplate>
                    <%#Eval("supplier_id") %>
                    </ItemTemplate>
                    </asp:TemplateField>
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
                     <asp:TemplateField HeaderText="Total Amount">
                    <ItemTemplate>
                    <%#Eval("amount")%>
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
                    <br />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>

