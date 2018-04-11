using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Controls_Header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
  
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Session["SearchText"] = txtSearch.Text;
        Response.Redirect("~/Search1.aspx");
    }

   
 
}
