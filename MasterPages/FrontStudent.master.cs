using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_FrontStudent : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*string student=null;
        student=CookieClass.findStudentCookie();
        if (student == null)
        {
            Response.Redirect("~/Student/StudentLogin.aspx");
        }
        else
        {
            Label1.Text = "Welcome " + StudentClass.getName(student);
            Label1.Visible = true;
        }*/
        try
        {
            string stu = Request.Cookies["StudentCookie"].Value;
        }
        catch
        {
            Response.Redirect("~/Student/StudentLogin.aspx");
        }
    }
}
