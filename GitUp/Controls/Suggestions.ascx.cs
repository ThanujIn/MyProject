using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Controls_Suggestions : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Suggestions();
    }

    private void Suggestions()
    {
        DataTable dt = new DataTable();
        string query = "Select * from Tourist R where TouristId not in ((select F.FriendId as TouristId  from Friends f where f.MyId='" + Session["UserId"] + "' and f.Status=1) Union  (select F.MyId as TouristId from Friends f where f.FriendId='" + Session["UserId"] + "' and f.Status=1))and R.TouristId !='" + Session["UserId"] + "'";

        dt = Database.GetData(query);
        if (dt.Rows.Count > 0)
        {

            dlProfile.Visible = true;
            dlProfile.DataSource = dt;
            dlProfile.DataBind();
        }
        else
        {

        }
    }
    protected void ImageSuggestions_Click(object sender, ImageClickEventArgs e)
    {
        Session["CurrentProfileId"] = (((ImageButton)sender).CommandArgument).ToString();
        Response.Redirect("MainProfile.aspx");
    }
}
