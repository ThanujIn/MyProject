using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class chat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetName();
    }

    private void GetName()
    {
        DataTable dt = new DataTable();
        string query = "select * from Tourist where TouristId='" + Session["CurrentProfileId"] + "'";
        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            Session["CurrentName"] = dt.Rows[0]["UserName"].ToString();
//            Label1.Text = dt.Rows[0]["UserName"].ToString();
            Label1.Text = Session["CurrentName"].ToString();




        }
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["CurrentName"] = Session["Name"];
        Response.Redirect("MainProfile.aspx");
    }
}



