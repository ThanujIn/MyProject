<%@ Control Language="C#" AutoEventWireup="true" CodeFile="bookingGuide.ascx.cs" Inherits="Controls_bookingGuide" %>
<style type="text/css">
    .auto-style1 {
        width: 99%;
        height: 96px;
    }
    .auto-style6 {
        width: 89px;
    }
    .auto-style10 {
        width: 48px;
        height: 12px;
    }
    .auto-style13 {
        width: 53px;
        height: 12px;
    }
    .auto-style14 {
        width: 26px;
    }
    .auto-style17 {
        width: 112px;
    }
    .auto-style18 {
        width: 26px;
        text-align: right;
        height: 35px;
    }
    .auto-style19 {
        width: 89px;
        height: 35px;
    }
    .auto-style21 {
        height: 35px;
    }
    .auto-style22 {
        width: 112px;
        height: 35px;
    }
    .auto-style23 {
        width: 112px;
        height: 37px;
    }
    .auto-style24 {
        width: 26px;
        height: 12px;
    }
    .auto-style25 {
        width: 112px;
        height: 12px;
    }
</style>

<asp:DataList ID="DataList1" runat="server" Width="507px">
    <ItemTemplate>
        <table class="auto-style1" style="border: 1px ridge #CCCCCC;">
            <tr>
                <td class="auto-style6">TourGuide Name</td>
                <td class="auto-style17">
                    <asp:Label ID="Label5" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">
                    Date</td>
                <td class="auto-style22">
                    <asp:Label ID="Label6" runat="server" Text='<%#Bind("Date")%>'></asp:Label>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style21">
                    <asp:Button ID="Button2" runat="server" Text="Reject" CommandArgument='<%#Bind("BookingId") %>' OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    No.Of Days</td>
                <td class="auto-style25">
                    <asp:Label ID="Label7" runat="server" Text='<%#Bind("NoOfDays")%>'></asp:Label>
                </td>
                <td class="auto-style24"></td>
                <td class="auto-style13"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>