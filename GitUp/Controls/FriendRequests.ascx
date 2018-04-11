<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FriendRequests.ascx.cs"
    Inherits="Controls_FriendRequests" %>
<asp:DataList ID="dlFriendRequests" runat="server" Width="100%" OnSelectedIndexChanged="dlFriendRequests_SelectedIndexChanged">
    <ItemTemplate>
        <table cellpadding="2" style="border: 1px ridge #CCCCCC;">
            <tr>
                <td class="style1" rowspan="2" align="center">
                      <asp:ImageButton ID="imgbtnYou" runat="server" Height="84px" Width="84px" 
                     ImageUrl='<%# "ImageHandler.ashx?TouristId="+ Eval("TouristId") %>'
                    BorderColor="#CCCCCC" BorderStyle="Ridge" BorderWidth="1px" OnClick="imgbtnYou_Click"
                    CommandArgument='<%#Bind("TouristId") %>'  />
                </td>
                <td align="left">
                    <asp:Label ID="lblFriendName" runat="server" Font-Bold="False" 
                    Font-Names="Franklin Gothic Medium"
                    Text='<%# Bind("UserName") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Accept" runat="server" ToolTip="Accept" 
                    Text="Accept" OnClick="Accept_Click"
                     CommandArgument='<%# Bind("TouristId") %>' /> 
                    <asp:Button ID="Reject" runat="server" ToolTip="Reject" Text="Reject" Width="59px"
                    CommandArgument='<%#Bind("TouristId") %>' OnClick="Reject_Click" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
