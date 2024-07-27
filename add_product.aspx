<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="add_product.aspx.cs" Inherits="add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            color: #990000;
        }
        .style7
        {
            color: #990000;
            height: 37px;
        }
        .style8
        {
            height: 37px;
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
            height: 40px;
        }
        .style14
        {
            height: 40px;
        }
        .style15
        {
            color: #990000;
            height: 38px;
        }
        .style16
        {
            height: 38px;
        }
        .style17
        {
            color: #990000;
            height: 35px;
        }
        .style18
        {
            height: 35px;
        }
        .style19
        {
            color: #990000;
            height: 39px;
        }
        .style20
        {
            height: 39px;
        }
        .style21
        {
            color: #990000;
            height: 41px;
        }
        .style22
        {
            height: 41px;
        }
        .style23
        {
            color: #990000;
            font-weight: bold;
        }
        .style24
        {
            color: #990000;
            height: 30px;
        }
        .style25
        {
            height: 30px;
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;&nbsp; Supplier ID:</td>
                <td class="style25">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style23" 
                        DataSourceID="SqlDataSource2" DataTextField="supplier_id" DataValueField="supplier_id" 
                        Height="34px" Width="350px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Jewellery_Automation_SystemConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [supplier_id] FROM [purchase]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;&nbsp; Category:</td>
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
                <td class="style11">
                    &nbsp;&nbsp; Item Name:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="351px" 
                CssClass="style23"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;&nbsp; Weight:</td>
                <td class="style14">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="351px" 
                CssClass="style23"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;&nbsp; Purity:</td>
                <td class="style16">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style23" 
                        Height="34px" Width="350px">
                        <asp:ListItem>16 Caret</asp:ListItem>
                        <asp:ListItem>18 Caret</asp:ListItem>
                        <asp:ListItem>20 Caret</asp:ListItem>
                        <asp:ListItem>22 Caret</asp:ListItem>
                        <asp:ListItem>24 Caret</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;&nbsp; Quantity:</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="351px" 
                CssClass="style23"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style17">
&nbsp;&nbsp; Price:</td>
                <td class="style18">
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="351px" 
                CssClass="style23" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style17">
&nbsp;&nbsp; Amount:</td>
                <td class="style18">
                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="351px" 
                CssClass="style23" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15">
&nbsp;&nbsp; Remark:</td>
                <td class="style16">
                    <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="351px" 
                CssClass="style23" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15">
&nbsp;&nbsp; Enter Pic 1:</td>
                <td class="style16">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="33px" Width="359px" />
                </td>
            </tr>
            <tr>
                <td class="style19">
&nbsp;&nbsp; Enter Pic 2:</td>
                <td class="style20">
                    <asp:FileUpload ID="FileUpload2" runat="server" Height="33px" Width="359px" />
                </td>
            </tr>
            <tr>
                <td class="style21">
&nbsp;&nbsp; Enter Pic 3:</td>
                <td class="style22">
                    <asp:FileUpload ID="FileUpload3" runat="server" Height="33px" Width="359px" />
                </td>
            </tr>
            <tr>
                <td class="style15">
&nbsp;&nbsp; Enter Pic 4:</td>
                <td class="style16">
                    <asp:FileUpload ID="FileUpload4" runat="server" Height="33px" Width="359px" />
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="text-align: left">
                    <br class="style6" /><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:Button ID="Button14" runat="server" Height="40px" onclick="Button14_Click" 
                        style="color: #990000; font-weight: 700; font-size: large; background-color: #FFCC99" 
                        Text="Add Product" Width="260px" />
                    <span class="style6">
                    <br /></span>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>

