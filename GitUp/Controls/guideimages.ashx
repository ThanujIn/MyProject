<%@ WebHandler Language="C#" Class="guideimages" %>

using System;
using System.Web;
using System.IO;
using System.Data;

public class guideimages : IHttpHandler {
    
  public void ProcessRequest(HttpContext context) {
        if (context.Request.QueryString["GuideId"] != null)
        {
            string RegisterId = context.Request.QueryString["GuideId"];
            DataTable dt = new DataTable();
            string query = "select Picture from TourGuide where GuideId = '" + RegisterId + "'";
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