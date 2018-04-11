<%@ WebHandler Language="C#" Class="hotelimages" %>

using System;
using System.Web;
using System.IO;
using System.Data;
public class hotelimages : IHttpHandler {
    
     public void ProcessRequest(HttpContext context) {
        if (context.Request.QueryString["HotelId"] != null)
        {
            string RegisterId = context.Request.QueryString["HotelId"];
            DataTable dt = new DataTable();
            string query = "select Picture from Hotel where HotelId = '" + RegisterId + "'";
            dt = Database.GetData(query);
           
                context.Response.BinaryWrite((Byte[])dt.Rows[0]["Picture"]);
                context.Response.End();
           

        } }

    public bool IsReusable {
        get {

            return false;
        }
    }

}