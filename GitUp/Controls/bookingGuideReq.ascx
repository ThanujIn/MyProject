<%@ Control Language="C#" AutoEventWireup="true" CodeFile="bookingGuideReq.ascx.cs" Inherits="Controls_bookingGuideReq" %>
<style type="text/css">
    .auto-style1 {
        width: 99%;
        height: 95px;
    }
    .auto-style10 {
        width: 48px;
        height: 7px;
    }
    .auto-style13 {
        width: 53px;
        height: 7px;
    }
    .auto-style14 {
        width: 26px;
        height: 9px;
    }
    .auto-style18 {
        width: 26px;
        text-align: right;
        height: 3px;
    }
    .auto-style23 {
        width: 89px;
        height: 9px;
    }
    .auto-style24 {
        width: 112px;
        height: 9px;
    }
    .auto-style25 {
        height: 9px;
    }
    .auto-style26 {
        width: 89px;
        height: 3px;
    }
    .auto-style27 {
        width: 112px;
        height: 3px;
    }
    .auto-style28 {
        height: 3px;
    }
    .auto-style33 {
        width: 26px;
        height: 10px;
    }
    .auto-style34 {
        width: 112px;
        height: 10px;
    }
    .auto-style35 {
        width: 112px;
        height: 7px;
    }
    .auto-style36 {
        width: 26px;
        height: 7px;
    }
</style>

<asp:DataList ID="DataList1" runat="server" Width="507px">
    <ItemTemplate>
        <table class="auto-style1" style="border: 1px ridge #CCCCCC;">
            <tr>
                <td class="auto-style23">TourGuide Name</td>
                <td class="auto-style24">
                    <asp:Label ID="Label5" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style26">
                    Date</td>
                <td class="auto-style27">
                    <asp:Label ID="Label6" runat="server" Text='<%#Bind("Date")%>'></asp:Label>
                </td>
                <td class="auto-style18">
                </td>
                <td class="auto-style28">
                    <asp:Button ID="Button2" runat="server" Text="Reject" CommandArgument='<%#Bind("BookingId") %>' OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    No.Of Days</td>
                <td class="auto-style35">
                    <asp:Label ID="Label7" runat="server" Text='<%#Bind("NoOfDays")%>'></asp:Label>
                </td>
                <td class="auto-style36"></td>
                <td class="auto-style13"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>