using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
    

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label6.Text = "";
        Label7.Text = "";
        Label8.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        Label2.Text = "";

        int x = 0,y = 0, z = 0;
        if (!(String.IsNullOrEmpty(TextBox3.Text)))
        {
            x = CheckRoomSIngle();
        }
        else
        {
            x = 1;
        }
        if (!(String.IsNullOrEmpty(TextBox4.Text)))
        {
            y = CheckRoomDouble();
        }

        else
        {
            y = 1;
        }
        if (!(String.IsNullOrEmpty(TextBox5.Text)))
        {
            z = CheckRoomEconomic();
        }
        else
        {
            z = 1;
        }
        CheckPersons();
        if ((x + y + z) == 3)
        {
            if (!(String.IsNullOrEmpty(TextBox6.Text)))
            {
                if (!((String.IsNullOrEmpty(TextBox3.Text)) && (String.IsNullOrEmpty(TextBox4.Text)) && (String.IsNullOrEmpty(TextBox5.Text))))
                {
                    Button4.Visible = true;
                    Label3.Text = TextBox3.Text;
                    Label4.Text = TextBox4.Text;
                    Label5.Text = TextBox5.Text;
                    Label2.Text = TextBox6.Text;
                }
            }

        }
        else
        {
            Button4.Visible = false;
        }
    }

    private int CheckRoomSIngle()
    {
        int p = 0;
        DataTable dt = new DataTable();
        string query = "select  *  from RoomDetails where HotelId=1 AND TypeID=1 ";
        dt = Database.GetData(query);
        foreach (DataRow row in dt.Rows)
        {
            String A = row["Availability"].ToString();
            int x = Convert.ToInt32(A);
            if ((dt.Rows.Count > 0))
            {
                if (x >= Convert.ToInt32(TextBox3.Text))
                {
                    Label1.Text = "There are enough single rooms";
                    p = 1;
                }
                else
                {
                    Label1.Text = "There are no enough single rooms";
                    p = 0;
                }
            }
        }
        return p;
    }

    private int CheckRoomDouble()
    {
        int p = 0;
        DataTable dt = new DataTable();
        string query = "select  *  from RoomDetails where HotelId=1 AND TypeID=2 ";
        dt = Database.GetData(query);
        foreach (DataRow row in dt.Rows)
        {
            String A = row["Availability"].ToString();
            int x = Convert.ToInt32(A);
            if ((dt.Rows.Count > 0))
            {
                if (x >= Convert.ToInt32(TextBox4.Text))
                {
                    Label6.Text = "There are enough Double rooms";
                    p = 1;
                   // return p;
                }
                else
                {
                    Label6.Text = "There are no enough Double rooms";
                    p = 0;
                   // return p;
                }
            }
        }
        return p;
    }
    
    private int CheckRoomEconomic()
    {
        int p = 0;
        DataTable dt = new DataTable();
        string query = "select  *  from RoomDetails where HotelId=1 AND TypeID=3 ";
        dt = Database.GetData(query);
        foreach (DataRow row in dt.Rows)
        {
            String A = row["Availability"].ToString();
            int x = Convert.ToInt32(A);
            if ((dt.Rows.Count > 0))
            {
                if (x >= Convert.ToInt32(TextBox5.Text))
                {
                    Label7.Text = "There are enough Economic rooms";
                    p = 1;
                   // return p;
                }
                else
                {
                    Label7.Text = "There are no enough Economic rooms";
                    p = 0;
                  //  return p;
                }
            }
        }
        return p;
    }
    
    private void CheckPersons()
  {
        //int p = 0;
       int count=0;
       DataTable dt = new DataTable();
       string query = "select  *  from RoomDetails where HotelId=1 ";
       dt = Database.GetData(query);
       foreach (DataRow row in dt.Rows)
       {
           String a = row["Persons"].ToString();
           int x = Convert.ToInt32(a);
           String b = row["Availability"].ToString();
           int y = Convert.ToInt32(b);
           count=+ (x * y);
       }
        if (!(String.IsNullOrEmpty(TextBox6.Text)))
        {
            if (count >= Convert.ToInt32(TextBox6.Text))
            {
                Label8.Text = "No of customers can comfortably stay";
                //p = 1;
                //return p;
            }
            else
            {
                Label8.Text = "No of customers can't comfortably stay";
                //p = 0;
                //return p;
            }
        }
   }

    protected void Button4_Click(object sender, EventArgs e)
    {
        
        if (!((String.IsNullOrEmpty(TextBox3.Text)) || (Convert.ToInt32(this.TextBox3.Text) == 0)))
        {
            DataTable dt = new DataTable();
            string abc = "select  Availability  from RoomDetails where HotelId=1 AND TypeId= 1";
            dt = Database.GetData(abc);
            foreach (DataRow row in dt.Rows)
            {
                String a = row["Availability"].ToString();
                int x = Convert.ToInt32(a);
                DeductAvailable(1, (x - Convert.ToInt32(TextBox3.Text)));
            }
            try
            {
                using (SqlConnection connection = new SqlConnection(Database.connString))
                {
                    String query = "INSERT INTO RoomBooking (PaymentId,CheckinDate,CheckoutDate,NoOfRooms,TouristId,HotelId,RoomTypeId) VALUES (@pay,@ciday,@coday,@nrooms, @Tid,@Hid,@roomtid)";
                    int check = GetPayId(1);
                    if (check == 0)
                    {
                        Label9.Text = "Customer has not payed";
                    }
                    else
                    {
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            //command.Parameters.AddWithValue("@bid", CalculateBID());
                            command.Parameters.AddWithValue("@pay", check);
                            command.Parameters.AddWithValue("@ciday", TextBox1.Text);
                            command.Parameters.AddWithValue("@coday", TextBox2.Text);
                            command.Parameters.AddWithValue("@nrooms", TextBox3.Text);
                            command.Parameters.AddWithValue("@Tid", 1);
                            command.Parameters.AddWithValue("@Hid", 1);
                            command.Parameters.AddWithValue("@roomtid", 1);
                            connection.Open();
                            command.ExecuteNonQuery();
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }


        if (!((String.IsNullOrEmpty(TextBox4.Text)) || (Convert.ToInt32(this.TextBox4.Text) == 0)))
        {
            DataTable dt = new DataTable();
            string abc = "select  Availability  from RoomDetails where HotelId=1 AND TypeId= 2";
            dt = Database.GetData(abc);
            foreach (DataRow row in dt.Rows)
            {
                String a = row["Availability"].ToString();
                int x = Convert.ToInt32(a);
                DeductAvailable(2, (x - Convert.ToInt32(TextBox4.Text)));
            }
            try
            {
                using (SqlConnection connection = new SqlConnection(Database.connString))
                {
                    String query = "INSERT INTO RoomBooking (PaymentId,CheckinDate,CheckoutDate,NoOfRooms,TouristId,HotelId,RoomTypeId) VALUES (@pay,@ciday,@coday,@nrooms, @Tid,@Hid,@roomtid)";
                    int check = GetPayId(2);
                    if (check == 0)
                    {
                        Label9.Text = "Customer has not payed";
                    }
                    else
                    {
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            //command.Parameters.AddWithValue("@bid", CalculateBID());
                            command.Parameters.AddWithValue("@pay", check);
                            command.Parameters.AddWithValue("@ciday", TextBox1.Text);
                            command.Parameters.AddWithValue("@coday", TextBox2.Text);
                            command.Parameters.AddWithValue("@nrooms", TextBox4.Text);
                            command.Parameters.AddWithValue("@Tid", 1);
                            command.Parameters.AddWithValue("@Hid", 1);
                            command.Parameters.AddWithValue("@roomtid", 2);
                            connection.Open();
                            command.ExecuteNonQuery();
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }


        if (!((String.IsNullOrEmpty(TextBox5.Text)) || (Convert.ToInt32(this.TextBox5.Text) == 0)))
        {
            DataTable dt = new DataTable();
            string abc = "select  Availability  from RoomDetails where HotelId=1 AND TypeId= 3";
            dt = Database.GetData(abc);
            foreach (DataRow row in dt.Rows)
            {
                String a = row["Availability"].ToString();
                int x = Convert.ToInt32(a);
                DeductAvailable(3, (x - Convert.ToInt32(TextBox5.Text)));
            }
            try
            {
                using (SqlConnection connection = new SqlConnection(Database.connString))
                {
                    String query = "INSERT INTO RoomBooking (PaymentId,CheckinDate,CheckoutDate,NoOfRooms,TouristId,HotelId,RoomTypeId) VALUES (@pay,@ciday,@coday,@nrooms, @Tid,@Hid,@roomtid)";
                    int check = GetPayId(3);
                    if (check == 0)
                    {
                        Label9.Text = "Customer has not payed";
                    }
                    else
                    {
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            //command.Parameters.AddWithValue("@bid", CalculateBID());
                            command.Parameters.AddWithValue("@pay", check);
                            command.Parameters.AddWithValue("@ciday", TextBox1.Text);
                            command.Parameters.AddWithValue("@coday", TextBox2.Text);
                            command.Parameters.AddWithValue("@nrooms", TextBox3.Text);
                            command.Parameters.AddWithValue("@Tid", 1);
                            command.Parameters.AddWithValue("@Hid", 1);
                            command.Parameters.AddWithValue("@roomtid", 3);
                            connection.Open();
                            command.ExecuteNonQuery();
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }


    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    private int GetPayId(int p)
    {
        DataTable dt = new DataTable();
        string query = "select  *  from Payments where HotelId=1 AND TouristId= 1";
        dt = Database.GetData(query);
        int payid = 0;
        if (dt.Rows.Count > 0)
        {
            int[] array = new int[50];
            int i = 0;
            foreach (DataRow row in dt.Rows)
            {
                String a = row["TotalAmount"].ToString();
               array [i] = Convert.ToInt32(a);
                i++;
                if (array.Max() >= CalculateAmount(p))
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        payid = Convert.ToInt32(row["PaymentId"].ToString());
                    }
                }
                else
                {
                    payid = 0;
                }
            }
        }
        return payid;

    }

    private int CalculateAmount(int p)
    {
        int price = 0;
        if (p == 1)
        {
            DataTable dt = new DataTable();
            string query = "select  *  from RoomDetails where HotelId=1 AND TypeId = 1";
            dt = Database.GetData(query);
            // price = String a = ;
            foreach (DataRow row in dt.Rows)
            {
                price = (Convert.ToInt32(TextBox3.Text))*(Convert.ToInt32(row["RoomCharge"].ToString()));
            }
        }
        // int price = 0;
        if (p == 2)
        {
            DataTable dt = new DataTable();
            string query = "select  *  from RoomDetails where HotelId=1 AND TypeId = 2";
            dt = Database.GetData(query);
            // price = String a = ;
            foreach (DataRow row in dt.Rows)
            {
                price = (Convert.ToInt32(TextBox4.Text)) * (Convert.ToInt32(row["RoomCharge"].ToString()));
            }
        }

        if (p == 3)
        {
            DataTable dt = new DataTable();
            string query = "select  *  from RoomDetails where HotelId=1 AND TypeId = 3";
            dt = Database.GetData(query);
            // price = String a = ;
            foreach (DataRow row in dt.Rows)
            {
                price = (Convert.ToInt32(TextBox5.Text)) * (Convert.ToInt32(row["RoomCharge"].ToString()));
            }
        }
        return price;
    }
    private int CalculateBID()
    {
        int i = 0;
        int[] array = new int[1000];
        DataTable dt = new DataTable();
        string query = "select  BookingId  from RoomBooking";
        dt = Database.GetData(query);
        foreach (DataRow row in dt.Rows)
        {
            String A = row["BookingId"].ToString();
            // array = new int[5];
            array[i] = Convert.ToInt32(A);
            i++;
        }
        int maxValue = array.Max();
        //int maxIndex = anArray.ToList().IndexOf(maxValue);
        return (maxValue + 1);
    }
    private void DeductAvailable(int x, int y)
    {
       
        try
        {
            SqlConnection connection = new SqlConnection(Database.connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("UpdateRoomAvailable", connection);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@typeid", x);
            cmd.Parameters.Add("@hotId", 1);
            cmd.Parameters.Add("@avb", y);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}