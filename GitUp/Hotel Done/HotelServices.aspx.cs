using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        string query = "Select * from RoomDetails where HotelId=1";
        dt = Database.GetData(query);
        if (dt.Rows.Count > 0 && dt != null)
        {
            GetRoom1();
            GetRoom2();
            GetRoom3();

        }

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
    private void GetRoom1()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from RoomDetails where HotelId=1 AND TypeID=1 ";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            LabelA1.Text = dt.Rows[0]["Persons"].ToString();
            LabelPrice1.Text = dt.Rows[0]["RoomCharge"].ToString();
            LabelA2.Text = dt.Rows[0]["Availability"].ToString();
        }
        else
        {
            LabelA1.Text = "0";
            LabelPrice1.Text = "0";
            LabelA2.Text = "0";
        }
    }
    private void GetRoom2()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from RoomDetails where HotelId=1 AND TypeID=2 ";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            LabelB1.Text = dt.Rows[0]["Persons"].ToString();
            LabelPrice2.Text = dt.Rows[0]["RoomCharge"].ToString();
            LabelB2.Text = dt.Rows[0]["Availability"].ToString();
        }
        else
        {
            LabelB1.Text = "0";
            LabelPrice2.Text = "0";
            LabelB2.Text = "0";
        }
    }
    private void GetRoom3()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from RoomDetails where HotelId=1 AND TypeID=3 ";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            LabelC1.Text = dt.Rows[0]["Persons"].ToString();
            LabelPrice3.Text = dt.Rows[0]["RoomCharge"].ToString();
            LabelC2.Text = dt.Rows[0]["Availability"].ToString();
        }
        else
        {
            LabelC1.Text = "0";
            LabelPrice3.Text = "0";
            LabelC2.Text = "0";
        }
    }

}