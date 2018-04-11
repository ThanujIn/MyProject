<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Suggestions.ascx.cs"
    Inherits="Controls_Suggestions" %>
<style type="text/css">
    .FriendsSuggestions
    {
        width: 130px;
        text-align: center;
    }
    .FriendsSuggestionsTD
    {
        height: 20px;
    }
    .auto-style1 {
        height: 20px;
        width: 110px;
    }
    .auto-style3 {
        width: 110px;
        text-align: center;
    }
    .auto-style4 {
        width: 110px;
    }
</style>
<table align="center" cellpadding="0" cellspacing="0" class="auto-style3">
    <tr>
        <td align="center" class="auto-style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="auto-style4">
            <asp:DataList ID="dlProfile" runat="server" BorderColor="Black" BorderStyle="Ridge"
                BorderWidth="0px" Visible="true" Width="100px">
                <ItemTemplate>
                    <table align="center" cellspacing="1" style="width: 100%">
                        <tr>
                            <td align="center">
                                <asp:ImageButton ID="ImageSuggestions" runat="server" 
                                BorderColor="Black" BorderStyle="Ridge"
                                BorderWidth="1px" Height="63px" 
                                ImageUrl='<%# "ImageHandler.ashx?TouristId="+ Eval("TouristId") %>'
                                Width="74px" OnClick="ImageSuggestions_Click" 
                                CommandArgument='<%#Bind("TouristId") %>' />
                               </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Label ID="lblName" runat="server" Font-Size="Small" Text='<%# Bind("UserName") %>'
                                    ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td align="center" class="auto-style4">
             
        </td>
    </tr>
</table>
