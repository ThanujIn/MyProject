using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadDetails();
        //LoadMap();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelHome.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelServices.aspx");
    }

    
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelTestimonials.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelBooking.aspx");
    }

   private void LoadDetails()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from Hotel where HotelId=1";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            Label2.Text = dt.Rows[0]["UserName"].ToString();
            Label1.Text = dt.Rows[0]["Contact"].ToString();
            Label3.Text = dt.Rows[0]["Discription"].ToString();
        }
    }
   /* private void LoadMap()
    {
        DataTable dt = new DataTable();
        string query = "select * from Hotel where HotelId = 1";
        dt = Database.GetData(query);
        if (dt.Rows.Count > 0)
        {
            rptMarkers.DataSource = dt;
            rptMarkers.DataBind();
        }
        
    }*/
}