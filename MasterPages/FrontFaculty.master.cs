using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_FrontFaculty : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string stu = Request.Cookies["FacultyCookie"].ToString();
        }
        catch
        {
            Response.Redirect("~/Faculty/Login.aspx");
        }
    }
}
