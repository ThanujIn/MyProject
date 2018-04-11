using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Controls_Friends : System.Web.UI.UserControl
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        MyFriends();
    }

    private void MyFriends()
    {

        string getFriendQuery = "Select * FROM [Tourist] where TouristId IN (SELECT MyId  FROM Friends WHERE FriendId='" + Session["CurrentProfileId"] + "' AND Status=1 UNION SELECT FriendId  FROM Friends WHERE MyId='" + Session["CurrentProfileId"] + "' AND Status=1) ";
        dt = Database.GetData(getFriendQuery);
        if (dt.Rows.Count > 0)
        {
            dlFriends.DataSource = dt;
            dlFriends.DataBind();
        }


    }
    protected void imgbtnYou_Click(object sender, ImageClickEventArgs e)
    {
        Session["CurrentProfileId"] = (((ImageButton)sender).CommandArgument).ToString();
        Response.Redirect("MainProfile.aspx");
    
     }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["CurrentProfileId"]= (((Button)sender).CommandArgument).ToString();
    }
}