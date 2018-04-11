using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;




public partial class AboutMe1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetAboutMe();
        }
        if (Object.Equals(Session["UserId"].ToString(), Session["CurrentProfileId"].ToString()))
        {
            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
           edit.Visible = true;
            FileUpload1.Visible = true;
            profilepic.Visible = true;
            //  TextBox4.Visible = true;

        }

    }

    private void GetAboutMe()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from Tourist where TouristId='" + Session["CurrentProfileId"] + "'";
        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0]["UserName"].ToString();
            TextBox2.Text = dt.Rows[0]["Email"].ToString();
          Label1.Text = dt.Rows[0]["Gender"].ToString();
            Label2.Text = dt.Rows[0]["Nationality"].ToString();
            TextBox3.Text = dt.Rows[0]["Discription"].ToString();




        }
    }


    protected void Button1_Click(object sender, EventArgs e)
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

            try
            {

                SqlConnection connection = new SqlConnection(Database.connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand("Update Tourist Set Picture=@ProfilePic,UserName=@Name,Email=@Email,Gender=@Gender,Nationality=@Country,Discription=@AboutMe Where TouristId='" + Session["CurrentProfileId"] + "' ", connection);
                cmd.Parameters.AddWithValue("@ProfilePic", SqlDbType.Image).Value = profilePicBytes;
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Gender", gender.SelectedValue);
                //cmd.Parameters.AddWithValue("@Pwd", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Country", country.SelectedValue);
                cmd.Parameters.AddWithValue("@AboutMe", TextBox3.Text);
               


                cmd.ExecuteNonQuery();
                connection.Close();

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('successfull');</script>");


            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
        }

        else
        {
            try
            {

                SqlConnection connection = new SqlConnection(Database.connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand("Update Tourist Set UserName=@Name,Email=@Email,Gender=@Gender,Nationality=@Country,Discription=@AboutMe Where TouristId='" + Session["CurrentProfileId"] + "' ", connection);
                //cmd.Parameters.AddWithValue("@ProfilePic", SqlDbType.Image).Value = profilePicBytes;
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Gender", gender.SelectedValue);

                cmd.Parameters.AddWithValue("@Country", country.SelectedValue);
                cmd.Parameters.AddWithValue("@AboutMe", TextBox3.Text);


                cmd.ExecuteNonQuery();
                connection.Close();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Successfully Updated');</script>");



            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.ReadOnly = false;
        TextBox2.ReadOnly = false;
        TextBox3.ReadOnly = false;
        //TextBox4.ReadOnly = false;
        gender.Visible = true;
        country.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
     //   ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft=(screen.wdth/2)-(760/2);var Mtop=(screen.height/2)-(700/2);window.open('TouristCPassword.aspx',null,'height=700,width=760,status=yes,toolbar=no,scrollbars=yes,resizable=no menubar=no,location=no,top=\'+Mtop+\',left=\'+Mleft+\'');", true);
      Response.Redirect("TouristCPassword.aspx");
    }
}