using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Controls_ProfilePic : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        GetProfilePic();
        

    }


    private void GetProfilePic()
    {
        DataTable dt = new DataTable();
        string query = "select  *  from Tourist where TouristId='" + Session["CurrentProfileId"] + "'";
        dt = Database.GetData(query);

        if (dt.Rows.Count > 0)
        {
            dlProfile.Visible = true;
            Session["Name"] = dt.Rows[0]["UserName"];
            dlProfile.DataSource = dt;
            dlProfile.DataBind();

        }
        else
        {

        }

            
       
    }
   


   


    
   
}
