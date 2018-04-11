<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CabController.ascx.cs" Inherits="Controls_CabController" %>
<asp:DataList ID="dlCab" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td rowspan="3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" Width="90px" ImageUrl='<%# "cabimages.ashx?CabId="+ Eval("CabId") %>' CommandArgument='<%#Bind("CabId") %>' />
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