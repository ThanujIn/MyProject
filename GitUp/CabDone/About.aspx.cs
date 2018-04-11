using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CabService
{
    public partial class Index2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindrepeater();
                LoadDetails();
            }
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["TouristManagerConnectionString2"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into [CabComment](CabComment,UserName,CommentId,CabId) values(@comment,@name,@comid,@cid)";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@name", nametxt.Text);
            cmd.Parameters.AddWithValue("@comment", comtxt.Text);
            cmd.Parameters.AddWithValue("@comid", CalculateComId());
            cmd.Parameters.AddWithValue("@cid",2);
            cmd.ExecuteNonQuery();
        }
        private void bindrepeater()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["UserConnectionString"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from [CabComment]";
            cmd.Connection = con;
            //cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
            con.Close();
        }

        protected void nametxt_TextChanged(object sender, EventArgs e)
        {
            if (((TextBox)sender).Text == "")
            {
                ((TextBox)sender).Text = "Anonymous";
            }
        }
        private void LoadDetails()
        {
            DataTable dt = new DataTable();
            string query = "select  *  from CabDetails where CabId=2";

            dt = Database.GetData(query);

            if (dt.Rows.Count > 0)
            {
                Label6.Text = dt.Rows[0]["Discription"].ToString();
                //Label3.Text = dt.Rows[0]["ContactNo"].ToString();
                //Label4.Text = dt.Rows[0]["Preference"].ToString();
            }
        }
        private int CalculateComId()
        {
            int i = 0;
            int[] array = new int[1000];
            DataTable dt = new DataTable();
            string query = "select  CommentId  from CabComment where CabId=2";
            dt = Database.GetData(query);
            foreach (DataRow row in dt.Rows)
            {
                String A = row["CommentId"].ToString();
               // array = new int[5];
                array[i] = Convert.ToInt32(A);
                i++;
            }
            int maxValue = array.Max();
            //int maxIndex = anArray.ToList().IndexOf(maxValue);
            return (maxValue+1);
        }
    }
}