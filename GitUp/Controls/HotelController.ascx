<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HotelController.ascx.cs" Inherits="Controls_HotelController" %>
<asp:DataList ID="dlHotel" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td rowspan="3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" Width="90px" ImageUrl='<%# "hotelimages.ashx?HotelId="+ Eval("HotelId") %>' />
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
