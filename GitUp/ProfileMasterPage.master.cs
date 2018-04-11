using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class ProfileMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("AboutMe1.aspx");
    }



    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Friends1.aspx");
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("chat.aspx");
       
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["CurrentProfileId"] = Session["UserId"];
        Response.Redirect("MainProfile.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }



    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("bookingHotel.aspx");
    }

    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("bookingTourGuides.aspx");
    }

    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("bookingCabs.aspx");
    }
}
