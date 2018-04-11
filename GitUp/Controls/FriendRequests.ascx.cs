using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class Controls_FriendRequests : System.Web.UI.UserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {
        ShowFriendRequests();
    }
    private void ShowFriendRequests()
    {
        if (Session["UserId"] == Session["CurrentProfileId"])
        {
            DataTable dt = new DataTable();
            string query = "Select * FROM [Tourist]  where TouristId IN (SELECT MyId  FROM Friends WHERE FriendId='" + Session["UserId"] + "' AND Status=0) ";
            dt = Database.GetData(query);

            if (dt.Rows.Count > 0)
            {

                dlFriendRequests.DataSource = dt;
                dlFriendRequests.DataBind();
            }
            else
            {

            }
        }

    }

    protected void imgbtnYou_Click(object sender, ImageClickEventArgs e)
    {
        Session["CurrentProfileId"] = (((ImageButton)sender).CommandArgument).ToString();
        Response.Redirect("Main.aspx");
    }

    protected void Accept_Click(object sender, EventArgs e)
    {
        string SenderFriendId = (((Button)sender).CommandArgument).ToString();
        string MyID = Session["UserId"].ToString();
        string AcceptFriendQuery = "Update Friends set Status=1 where MyId = '" + SenderFriendId + "' AND FriendId = '" + MyID + "'";
        Database.UpdateData(AcceptFriendQuery);
        Response.Redirect("Friends1.aspx");
    }
    protected void Reject_Click(object sender, EventArgs e)
    {
        string SenderFriendId = (((Button)sender).CommandArgument).ToString();
        string MyID = Session["UserId"].ToString();
        string RejectFriendQuery = "Update Friends set Status=2 where MyId = '" + SenderFriendId + "' AND FriendId = '" + MyID + "'";
        Database.UpdateData(RejectFriendQuery);
        Response.Redirect("Friends1.aspx");
    }

    protected void dlFriendRequests_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
