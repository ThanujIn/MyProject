using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CabPC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        string query = "Select * from CabDetails where CabId='" +Session["CurrentProfileId"]+ "' and Password='" + txtOP.Text + "'";
        dt = Database.GetData(query);
        if (dt.Rows.Count > 0 && dt != null)
        {
            UpdatePassword();
        }

        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Password Entered Please check Again');</script>");
        }
    }

    private void UpdatePassword()
    {
        try
        {
            SqlConnection connection = new SqlConnection(Database.connString);
            connection.Open();
            SqlCommand cmd = new SqlCommand("ChangePW", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@newp", txtNP.Text);
            cmd.Parameters.Add("@cabid", Session["CurrentProfileId"]);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CabAdmin.aspx");
    }
}