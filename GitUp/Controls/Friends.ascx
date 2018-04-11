<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Friends.ascx.cs" Inherits="Controls_Friends" %>
<style type="text/css">
   
</style>
<asp:DataList ID="dlFriends" runat="server" Width="100%">
    <ItemTemplate>
                         <asp:ImageButton ID="imgbtnYou" runat="server" Height="84px" Width="84px" 
                     ImageUrl='<%# "ImageHandler.ashx?TouristId="+ Eval("TouristId") %>'
                    BorderColor="#CCCCCC" BorderStyle="Ridge" BorderWidth="1px" OnClick="imgbtnYou_Click"
                    CommandArgument='<%#Bind("TouristId") %>'  />
                       <asp:Label ID="lblFriendName" runat="server" Font-Bold="False" Font-Names="Franklin Gothic Medium"
                        Text='<%# Bind("UserName") %>'></asp:Label>
               
              </ItemTemplate>
</asp:DataList>
