using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CabService
{
    public partial class CabServiceForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCabDetails();
            LoadPreference();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cars.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }


        private void LoadCabDetails()
        {
            DataTable dt = new DataTable();
            string query = "select  *  from CabDetails where CabId=2";

            dt = Database.GetData(query);

            if (dt.Rows.Count > 0)
            {
                Label2.Text = dt.Rows[0]["UserName"].ToString();
                Label3.Text = dt.Rows[0]["ContactNo"].ToString();
                //Label4.Text = dt.Rows[0]["Preference"].ToString();
                //Image1.ImageUrl  = 
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(Database.connString))
                {
                    String query = "INSERT INTO CabBooking (BookingId,Date,NoOfDays,BeginigLocation,TouristId,Time,Status,UserName,CabId) VALUES (@bid,@day,@days,@Bloc,@Tid,@Time,@Status,@Tname,@cid)";
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@bid", CalculateBID());
                            command.Parameters.AddWithValue("@day", TextBox6.Text);
                            command.Parameters.AddWithValue("@days", TextBox2.Text);
                            command.Parameters.AddWithValue("@Bloc", TextBox1.Text);
                        command.Parameters.AddWithValue("@cid", 2);
                        command.Parameters.AddWithValue("@Tid", TextBox2.Text);
                            command.Parameters.AddWithValue("@Time", TextBox5.Text);
                            command.Parameters.AddWithValue("@Status", 0);
                        command.Parameters.AddWithValue("@Tname", GetName());

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
        private void LoadPreference()
        {
            DataTable dt = new DataTable();
            string query = "select  *  from CabDetails where CabId= 2";

            dt = Database.GetData(query);
            foreach (DataRow row in dt.Rows)
            {
                String a = row["Preference"].ToString();
                int x = Convert.ToInt32(a);
                if (x == 1)
                {
                    TextBox1.Visible = true;
                    TextBox2.Visible = true;
                    TextBox3.Visible = true;
                    TextBox5.Visible = true;
                    TextBox6.Visible = true;
                    Label5.Visible = true;
                    Label6.Visible = true;
                    Label7.Visible = true;
                    Label8.Visible = true;
                    Label9.Visible = true;
                    Button2.Visible = true;
                    Label4.Text = "Yes Im Available";
                }
                else
                {
                    TextBox1.Visible = false;
                    TextBox2.Visible = false;
                    TextBox3.Visible = false;
                    TextBox5.Visible = false;
                    TextBox6.Visible = false;
                    Label5.Visible = false;
                    Label6.Visible = false;
                    Label7.Visible = false;
                    Label8.Visible = false;
                    Label9.Visible = false;
                    Button2.Visible = false;
                    Label4.Text = "No Im not Available";
                }
            }
        }
        private int CalculateBID()
        {
            int i = 0;
            int[] array = new int[1000];
            DataTable dt = new DataTable();
            string query = "select  BookingId  from CabBooking";
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
        private string GetName()
        {
            string A = "";
            DataTable dt = new DataTable();
            string query = "select  UserName  from Tourist where TouristId = 1";
            dt = Database.GetData(query);
            foreach (DataRow row in dt.Rows)
            {
                A = row["UserName"].ToString();
            }
            return A;
        }
    }
    
}