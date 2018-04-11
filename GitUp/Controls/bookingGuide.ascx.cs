using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class Controls_bookingGuide : System.Web.UI.UserControl
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowRequests();
    }
    private void ShowRequests()
    {

        DataTable dt = new DataTable();
        string query = "Select TourGuideBooking.Date,TourGuideBooking.BookingId,TourGuideBooking.NoOfDays,TourGuide.UserName from TourGuideBooking,TourGuide where TourGuideBooking.GuideId=TourGuide.GuideId And TourGuideBooking.TouristId='" + Session["UserId"] + "' And TourGuideBooking.Status=1";
        dt = Database.GetData(query);
        if (dt.Rows.Count > 0)
        {


            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        else
        {

        }


    }


     protected void Button2_Click(object sender, EventArgs e)
    {
        string bookingId = (((Button)sender).CommandArgument).ToString();

        string AcceptQuery = "Update TourGuideBooking set Status=2 where BookingId = '" + bookingId + "'";
        Database.UpdateData(AcceptQuery);
    }
}
