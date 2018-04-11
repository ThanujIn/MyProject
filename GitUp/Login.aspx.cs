using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
       

            string Role = DropDownList1.SelectedValue;

            if (DropDownList1.SelectedIndex == 1)
            {
                DataTable dt = new DataTable();
                string query = "Select * from Tourist where Email='" + txtLoginEmail.Text + "' and Password='" + txtLoginPassword.Text + "'";
                dt = Database.GetData(query);
                if (dt.Rows.Count > 0 && dt != null)
                {
                    Session["UserId"] = dt.Rows[0]["TouristId"];
                    Session["CurrentProfileId"] = Session["UserId"];
                    Session["Name"] = dt.Rows[0]["UserName"];
                    //Session["CurrentName"] = Session["Name"];
                    string MyID = Session["UserId"].ToString();
                    Response.Redirect("MainProfile.aspx");
                   

                }

                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Password or Username');</script>");
                }


            }

            else if (DropDownList1.SelectedIndex == 2)
            {
                DataTable dt = new DataTable();
                string query = "Select * from Hotel where Email='" + txtLoginEmail.Text + "' and Password='" + txtLoginPassword.Text + "'";
                dt = Database.GetData(query);
                if (dt.Rows.Count > 0 && dt != null)
                {
                    Session["UserId"] = dt.Rows[0]["HotelId"];
                    Session["CurrentProfileId"] = Session["UserId"];
                    Session["Name"] = dt.Rows[0]["UserName"];
                    string MyID = Session["UserId"].ToString();
                    // Response.Redirect("HotelAdmin.aspx");
                    Response.Redirect("HotelAdmin.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Password or Username');</script>");
                }
            }

            else if (DropDownList1.SelectedIndex == 3)
            {
                DataTable dt = new DataTable();
                string query = "Select * from TourGuide where Email='" + txtLoginEmail.Text + "' and Password='" + txtLoginPassword.Text + "'";
                dt = Database.GetData(query);
                if (dt.Rows.Count > 0 && dt != null)
                {
                    Session["UserId"] = dt.Rows[0]["GuideId"];
                    Session["CurrentProfileId"] = Session["UserId"];
                    Session["Name"] = dt.Rows[0]["UserName"];
                    string MyID = Session["UserId"].ToString();
                     Response.Redirect("TourGuideRequests.aspx");
                    

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Password or Username');</script>");
                }
            }

            else if (DropDownList1.SelectedIndex == 4)
            {
                DataTable dt = new DataTable();
                string query = "Select * from CabDetails where Email='" + txtLoginEmail.Text + "' and Password='" + txtLoginPassword.Text + "'";
                dt = Database.GetData(query);
                if (dt.Rows.Count > 0 && dt != null)
                {
                    Session["UserId"] = dt.Rows[0]["CabId"];
                    Session["CurrentProfileId"] = Session["UserId"];
                    Session["Name"] = dt.Rows[0]["UserName"];
                    string MyID = Session["UserId"].ToString();
                     Response.Redirect("CabAdmin.aspx");
                  

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Password or Username');</script>");
                }
            }


        }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");

    }
}
