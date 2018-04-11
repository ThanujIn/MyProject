using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class touristchat : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["CurrentProfileId"] = (((Button)sender).CommandArgument).ToString();

       /* DataTable dt = new DataTable();
        string query = "Select * from Tourist where TouristId='" + Session["CurrentProfileId"] + "'";
        dt = Database.GetData(query);
        if (dt.Rows.Count > 0 && dt != null)
        {
            Session["CurrentName"] = dt.Rows[0]["UserName"];

            Label1.Text = Session["CurrentName"].ToString();

        }*/

    }
}