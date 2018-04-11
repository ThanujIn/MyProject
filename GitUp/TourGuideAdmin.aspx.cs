using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetTourGuideDetails();
            
        }
    }


    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        txtName.ReadOnly = false;
        //txtContact.ReadOnly = false;
        txtEmail.ReadOnly = false;

    }

    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect ( "Requests.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection(Database.connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("uspUpGuideDetail", connection);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@uName", txtName.Text); 
            cmd.Parameters.Add("@mail", txtEmail.Text);
            cmd.Parameters.Add("@disc", TextBox1.Text);
            cmd.Parameters.Add("@guideid", Session["CurrentProfileId"]);
            cmd.Parameters.Add("@pref", TextBox2.Text);
            cmd.Parameters.Add("@gender", TextBox5.Text);
            cmd.Parameters.Add("@nation", TextBox4.Text);
            cmd.Parameters.Add("@charge", TextBox3.Text);

            cmd.ExecuteNonQuery();
            connection.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
    private void GetTourGuideDetails()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from TourGuide where GuideId='" + Session["CurrentProfileId"] + "'";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            txtName.Text = dt.Rows[0]["UserName"].ToString();
            txtEmail.Text = dt.Rows[0]["Email"].ToString();
            TextBox4.Text = dt.Rows[0]["Nationality"].ToString();
            TextBox1.Text = dt.Rows[0]["Discription"].ToString();
            TextBox2.Text = dt.Rows[0]["Preference"].ToString();
            TextBox5.Text = dt.Rows[0]["Gender"].ToString();
            TextBox3.Text = dt.Rows[0]["ChargePerDay"].ToString();

        }
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
        Session.Abandon();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("TourGPC.aspx");
    }
}

