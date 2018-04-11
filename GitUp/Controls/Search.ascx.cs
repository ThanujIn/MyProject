using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Controls_Search : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetSearchResults();
    }

    private void GetSearchResults()
    {
        try {
            DataTable dt = new DataTable();
            string query = "Select * FROM [Tourist] where UserName like '" + Session["SearchText"].ToString() + "%'";
            dt = Database.GetData(query);
            if (dt.Rows.Count > 0)
            {

                SearchList.Visible = true;
                SearchList.DataSource = dt;
                SearchList.DataBind();
            }
            else
            {

            } }
        catch
        {

        }
    }

    protected void imgbtnPic_Click(object sender, ImageClickEventArgs e)
    {
        Session["CurrentProfileId"] = (((ImageButton)sender).CommandArgument).ToString();
        Response.Redirect("MainProfile.aspx");
    }
}
