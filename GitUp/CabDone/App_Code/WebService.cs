using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.Script.Services;
using System.Web.Configuration;


[ScriptService]
[WebService(Namespace = "http://tempuri.org/")]
//[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public string[] SearchFriends(string prefixText)
    {
        string connstring = Database.connString.ToString();
        string sql = "Select * from RegisterTourist Where Name like @prefixText";
        SqlDataAdapter da = new SqlDataAdapter(sql, connstring);
        da.SelectCommand.Parameters.Add("@prefixText", SqlDbType.VarChar, 50).Value = prefixText + "%";
        DataTable dt = new DataTable();
        da.Fill(dt);
        string[] items = new string[dt.Rows.Count];
        int i = 0;
        foreach (DataRow dr in dt.Rows)
        {
            items.SetValue(dr["Name"].ToString(), i);
            i++;
        }
        return items;
    }

}
