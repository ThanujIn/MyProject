<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TourGuideAdmin.aspx.cs" Inherits="Admin" EnableEventValidation="false" validateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 3320px;
            text-align: right;
        }
        .auto-style3 {
            width: 544px;
        }
        .auto-style7 {
            width: 3320px;
            text-align: right;
            height: 26px;
            color: #009933;
        }
        .auto-style8 {
            width: 544px;
            height: 26px;
        }
        .auto-style9 {
            width: 614px;
        }
        .auto-style10 {
            width: 614px;
            height: 26px;
        }
        .auto-style11 {
            width: 3320px;
            text-align: right;
            height: 23px;
        }
        .auto-style12 {
            width: 544px;
            height: 23px;
        }
        .auto-style13 {
            width: 614px;
            height: 23px;
        }
        .auto-style14 {
            height: 23px;
        }
    </style>
</head>
<body style= "background:url(images/GUIDE.jpg);background-repeat:no-repeat ; background-size:cover;min-height:100%;position:center; width: 782px;">
    <form id="form1" runat="server">
    <div>
                        <h1 style="color:red""><b>Change My details</b></h1>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="color: #009933">Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button5" runat="server" Text="LogOut" OnClick="Button5_Click" />
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">Gender</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Nationality</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">
                    Photoes</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">
                    Description</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button4" runat="server" Text="Change Password" Width="140px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">
                    Preference</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">
                    Charge Per Day</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">&nbsp;</td>
                <td style="color: #CC00CC">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit" style="height: 26px" Width="50px" />
                    <asp:Button ID="Button2" runat="server" Text="Save" Width="50px" OnClick="Button2_Click" style="height: 26px" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Show Requests" />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style9" rowspan="2">
                    &nbsp;</td>
                <td class="auto-style3" rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11" style="color: #009933"></td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style13"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
