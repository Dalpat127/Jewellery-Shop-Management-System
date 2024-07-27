<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" Width="690px" style="font-weight: 700">
    <Columns>
    <asp:TemplateField HeaderText='Name'>
    <ItemTemplate>
    <%#Eval("name") %>
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText='Surname'>
    <ItemTemplate>
    <%#Eval("surname") %>
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText='User Name'>
    <ItemTemplate>
    <%#Eval("uname") %>
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText='Email ID'>
    <ItemTemplate>
    <%#Eval("email") %>
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText='Mobile Number'>
    <ItemTemplate>
    <%#Eval("mobile_number") %>
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText='Status'>
    <ItemTemplate>
    <%#Eval("status") %>
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField>
    <ItemTemplate>
       <asp:LinkButton ID="link1" runat="server" Text="Accept" OnCommand="abc1" CommandName='<%#Eval("id") %>'></asp:LinkButton>
                                                                        &nbsp;&nbsp;&nbsp;
       <asp:LinkButton ID="link2" runat="server" Text="Reject" OnCommand="abc2" CommandName='<%#Eval("id") %>'></asp:LinkButton>
     </ItemTemplate>
    </asp:TemplateField>
    </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </center>
</asp:Content>

