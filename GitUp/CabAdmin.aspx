<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CabAdmin.aspx.cs" Inherits="Admin" EnableEventValidation="false" validateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 83%;
            height: 342px;
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
            width: 595px;
        }
        .auto-style10 {
            width: 595px;
            height: 26px;
        }
        .auto-style15 {
            width: 3320px;
            text-align: right;
            color: #009933;
        }
    </style>

    <style>
    
        .auto-style16 {
            height: 399px;
            width: 512px;
            position: center;
        }
    
        </style>
</head>

    <body style="background:url(images/ABC.jpg);background-repeat:no-repeat; background-size:cover;min-height:100%;position:center;background-color:#cccccc">
    <form id="form1" runat="server">
    <div class="auto-style16"> 
    <h1 style="color:red""><b>Complete your Registration as a Cab Service...</b></h1>
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
                <td class="auto-style15">Photo</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Description</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">
                    Preference</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">
                    Contact No</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button4" runat="server" Text="Change Password" Width="140px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">
                    Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit" style="height: 26px" Width="50px" />
                    <asp:Button ID="Button2" runat="server" Text="Save" Width="50px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Show Requests" />
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #009933">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
