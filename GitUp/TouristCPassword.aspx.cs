using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class TouristCPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(TextBox1.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Enter Old Password First');</script>");
        }

        else
        {
            DataTable dt = new DataTable();
            string query = "Select * from Tourist where TouristId='" + Session["UserId"] + "'";
                dt = Database.GetData(query);
            if (dt.Rows.Count > 0 && dt != null)
            {
                if (TextBox1.Text == dt.Rows[0]["Password"].ToString())
                {
                    try
                    {

                        SqlConnection connection = new SqlConnection(Database.connString);
                        connection.Open();
                        SqlCommand cmd = new SqlCommand("Update Tourist Set Password=@Pwd Where TouristId='" + Session["CurrentProfileId"] + "' ", connection);
                      cmd.Parameters.AddWithValue("@Pwd", TextBox2.Text);
                     

                        cmd.ExecuteNonQuery();
                        connection.Close();

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Password changed');</script>");


                    }
                    catch (Exception ex)
                    {

                        Response.Write(ex.Message);
                    }
                }

                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Old Password Must match');</script>");
                }
            }
            


        }

                        
              
         
        }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AboutMe1.aspx");
        
    }
}
