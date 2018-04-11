using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Controls_HotelController : System.Web.UI.UserControl
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Hotel();
    }

    private void Hotel()
    {

        string getHotelQuery = "Select * FROM [Hotel]";
        dt = Database.GetData(getHotelQuery);
        if (dt.Rows.Count > 0)
        {
            dlHotel.DataSource = dt;
            dlHotel.DataBind();
        }

    }

}