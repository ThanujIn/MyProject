using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text;


/// <summary>
/// Summary description for Alert
/// </summary>
public static class Alert
{
    public static void Show(string message)
    {
        //
        // TODO: Add constructor logic here
        //
        string cleanMessage = message.Replace("'", "\\'");
        string script = "";
        Page page = HttpContext.Current.CurrentHandler as Page;
        if(page!=null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
        {
            page.ClientScript.RegisterClientScriptBlock(typeof(Alert), "alert", script);
        }
    }
}