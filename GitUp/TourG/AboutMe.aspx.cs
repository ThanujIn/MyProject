using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//using System.Collections.Specialized;


public partial class AboutMe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindrepeater();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["UserConnectionString"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into [TourGuideComment](GuideComment,UserName,GuideId) values(@comment,@name,@guideid)";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@name", nametxt.Text);
        cmd.Parameters.AddWithValue("@comment", comtxt.Text);
        cmd.Parameters.AddWithValue("@guideid", 4);
        cmd.ExecuteNonQuery();
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contact.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AboutMe.aspx");
    }

    public void bindrepeater()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["UserConnectionString"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from [HotelComment]";
        cmd.Connection = con;
        //cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
        con.Close();
    }
}