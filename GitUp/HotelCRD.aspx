<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelCRD.aspx.cs" Inherits="HotelCRD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 211px;
        }
    </style>
</head>
<body style= "background:url(images/HOTEL.jpg);background-repeat:no-repeat ; background-size:cover;min-height:100%;position:center; width: 782px;">
    <form id="form1" runat="server">
                    <h1 style="color:red""><b>Change Room details</b></h1>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>Single Room</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged1" Text="Available" />
                </td>
                <td>Double Room</td>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged1" Text="Available" />
                </td>
                <td>Economic Room</td>
                <td>
                    <asp:CheckBox ID="CheckBox3" runat="server" OnCheckedChanged="CheckBox3_CheckedChanged1" Text="Available" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back to Admin page" />
                </td>
            </tr>
            <tr>
                <td>Persons</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Room Charge</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Availability</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Save Changes" />
                </td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
