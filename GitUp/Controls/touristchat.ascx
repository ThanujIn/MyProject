<%@ Control Language="C#" AutoEventWireup="true" CodeFile="touristchat.ascx.cs" Inherits="Controls_touristchat" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 23px;
    }
</style>

<asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" rowspan="3">
                    <asp:Image ID="Image1" runat="server" Height="78px" Width="108px"  ImageUrl='<%# "ImageHandler.ashx?TouristId="+ Eval("TouristId") %>' />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Chat"  CommandArgument='<%#Bind("TouristId") %>' OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

