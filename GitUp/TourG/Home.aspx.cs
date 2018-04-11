using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contact.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AboutMe.aspx");
    }

    private void LoadData()
    {

       /* string cs = ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("spGetImageById", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter paramId = new SqlParameter();
            cmd.Parameters.Add("@Id",4);
            cmd.Parameters.Add(paramId);

            con.Open();
            byte[] bytes = (byte[])cmd.ExecuteScalar();
            string strBase64 = Convert.ToBase64String(bytes);
            Image1.ImageUrl = "data:Image/png;base64," + strBase64;
        }
        */

        DataTable dt = new DataTable();
        string query = "select  *  from TourGuide where GuideId=4";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0]["UserName"].ToString();
            Label2.Text = dt.Rows[0]["Gender"].ToString();
            Label3.Text = dt.Rows[0]["Nationality"].ToString();
            Label4.Text = dt.Rows[0]["Discription"].ToString();

            //Label3.Text = dt.Rows[0]["Discription"].ToString();
        }
    }
}