<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="customer_Details" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label11" runat="server" Text="id" Visible="False"></asp:Label>
<asp:Label ID="Label12" runat="server"></asp:Label>
&nbsp;
<asp:Label ID="Label10" runat="server"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
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
        <table class="style1" style="font-weight: 700; width: 57%; font-size: large; background-color: #FFFFFF" align="center">
            <tr>
                <td class="style8">
                    <span class="style7">&nbsp;&nbsp;&nbsp; </span>
                    <asp:Label ID="Label13" runat="server" Text="pic1" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label14" runat="server" Text="pic2" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label15" runat="server" Text="pic3" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label16" runat="server" Text="pic4" Visible="False"></asp:Label>
                </td>
    <center>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
    </center>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Category:</td>
    <center>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Name:</td>
    <center>
                <td>
                    <asp:Label ID="Label2" runat="server" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Weight:</td>
    <center>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Purity:</td>
    <center>
                <td>
                    <asp:Label ID="Label4" runat="server" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Quantity:</td>
    <center>
                <td>
                    <asp:Label ID="Label5" runat="server" ForeColor="#990000"></asp:Label>
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Item Price:</td>
    <center>
                <td>
                    <asp:Label ID="Label6" runat="server" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                &nbsp;&nbsp; Total Amount:</td>
    <center>
                <td>
                    <asp:Label ID="Label7" runat="server" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;&nbsp; Purchase Date:</td>
    <center>
                <td>
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
                    <br />
                    <asp:Button ID="Button31" runat="server" Height="30px" 
                        
                        style="font-weight: 700; color: #990000; background-color: #CCFF66; font-size: medium;" Text="Back" 
                        Width="130px" onclick="Button31_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button32" runat="server" Height="30px" onclick="Button32_Click" 
                        style="color: #990000; font-weight: 700; font-size: medium; background-color: #00FF00" 
                        Text="Buy" Width="130px" />
                    <br />
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
    <br />
</asp:Content>

