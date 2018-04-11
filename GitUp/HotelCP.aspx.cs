using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HotelCP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void ChangePassword()
    {
        try
        {
            SqlConnection connection = new SqlConnection(Database.connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("ChangePassW", connection);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@Pass", txtNP.Text);
            cmd.Parameters.Add("@hotId", Session["CurrentProfileId"]);

            cmd.ExecuteNonQuery();
            connection.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        string query = "Select * from Hotel where HotelId='" + Session["CurrentProfileId"] + "' and Password='" + txtOP.Text + "'";
        dt = Database.GetData(query);
        if (dt.Rows.Count > 0 && dt != null)
        {
            ChangePassword();
        }

        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Password Entered Please check Again');</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelAdmin.aspx");
    }
}