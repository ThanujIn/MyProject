<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TourGuides.ascx.cs" Inherits="Controls_TourGuides" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 108px;
    }
</style>
<asp:DataList ID="dlTourGuide" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td rowspan="3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" Width="90px" ImageUrl='<%#"guideimages.ashx?GuideId="+ Eval("GuideId") %>' OnClick="ImageButton1_Click" CommandArgument='<%#Bind("GuideId") %>' />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>' ></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                
                    &nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
    
</asp:DataList>

