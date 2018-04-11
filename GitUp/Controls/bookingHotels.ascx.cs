using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class Controls_bookingHotels : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowRequests();
    }
    private void ShowRequests()
    {

        DataTable dt = new DataTable();
        string query = "Select RoomBooking.CheckinDate,RoomBooking.NoOfRooms,RoomBooking.CheckoutDate,Hotel.UserName,Hotel.Contact,RoomType.RoomTypeName from RoomBooking,Hotel,RoomType where RoomBooking.TouristId='" + Session["UserId"] + "' And RoomBooking.HotelId=Hotel.HotelId And RoomBooking.RoomTypeId=RoomType.RoomTypeId";
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


   }
