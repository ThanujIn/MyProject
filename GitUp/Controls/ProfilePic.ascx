<%@ Control Language="C#" AutoEventWireup="true" 
    CodeFile="ProfilePic.ascx.cs" Inherits="Controls_ProfilePic" %>

            <asp:DataList ID="dlProfile" runat="server" Visible="false" CssClass="auto-style1">
                <ItemTemplate>
                   
                               <asp:Image ID="Image1" class="img-circle" runat="server" Height="100px" Width="100px"  ImageUrl='<%# "ImageHandler.ashx?TouristId="+ Eval("TouristId") %>' />
                                
                </ItemTemplate>
            </asp:DataList>
       