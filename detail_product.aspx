<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="detail_product.aspx.cs" Inherits="detail_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 327px;
            color: #990000;
            text-align: left;
        }
        .style7
        {
            color: #990000;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        style="color: #990000; margin-left: 174px" Width="629px">
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
    </asp:GridView>
    <center>
   <table class="style1" style="font-weight: 700; width: 57%; font-size: large; background-color: #FFFFFF" align="center">
        <tr>
            <td class="style6">
                &nbsp;&nbsp;
                Supplier ID:<asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
  
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
   
        <tr>
            <td class="style6">
                &nbsp;&nbsp; Item Category:</td>
  
            <td>
                <asp:Label ID="Label2" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;&nbsp; Item Name:</td>
  
            <td>
                <asp:Label ID="Label3" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;&nbsp; Item Weight:</td>
   
            <td>
                <asp:Label ID="Label4" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;&nbsp; Item Purity:</td>
  
            <td>
                <asp:Label ID="Label5" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;&nbsp; Item Quantity:</td>
  
            <td>
                <asp:Label ID="Label6" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;&nbsp; Item Price:</td>
  
            <td>
                <asp:Label ID="Label7" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;&nbsp; Total Amount:</td>
  
            <td>
                <asp:Label ID="Label9" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;&nbsp; Remark: </td>
  
            <td>
                <asp:Label ID="Label10" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
    </table>
   
    </center>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Jewellery_Automation_SystemConnectionString %>" 
        
        SelectCommand="SELECT [pic1], [pic2], [pic3], [pic4] FROM [purchase] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label11" Name="id" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>

