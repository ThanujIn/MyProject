using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class Controls_bookingCabReq : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowRequests();
    }
    private void ShowRequests()
    {

        DataTable dt = new DataTable();
        string query = "Select CabDetails.ContactNo,CabBooking.Date,CabBooking.BookingId,CabBooking.Time,CabBooking.BeginigLocation,CabDetails.UserName,CabBooking.TouristId from CabBooking,CabDetails where CabBooking.CabId=CabDetails.CabId And CabBooking.TouristId='" + Session["UserId"] + "' And CabBooking.Status=0 ";
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




    protected void Button1_Click(object sender, EventArgs e)
    {
        string bookingId = (((Button)sender).CommandArgument).ToString();

        string AcceptQuery = "Update CabBooking set Status=1 where BookingId = '" + bookingId + "'";
        Database.UpdateData(AcceptQuery);

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string bookingId = (((Button)sender).CommandArgument).ToString();

        string AcceptQuery = "Update CabBooking set Status=2 where BookingId = '" + bookingId + "'";
        Database.UpdateData(AcceptQuery);
    }
}
