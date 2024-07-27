<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer.master" AutoEventWireup="true" CodeFile="details_product.aspx.cs" Inherits="customer_details_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            color: #990000;
        }
    .style8
    {
        text-align: left;
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label14" runat="server" CssClass="style7"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label15" runat="server" CssClass="style7"></asp:Label>
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        style="color: #990000; margin-left: 174px" Width="629px" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
        <table class="style1" style="font-weight: 700; width: 57%; font-size: large; background-color: #FFFFFF" align="center">
            <tr>
                <td class="style8">
                    <span class="style7">&nbsp;&nbsp;&nbsp; </span><asp:Label ID="Label11" 
                        runat="server" Text="id" 
                        Visible="False" CssClass="style7"></asp:Label>
                </td>
    <center>
                <td>
                    &nbsp;</td>
            </tr>
    </center>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Category:</td>
    <center>
                <td>
                    <asp:Label ID="Label2" runat="server" CssClass="style7"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Name:</td>
    <center>
                <td>
                    <asp:Label ID="Label3" runat="server" CssClass="style7"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Weight:</td>
    <center>
                <td>
                    <asp:Label ID="Label4" runat="server" CssClass="style7"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Purity:</td>
    <center>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="purity" DataValueField="purity" 
                        Height="26px" style="color: #990000">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Jewellery_Automation_SystemConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [purity] FROM [purchase]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Quantity:</td>
    <center>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="1" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                        style="font-weight: 700; color: #990000; background-color: #CCFF66" Text="OK" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Price:</td>
    <center>
                <td>
                    <asp:Label ID="Label7" runat="server" CssClass="style7"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Total Amount:</td>
    <center>
                <td>
                    <asp:Label ID="Label9" runat="server" CssClass="style7">Click ok</asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Remark: 
                </td>
    <center>
                <td>
                    <asp:Label ID="Label10" runat="server" CssClass="style7"></asp:Label>
                &nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label17" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label18" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label19" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;&nbsp; &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10" colspan="2">
                    <br />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        style="font-weight: 700; font-size: medium; color: #990000; background-color: #FFFF99" 
                        Text="Add To Cart" Height="30px" Width="129px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button31" runat="server" Height="30px" onclick="Button31_Click" 
                        style="font-weight: 700; font-size: medium; color: #990000; background-color: #33CC33" 
                        Text="Buy" Width="130px" />
                    <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="Label16" runat="server" Text="id cart" Visible="False"></asp:Label>
&nbsp;<br />
                </td>
            </tr>
        </table>
    </center>
    </center>
    </center>
    </center>
    </center>
    </center>
    </center>
    </center>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Jewellery_Automation_SystemConnectionString %>" 
        
        SelectCommand="SELECT [pic1], [pic2], [pic3], [pic4] FROM [purchase] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="sid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

