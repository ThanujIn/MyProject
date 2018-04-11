using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Controls_TourGuides : System.Web.UI.UserControl
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        TourGuides();
    }

    private void TourGuides()
    {

        string getTourGuideQuery = "Select * FROM [TourGuide]";
        dt = Database.GetData(getTourGuideQuery);
        if (dt.Rows.Count > 0)
        {
            dlTourGuide.DataSource = dt;
            dlTourGuide.DataBind();
        }

    }
    /*
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["CurrentProfileId"] = (((ImageButton)sender).CommandArgument).ToString();
        Response.Redirect("Main.aspx");
    }*/

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["CurrentProfileId"] = (((ImageButton)sender).CommandArgument).ToString();
       

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["CurrentProfileId"] = (((Button)sender).CommandArgument).ToString();
       
    }
}