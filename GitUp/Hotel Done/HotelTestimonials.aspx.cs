using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Testimonials : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindrepeater();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelHome.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelServices.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelTestimonials.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("HotelBooking.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["UserConnectionString2"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into [HotelComment](HotelComment,UserName,HotelId) values(@comment,@name,@hotid)";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@name", nametxt.Text);
        cmd.Parameters.AddWithValue("@comment", comtxt.Text);
        cmd.Parameters.AddWithValue("@hotid", 1);
        cmd.ExecuteNonQuery();
    }

    protected void nametxt_TextChanged(object sender, EventArgs e)
    {
        if (((TextBox)sender).Text == "")
        {
            ((TextBox)sender).Text = "Anonymous";
        }
    }

    public void bindrepeater()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["UserConnectionString2"].ToString();
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