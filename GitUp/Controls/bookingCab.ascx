<%@ Control Language="C#" AutoEventWireup="true" CodeFile="bookingCab.ascx.cs" Inherits="Controls_bookingCab" %>
<style type="text/css">
    .auto-style1 {
        width: 99%;
        height: 162px;
    }
    .auto-style6 {
        width: 89px;
    }
    .auto-style10 {
        width: 48px;
        height: 23px;
    }
    .auto-style11 {
        width: 112px;
        height: 23px;
    }
    .auto-style13 {
        width: 53px;
        height: 23px;
    }
    .auto-style14 {
        width: 26px;
    }
    .auto-style15 {
        width: 26px;
        height: 23px;
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
</style>

<asp:DataList ID="DataList1" runat="server" Width="507px">
    <ItemTemplate>
        <table class="auto-style1" style="border: 1px ridge #CCCCCC;">
            <tr>
                <td class="auto-style6">Cab Name</td>
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
                    Begining Location</td>
                <td class="auto-style11">
                    <asp:Label ID="Label7" runat="server" Text='<%#Bind("BeginigLocation")%>'></asp:Label>
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    Contact</td>
                
                <td class="auto-style14">
                    <asp:Label ID="Label8" runat="server" Text='<%#Bind("ContactNo")%>'></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    Time</td>
                <td class="auto-style17">
                    <asp:Label ID="Label9" runat="server" Text='<%#Bind("Time")%>'></asp:Label>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>