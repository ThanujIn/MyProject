using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetCabDetails();
            
        }
    }


    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        txtName.ReadOnly = false;
        txtContact.ReadOnly = false;
        txtEmail.ReadOnly = false;
    }

    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {
       
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect ( "Requests.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
            try
            {
                SqlConnection connection = new SqlConnection(Database.connString);
                connection.Open();
                SqlCommand cmd = new SqlCommand("uspUpCabDetaill", connection);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uName", txtName.Text);
                cmd.Parameters.Add("@mail", txtEmail.Text);
               // cmd.Parameters.Add("@pw", txtNP.Text);
               // cmd.Parameters.Add("@contact", txtContact.Text);
                cmd.Parameters.Add("@disc", TextBox1.Text);
                cmd.Parameters.Add("@cabid", Session["CurrentProfileId"]);
                cmd.Parameters.Add("@pre", TextBox2.Text);

                cmd.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
       
    }
    private void GetCabDetails()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from CabDetails where CabId='" + Session["CurrentProfileId"] + "'";

        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            txtName.Text = dt.Rows[0]["UserName"].ToString();
            txtEmail.Text = dt.Rows[0]["Email"].ToString();
            txtContact.Text = dt.Rows[0]["ContactNo"].ToString();
            TextBox1.Text = dt.Rows[0]["Discription"].ToString();
            TextBox2.Text = dt.Rows[0]["Preference"].ToString();
        }
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("CabPC.aspx");
    }
}

