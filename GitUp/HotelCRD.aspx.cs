using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HotelCRD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetRoomType1();
            GetRoomType2();
            GetRoomType3();
        }
    }
    private void GetRoomType1()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from RoomDetails where HotelId='" + Session["CurrentProfileId"] + "' AND TypeID=1 ";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0]["Persons"].ToString();
            TextBox2.Text = dt.Rows[0]["RoomCharge"].ToString();
            TextBox3.Text = dt.Rows[0]["Availability"].ToString();
        }

    }

    private void GetRoomType2()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from RoomDetails where HotelId='" + Session["CurrentProfileId"] + "' AND TypeID=2 ";
        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            TextBox4.Text = dt.Rows[0]["Persons"].ToString();
            TextBox5.Text = dt.Rows[0]["RoomCharge"].ToString();
            TextBox6.Text = dt.Rows[0]["Availability"].ToString();
        }

    }
    private void GetRoomType3()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from RoomDetails where HotelId='" + Session["CurrentProfileId"] + "' AND TypeID=3 ";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            TextBox7.Text = dt.Rows[0]["Persons"].ToString();
            TextBox8.Text = dt.Rows[0]["RoomCharge"].ToString();
            TextBox9.Text = dt.Rows[0]["Availability"].ToString();

        }

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        try
        {

            if (CheckBox1.Checked)
            {
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
            }
            else
            {
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
            }
        }
        catch (Exception ex)
        {

            Response.Write(ex.Message);
        }
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        try
        {

            if (CheckBox2.Checked)
            {
                TextBox4.Visible = true;
                TextBox5.Visible = true;
                TextBox6.Visible = true;
            }
            else
            {
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                TextBox6.Visible = false;
            }
        }
        catch (Exception ex)
        {

            Response.Write(ex.Message);
        }
    }

    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        try
        {

            if (CheckBox1.Checked)
            {
                TextBox7.Visible = true;
                TextBox8.Visible = true;
                TextBox9.Visible = true;
            }
            else
            {
                TextBox7.Visible = false;
                TextBox8.Visible = false;
                TextBox9.Visible = false;
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }

    private void UpdateRoomType1()
    {
        try
        {
            SqlConnection connection = new SqlConnection(Database.connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("Update [RoomDetails] Set RoomCharge=@RC,Availability=@Avb,Persons=@psn Where HotelId='" + Session["CurrentProfileId"] + "' AND TypeId=1 ", connection);
            cmd.Parameters.AddWithValue("@Rc", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Avb", TextBox3.Text);
            cmd.Parameters.AddWithValue("@psn", TextBox1.Text);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    private void UpdateRoomType2()
    {
        try
        {
            SqlConnection connection = new SqlConnection(Database.connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("Update [RoomDetails] Set RoomCharge=@RC,Availability=@Avb,Persons=@psn Where HotelId='" + Session["CurrentProfileId"] + "' AND TypeId=2 ", connection);

            cmd.Parameters.AddWithValue("@Rc", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Avb", TextBox6.Text);
            cmd.Parameters.AddWithValue("@psn", TextBox4.Text);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        catch (Exception ex)
        {

            Response.Write(ex.Message);
        }
    }

    private void UpdateRoomType3()
    {
        try
        {

            SqlConnection connection = new SqlConnection(Database.connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("Update [RoomDetails] Set RoomCharge=@RC,Availability=@Avb,Persons=@psn Where HotelId='" + Session["CurrentProfileId"] + "' AND TypeId=3 ", connection);
            cmd.Parameters.AddWithValue("@Rc", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Avb", TextBox9.Text);
            cmd.Parameters.AddWithValue("@psn", TextBox7.Text);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    private void insertRoomDetails1()
    {
        try
        {
            using (SqlConnection connection = new SqlConnection(Database.connString))
            {
                String query = "INSERT INTO dbo.RoomDetails (HotelId,TypeId,RoomCharge,Availability,Persons) VALUES (@hid,@tid,@chrg, @avail,@per)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@hid", Session["CurrentProfileId"]);
                    command.Parameters.AddWithValue("@tid", 1);
                    command.Parameters.AddWithValue("@chrg", TextBox2.Text);
                    command.Parameters.AddWithValue("@avail", TextBox3.Text);
                    command.Parameters.AddWithValue("@per", TextBox1.Text);

                    connection.Open();
                    command.ExecuteNonQuery();

                    // Check Error

                }
            }

        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    private void insertRoomDetails2()
    {
        try
        {
            using (SqlConnection connection = new SqlConnection(Database.connString))
            {
                String query = "INSERT INTO dbo.RoomDetails (HotelId,TypeId,RoomCharge,Availability,Persons) VALUES (@hid,@tid,@chrg, @avail,@per)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@hid", Session["CurrentProfileId"]);
                    command.Parameters.AddWithValue("@tid", 2);
                    command.Parameters.AddWithValue("@chrg", TextBox5.Text);
                    command.Parameters.AddWithValue("@avail", TextBox6.Text);
                    command.Parameters.AddWithValue("@per", TextBox4.Text);

                    connection.Open();
                    command.ExecuteNonQuery();

                    // Check Error

                }
            }

        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    private void insertRoomDetails3()
    {
        try
        {
            using (SqlConnection connection = new SqlConnection(Database.connString))
            {
                String query = "INSERT INTO dbo.RoomDetails (HotelId,TypeId,RoomCharge,Availability,Persons) VALUES (@hid,@tid,@chrg, @avail,@per)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@hid", Session["CurrentProfileId"]);
                    command.Parameters.AddWithValue("@tid", 3);
                    command.Parameters.AddWithValue("@chrg", TextBox8.Text);
                    command.Parameters.AddWithValue("@avail", TextBox9.Text);
                    command.Parameters.AddWithValue("@per", TextBox7.Text);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        int x = 0;
        int[] arr = new int[5];
        if (CheckBox1.Checked)
        {
            arr[x] = 1;
            x++;
        }
        if (CheckBox2.Checked)
        {
            arr[x] = 2;
            x++;
        }
        if (CheckBox3.Checked)
        {
            arr[x] = 3;
            x++;
        }


        foreach (var typeId in arr)
        {
            DataTable ds = new DataTable();
            using (SqlConnection connection = new SqlConnection(Database.connString))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("JTable", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TId", typeId);
                cmd.Parameters.AddWithValue("@HId", Session["CurrentProfileId"]);
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(ds);
                int rowcount = ds.Rows.Count;
                connection.Close();

                if (typeId == 1)
                {
                    if (rowcount > 0)
                    { UpdateRoomType1(); }
                    else
                    {
                        insertRoomDetails1();
                    }
                }
                if (typeId == 2)
                {
                    if (rowcount > 0)
                    { UpdateRoomType2(); }
                    else { insertRoomDetails2(); }
                }
                if (typeId == 3)
                {
                    if (rowcount > 0)
                    {
                        UpdateRoomType3();
                    }

                    else { insertRoomDetails3(); }
                }
            }
        }
    }

    protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
        }
        else
        {
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;

        }

    }

    protected void CheckBox2_CheckedChanged1(object sender, EventArgs e)
    {
        if (CheckBox2.Checked)
        {
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            TextBox6.Visible = true;
        }
        else
        {
            TextBox4.Visible = false;
            TextBox5.Visible = false;
            TextBox6.Visible = false;

        }
    }

    protected void CheckBox3_CheckedChanged1(object sender, EventArgs e)
    {
        if (CheckBox3.Checked)
        {
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
        }
        else
        {
            TextBox7.Visible = false;
            TextBox8.Visible = false;
            TextBox9.Visible = false;

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelAdmin.aspx");
    }
}