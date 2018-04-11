<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelCP.aspx.cs" Inherits="HotelCP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body style= "background:url(images/HOTEL.jpg);background-repeat:no-repeat ; background-size:cover;min-height:100%;position:center; width: 782px;">
    <form id="form1" runat="server">
            <h1 style="color:red""><b>Change Password</b></h1>

        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Old Password</td>
                <td>
                    <asp:TextBox ID="txtOP" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Back to admin page" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td>New Password</td>
                <td>
                    <asp:TextBox ID="txtNP" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Confirm New Password</td>
                <td>
                    <asp:TextBox ID="txtRNP" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNP" ControlToValidate="txtRNP" ErrorMessage="Paswords Must Be the Same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Change Password" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
