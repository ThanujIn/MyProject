using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Registration : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }

  
    private void clearControls()
    {
        txturname.Text = string.Empty;
        txtemail.Text = string.Empty;

       // txtCountry.Text = string.Empty;
        role.SelectedIndex = 0;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("Login.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }


    protected void btnRegister_Click1(object sender, EventArgs e)
    {
        byte[] profilePicBytes = null;
        if (FileUpload1.HasFile)
        {
            //getting length of uploaded file
            int length = FileUpload1.PostedFile.ContentLength;
            //create a byte array to store the binary image data
            profilePicBytes = new byte[length];
            //store the currently selected file in memeory
            HttpPostedFile img = FileUpload1.PostedFile;
            //set the binary data
            img.InputStream.Read(profilePicBytes, 0, length);
        }


        string Role = role.SelectedValue;
        if (Role == "Tourist")
        {

           


            DataTable dt = new DataTable();
            string query = "Select * from Tourist where Email='" + txtemail.Text + "'";
            dt = Database.GetData(query);
            if (dt.Rows.Count == 0 && dt != null)
            {
                if (txtpasswd.Text == txtcops.Text && profilePicBytes != null)
                {
                    try
                    {

                        SqlConnection connection = new SqlConnection(Database.connString);
                        connection.Open();
                        SqlCommand cmd = new SqlCommand("Insert into Tourist (UserName,Email,Password,Picture,Contact) VALUES (@Name,@Email,@Pwd,@ProfilePic,@con)", connection);
                        cmd.Parameters.Add("@ProfilePic", SqlDbType.Image).Value = profilePicBytes;
                        cmd.Parameters.Add("@Name", SqlDbType.VarChar, 50).Value = txturname.Text;
                        cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = txtemail.Text;
                        cmd.Parameters.Add("@Pwd", SqlDbType.VarChar, 50).Value = txtpasswd.Text;
                        // cmd.Parameters.Add("@Country", SqlDbType.VarChar, 30).Value = txtCountry.Text;
                        cmd.Parameters.Add("@con", SqlDbType.VarChar, 50).Value = "0000000000";

                        cmd.ExecuteNonQuery();
                        connection.Close();

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Registered Successfully Please Login');</script>");
                        clearControls();


                    }
                    catch (Exception ex)
                    {

                        Response.Write(ex.Message);
                    }
                }
                else
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Confirm Password Required');</script>");

            }
            else
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Email already exists');</script>");

        }
        else if (Role == "Hotel Manager")
        {

            

            DataTable dt = new DataTable();
            string query = "Select * from Tourist where Email='" + txtemail.Text + "'";
            dt = Database.GetData(query);
            if (dt.Rows.Count == 0 && dt != null)
            {
                if (txtpasswd.Text == txtcops.Text && profilePicBytes != null)
                {
                    try
                    {


                        SqlConnection connection = new SqlConnection(Database.connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("Insert into Hotel (UserName,Email,Password,Rank,Discription,Latitude,Longtitude,Contact,Picture) VALUES (@Name,@Email,@Pwd,@rank,@discrip,@lat,@lng,@con,@ProfilePic)", connection);
            cmd.Parameters.Add("@ProfilePic", SqlDbType.Image).Value = profilePicBytes;
            cmd.Parameters.Add("@Name", SqlDbType.VarChar, 50).Value = txturname.Text;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = txtemail.Text;
            cmd.Parameters.Add("@Pwd", SqlDbType.VarChar, 50).Value = txtpasswd.Text;
            cmd.Parameters.Add("@rank", SqlDbType.VarChar, 50).Value = 0;
            cmd.Parameters.Add("@discrip", SqlDbType.VarChar, 50).Value = txturname.Text;
            cmd.Parameters.Add("@lat", SqlDbType.VarChar, 50).Value = "1.11";
            cmd.Parameters.Add("@lng", SqlDbType.VarChar, 50).Value = "1.11";
            cmd.Parameters.Add("@con", SqlDbType.VarChar, 50).Value = "0000000000";

            cmd.ExecuteNonQuery();
            connection.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Registered Successfully Please Login');</script>");
            clearControls();

                    }
                    catch (Exception ex)
                    {

                        Response.Write(ex.Message);
                    }
                }
                else
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Confirm Password Required');</script>");

            }
            else
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Email already exists');</script>");

        }



        else if (Role == "Tour Guide")
        {

            


            DataTable dt = new DataTable();
            string query = "Select * from Tourist where Email='" + txtemail.Text + "'";
            dt = Database.GetData(query);
            if (dt.Rows.Count == 0 && dt != null)
            {
                if (txtpasswd.Text == txtcops.Text && profilePicBytes != null)
                {
                    try
                    {

                        SqlConnection connection = new SqlConnection(Database.connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("Insert into TourGuide (UserName,Email,Password,Rank,Discription,Gender,Nationality,ChargePerDay,Status,Picture) VALUES (@Name,@Email,@Pwd,@rank,@discrip,@gender,@national,@charge,@status,@ProfilePic)", connection);
           cmd.Parameters.Add("@ProfilePic", SqlDbType.Image).Value = profilePicBytes;
           cmd.Parameters.Add("@Name", SqlDbType.VarChar, 50).Value = txturname.Text;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = txtemail.Text;
            cmd.Parameters.Add("@Pwd", SqlDbType.VarChar, 50).Value = txtpasswd.Text;
            cmd.Parameters.Add("@rank", SqlDbType.VarChar, 50).Value = 0;
            cmd.Parameters.Add("@discrip", SqlDbType.VarChar, 50).Value = txturname.Text;
            cmd.Parameters.Add("@gender", SqlDbType.VarChar, 50).Value = "gender";
            cmd.Parameters.Add("@national", SqlDbType.VarChar, 50).Value = "SRI LANKA";
            cmd.Parameters.Add("@charge", SqlDbType.VarChar, 50).Value = "100";
            cmd.Parameters.Add("@status", SqlDbType.VarChar, 50).Value = "5";


            cmd.ExecuteNonQuery();
            connection.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Registered Successfully Please Login');</script>");
            clearControls();
                    }
                    catch (Exception ex)
                    {

                        Response.Write(ex.Message);
                    }
                }
                else
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Confirm Password Required');</script>");

            }
            else
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Email already exists');</script>");

        }


        else if (Role == "Cab Service")
        {
            

            DataTable dt = new DataTable();
            string query = "Select * from Tourist where Email='" + txtemail.Text + "'";
            dt = Database.GetData(query);
            if (dt.Rows.Count == 0 && dt != null)
            {
                if (txtpasswd.Text == txtcops.Text && profilePicBytes != null)
                {
                    try
                    {


                        SqlConnection connection = new SqlConnection(Database.connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("Insert into CabDetails (UserName,Email,Password,Discription,CurrentLocation,ContactNo,Picture) VALUES (@Name,@Email,@Pwd,@disc,@CurrentLoc,@contact,@ProfilePic)", connection);
                        cmd.Parameters.Add("@ProfilePic", SqlDbType.Image).Value = profilePicBytes;
                        cmd.Parameters.Add("@Name", SqlDbType.VarChar, 50).Value = txturname.Text;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = txtemail.Text;
            cmd.Parameters.Add("@Pwd", SqlDbType.VarChar, 50).Value = txtpasswd.Text;
            cmd.Parameters.Add("@disc", SqlDbType.VarChar, 50).Value = txturname.Text;
            cmd.Parameters.Add("@CurrentLoc", SqlDbType.VarChar, 50).Value = "ADDRESS";
            cmd.Parameters.Add("@contact", SqlDbType.VarChar, 50).Value = "0000000000";



            cmd.ExecuteNonQuery();
            connection.Close();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Registered Successfully Please Login');</script>");
            clearControls();

                    }
                    catch (Exception ex)
                    {

                        Response.Write(ex.Message);
                    }
                }
                else
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Confirm Password Required');</script>");

            }
            else
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Email already exists');</script>");

        }
    }
}
