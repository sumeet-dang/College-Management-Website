using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CookieClass
/// </summary>
public class CookieClass
{
    static string cookie = null;
	public CookieClass()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static string findStudentCookie()
    {
        
        if (HttpContext.Current.Request.Cookies["StudentCookie"] != null)
        {
            cookie = HttpContext.Current.Request.Cookies["StudentCookie"].Value.ToString(); ;
        }
        return cookie;
    }
    public static string findFacultyCookie()
    {
        string cookie = null;
        if (HttpContext.Current.Request.Cookies["FacultyCookie"] != null)
        {
            cookie = HttpContext.Current.Request.Cookies["FacultyCookie"].Value;
        }
        return cookie;
    }
}