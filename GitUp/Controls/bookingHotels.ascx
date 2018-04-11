<%@ Control Language="C#" AutoEventWireup="true" CodeFile="bookingHotels.ascx.cs" Inherits="Controls_bookingHotels" %>
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
                <td class="auto-style6">Hotel Name</td>
                <td class="auto-style17">
                    <asp:Label ID="Label5" runat="server" Text='<%#Bind("UserName") %>'></asp:Label>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">
                    Checkin Date</td>
                <td class="auto-style22">
                    <asp:Label ID="Label6" runat="server" Text='<%#Bind("CheckinDate")%>'></asp:Label>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">CheckoutDate</td>
                <td class="auto-style22">
                    <asp:Label ID="Label10" runat="server" Text='<%#Bind("CheckoutDate")%>'></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    No of Rooms</td>
                <td class="auto-style11">
                    <asp:Label ID="Label7" runat="server" Text='<%#Bind("NoOfRooms")%>'></asp:Label>
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    Contact</td>
                
                <td class="auto-style14">
                    <asp:Label ID="Label8" runat="server" Text='<%#Bind("Contact")%>'></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    RoomType</td>
                <td class="auto-style17">
                    <asp:Label ID="Label9" runat="server" Text='<%#Bind("RoomTypeName")%>'></asp:Label>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>