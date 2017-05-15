using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cookies["StudentCookie"].Expires = DateTime.Now.AddMinutes(-2);
        
        Response.Cookies["FacultyCookie"].Expires = DateTime.Now.AddMinutes(-2);
        Response.Redirect("~/Default.aspx");


    }
}