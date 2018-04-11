using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Text;
using System.Configuration;
using System.Globalization;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            GetHotelDetails();
        }
    }

    private void GetHotelDetails()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from Hotel where HotelId='" + Session["CurrentProfileId"] + "'";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            txtName.Text = dt.Rows[0]["UserName"].ToString();
            txtEmail.Text = dt.Rows[0]["Email"].ToString();
            txtContact.Text = dt.Rows[0]["Contact"].ToString();
            TextBox1.Text = dt.Rows[0]["Discription"].ToString();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        txtName.ReadOnly = false;
        txtContact.ReadOnly = false;
        txtEmail.ReadOnly = false;
        txtLocation.ReadOnly = false;
        /*TextBox7.ReadOnly = false;
        TextBox8.ReadOnly = false;
        TextBox9.ReadOnly = false;
        TextBox10.ReadOnly = false;
        TextBox11.ReadOnly = false;
        TextBox12.ReadOnly = false;
        TextBox14.ReadOnly = false;
        TextBox15.ReadOnly = false;
        TextBox16.ReadOnly = false;*/
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        UpdateNoPassword();
        // FindCoordinates();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
        Session.RemoveAll();
    }

    protected void UpdateNoPassword()
    {

        string url = "http://maps.google.com/maps/api/geocode/xml?address=" + txtLocation.Text + "&sensor=false";
        WebRequest request = WebRequest.Create(url);
        using (WebResponse response = (HttpWebResponse)request.GetResponse())
        {
            using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
            {
                DataSet dsResult = new DataSet();
                dsResult.ReadXml(reader);
                DataTable dtCoordinates = new DataTable();
                dtCoordinates.Columns.AddRange(new DataColumn[4] { new DataColumn("Id", typeof(int)),
                        new DataColumn("Address", typeof(string)),
                        new DataColumn("Latitude",typeof(string)),
                        new DataColumn("Longitude",typeof(string)) });
                string result = "0";
                foreach (DataRow row in dsResult.Tables["result"].Rows)
                {
                    string geometry_id = dsResult.Tables["geometry"].Select("result_id = " + row["result_id"].ToString())[0]["geometry_id"].ToString();
                    DataRow location = dsResult.Tables["location"].Select("geometry_id = " + geometry_id)[0];
                    dtCoordinates.Rows.Add(row["result_id"], row["formatted_address"], location["lat"], location["lng"]);


                    try
                    {
                        SqlConnection connection = new SqlConnection(Database.connString);
                        connection.Open();
                        SqlCommand cmd = new SqlCommand("uspUpHotelDetailNPWLL", connection);
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@uName", txtName.Text);
                        cmd.Parameters.Add("@contact", txtContact.Text);
                        cmd.Parameters.Add("@mail", txtEmail.Text);
                        cmd.Parameters.Add("@disc", TextBox1.Text);
                        cmd.Parameters.Add("@hotid", Session["CurrentProfileId"]);
                        cmd.Parameters.Add("@lat", location["lat"]);
                        cmd.Parameters.Add("@lng", location["lng"]);

                        cmd.ExecuteNonQuery();
                        connection.Close();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
               // GridView1.DataSource = dtCoordinates;
                //GridView1.DataBind();
            }
        }
    }







    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelCRD.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelCP.aspx");
    }

}
