
<%@ WebHandler Language="C#" Class="ImageHandler" %>

using System;
using System.Web;
using System.IO;
using System.Data;

public class ImageHandler : IHttpHandler {

    public void ProcessRequest(HttpContext context) {
        if (context.Request.QueryString["TouristId"] != null)
        {
            string RegisterId = context.Request.QueryString["TouristId"];
            DataTable dt = new DataTable();
            string query = "select Picture from Tourist where TouristId = '" + RegisterId + "'";
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