 <%@ Control Language="C#" AutoEventWireup="true" CodeFile="LatestUpdates.ascx.cs"
    Inherits="Controls_LatestUpdates" %>
<style type="text/css">
    .styleLatestUpdates
    {
        width: 100%;
    }
    .stylePost
    {
        width: 98%;
        height: 90px;
    }
    .styleComment
    {
        width: 100%px;
    }
    .stylePostPic
    {
        width: 100px;
        vertical-align: top;
    }
</style>
<table style="width: 100%" align="center">
    <tr>
        <td align="left" style="padding-left: 10px;">
            <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Names="Georgia" Font-Size="Large"></asp:Label>
        </td>
        <td align="right">
            <asp:LinkButton ID="btnAddAsFriend" runat="server" Text="Add As Friend" Font-Bold="True"
                Font-Italic="True" OnClick="btnAddAsFriend_Click"></asp:LinkButton>
            <br />
        </td>
    </tr>
</table>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table align="center" cellpadding="0" cellspacing="0" class="styleLatestUpdates">
            <tr>
                <td>
                    <table style="width: 100%">
                        <tr>
                            <td align="left">
                                <panel runat="server" id="pnlStatus">

                            
                                <asp:TextBox ID="Post" runat="server" Height="59px" TextMode="MultiLine"
                                    Width="505px"></asp:TextBox>
                                <br />
                                 <asp:Button ID="btnPost" runat="server" BackColor="#CCCCCC" BorderColor="#CCCCCC"
                                    BorderStyle="Ridge" BorderWidth="1px" Font-Bold="True" ForeColor="#333333" OnClick="btnPost_Click"
                                    Text="Post" Width="52px" />
                                <asp:UpdateProgress ID="ProgressBar" runat="server">
                                    <ProgressTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/loading.gif" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>  
                                </panel>
                            </td>
                        </tr>
                    </table>
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="dlPosts" runat="server" Width="100%">
                        <ItemTemplate>
                            <div>
                                <table cellpadding="0" cellspacing="0" class="stylePost">
                                    <tr>
                                        <td class="stylePostPic" rowspan="2" align="center">
                                            <asp:ImageButton ID="YourPic" runat="server" BorderColor="Black" BorderStyle="Ridge"
                                                BorderWidth="1px" Height="60px" ImageUrl='<%# "ImageHandler.ashx?TouristId="+ Eval("TouristId") %>'
                                                Width="60px" OnClick="YourPic_Click" CommandArgument='<%#Bind("TouristId") %>' />
                                        </td>
                                        <td valign="top" align="left">
                                            <asp:Label runat="server" ID="lblName" ForeColor="Blue" Font-Bold="True" Font-Italic="True">
                                            <%# DataBinder.Eval(Container.DataItem, "UserName")%> Posted:</asp:Label>
                                             <div style="width: 300px">
                                                <%# DataBinder.Eval(Container.DataItem, "Post")%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" valign="bottom">
                                            <asp:Label runat="server" ID="lblPostedOn" ForeColor="Black" Font-Italic="True" Font-Size="Small">
                                            Posted On: <%# DataBinder.Eval(Container.DataItem, "PostDate")%>
                                            </asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <hr />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnPost" EventName="Click" />
    </Triggers>
</asp:UpdatePanel>
