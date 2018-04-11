using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CabService
{
    public partial class Index5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDetails();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cars.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }
        private void LoadDetails()
        {
            DataTable dt = new DataTable();
            string query = "select  *  from CabDetails where CabId=2";

            dt = Database.GetData(query);

            if (dt.Rows.Count > 0)
            {
                Label1.Text = dt.Rows[0]["UserName"].ToString();
                Label2.Text = dt.Rows[0]["ContactNo"].ToString();
                Label3.Text = dt.Rows[0]["ContactNo"].ToString();
                Label4.Text = dt.Rows[0]["Email"].ToString();
            }
        }
    }
}