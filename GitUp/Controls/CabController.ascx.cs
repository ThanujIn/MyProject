using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Controls_CabController : System.Web.UI.UserControl
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        CabService();
    }

    private void CabService()
    {

        string getCabQuery = "Select * FROM [CabDetails]";
        dt = Database.GetData(getCabQuery);
        if (dt.Rows.Count > 0)
        {
            dlCab.DataSource = dt;
            dlCab.DataBind();
        }

    }

}