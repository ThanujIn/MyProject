using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
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
    private void LoadData()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from TourGuide where GuideId=4";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            Label2.Text = dt.Rows[0]["Email"].ToString();
            Label1.Text = dt.Rows[0]["UserName"].ToString();
            //Label3.Text = dt.Rows[0]["Discription"].ToString();
        }
    }
}