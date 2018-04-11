<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Controls_Header" %>

<style type="text/css">
    .HeaderStyle
    {
        width: 80px;
        padding-right: 7px;
    }
    .LogoStyle
    {
        width: 50px;
        padding-right: 7px;
    }
    .Red
    {
        color: Red;
        font-weight: bold;
    }
    .auto-style2 {
        height: 28px;
        width: 520px;
    }
    .auto-style3 {
        width: 45%;
    }
</style>
<table cellpadding="0" cellspacing="1" class="auto-style3">
    <tr>
     <td align="left" class="auto-style2">
            <asp:TextBox ID="txtSearch" runat="server" Width="300px" 
            Height="21px"></asp:TextBox>
            </td>
         <td><asp:Button ID="btnSearch" runat="server" Text="Search"
             OnClick="btnSearch_Click" BorderColor="#0033CC" 
             BorderStyle="Ridge" Font-Bold="True" ForeColor="Black"
             Height="27px" />

        </td>
      
    </tr>
</table>
