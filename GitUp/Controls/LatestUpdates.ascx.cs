using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Controls_LatestUpdates : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LatestUpdates();
        CheckFriendshipStatus();
    }


    private void LatestUpdates()
    {
        if (Session["UserName"] != null)
        {
            lblName.Text = Session["UserName"].ToString();
        }
        DataTable dt = new DataTable();
        string query = "SELECT u.TouristId,u.UserName,s.FromId,s.ToId,s.Post,s.PostId,s.PostDate FROM [Tourist] as u, Posts as s WHERE u.TouristId=s.FromId AND s.ToId='" + Session["CurrentProfileId"] + "' order by s.PostId desc";
        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            dlPosts.Visible = true;
            dlPosts.DataSource = dt;
            dlPosts.DataBind();
        }
        else
        {

        }


    }

    private void CheckFriendshipStatus()
    {
        try {
            if (Object.Equals(Session["UserId"].ToString(), Session["CurrentProfileId"].ToString()))
            {
                btnAddAsFriend.Visible = false;
            }
            else
            {
                DataTable dt1 = new DataTable();
                string chkfriendRequest = "SELECT * FROM Friends WHERE (MyId='" + Session["UserId"].ToString() + "' and FriendId='" + Session["CurrentProfileId"].ToString() + "') OR (MyId='" + Session["CurrentProfileId"].ToString() + "' and FriendId='" + Session["UserId"].ToString() + "')";

                dt1 = Database.GetData(chkfriendRequest); ;
                if (dt1.Rows.Count > 0)
                {
                    if (dt1.Rows[0]["Status"].ToString() == "1")
                    {
                        //lblError.Text = "Already in friend list";
                        btnAddAsFriend.Visible = false;

                    }
                    if (dt1.Rows[0]["Status"].ToString() == "0")
                    {
                        //lblError.Text = "Friend Request Pending";
                        btnAddAsFriend.Visible = true;
                        btnAddAsFriend.Text = "Friend Request Pending";
                        btnAddAsFriend.Enabled = false;
                        pnlStatus.Visible = false;
                        dlPosts.Visible = false;
                    }
                    if (dt1.Rows[0]["Status"].ToString() == "2")
                    {
                        //lblError.Text = "Friend Request deny";
                        pnlStatus.Visible = false;
                        dlPosts.Visible = false;
                    }
                }
                else
                {
                    pnlStatus.Visible = false;
                    dlPosts.Visible = false;
                }
            }
        }
        catch
        {

        }

    }
    protected void btnPost_Click(object sender, EventArgs e)
    {
        string PostDate = DateTime.Now.ToLongDateString();
        string InsertPostquery = "Insert into Posts (Post,FromId,ToId,PostDate)values('" + Post.Text + "','" + Convert.ToInt32(Session["UserId"]) + "','" + Convert.ToInt32(Session["CurrentProfileId"]) + "','" + PostDate + "')";
        Database.InsertData(InsertPostquery);
        LatestUpdates();
        Post.Text = string.Empty;

    }

    protected void btnAddAsFriend_Click(object sender, EventArgs e)
    {


        if (!object.Equals(Session["UserId"], null))
        {
            if (Object.Equals(Session["UserId"], Session["CurrentProfileId"]))
            {
                btnAddAsFriend.Visible = false;
            }
            else
            {
                DataTable dt1 = new DataTable();
                string chkfriendRequest = "SELECT * FROM Friends WHERE (MyId='" + Session["UserId"].ToString() + "' and FriendId='" + Session["CurrentProfileId"].ToString() + "') OR (MyId='" + Session["CurrentProfileId"].ToString() + "' and FriendId='" + Session["UserId"].ToString() + "')";

                dt1 = Database.GetData(chkfriendRequest); ;
                if (dt1.Rows.Count > 0)
                {
                    if (dt1.Rows[0]["Status"].ToString() == "1")
                    {
                        //lblError.Text = "Already in friend list";
                        btnAddAsFriend.Visible = false;

                    }
                    if (dt1.Rows[0]["Status"].ToString() == "0")
                    {
                        //lblError.Text = "Friend Request Pending";
                        btnAddAsFriend.Visible = true;
                        btnAddAsFriend.Text = "Friend Request Pending";
                        btnAddAsFriend.Enabled = false;
                    }
                    if (dt1.Rows[0]["Status"].ToString() == "2")
                    {
                        //lblError.Text = "Friend Request deny";

                    }
                }
                else
                {
                    string friendRequest = "Insert INTO Friends (MyId,FriendId,Status) VALUES('" + Session["UserId"].ToString() + "','" + Session["CurrentProfileId"].ToString() + "','" + 0 + "')";
                    Database.InsertData(friendRequest);
                    btnAddAsFriend.Text = "Friend Request Sent.";
                }
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
    }

    protected void YourPic_Click(object sender, ImageClickEventArgs e)
    {
        Session["CurrentProfileId"] = (((ImageButton)sender).CommandArgument).ToString();
        Response.Redirect("Main.aspx");
    }
}

    

