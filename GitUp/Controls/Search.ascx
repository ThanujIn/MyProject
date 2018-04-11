<%@ Control Language="C#" AutoEventWireup="true" 
CodeFile="Search.ascx.cs" Inherits="Controls_Search" %>
<style type="text/css">
    .styleFriends
    {
        width: 100%;
    }
    .friendsTD
    {
        width: 30%;
        text-align: center;
    }

    .auto-style1 {
        height: 44px;
    }

</style>

<asp:DataList ID="SearchList" runat="server" Width="100%">
    <ItemTemplate>
        <table cellpadding="2" class="styleFriends" style="border: 1px ridge #CCCCCC">
            <tr>
                <td class="friendsTD" rowspan="2">
                    <asp:ImageButton ID="imgbtnPic" runat="server" Height="84px" Width="84px" 
                     ImageUrl='<%# "ImageHandler.ashx?TouristId="+ Eval("TouristId") %>' 
                     BorderColor="#CCCCCC" BorderStyle="Ridge" BorderWidth="1px" 
                     CommandArgument='<%#Bind("TouristId") %>' onclick="imgbtnPic_Click"/>
                </td>
                <td align="left"> 
                    <asp:Label ID="lblFriendName" runat="server" Font-Bold="False" 
                        Font-Names="Franklin Gothic Medium" Text='<%# Bind("UserName") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                     </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
