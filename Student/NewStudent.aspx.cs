using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_NewStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        StudentClass student=new StudentClass();
        student.EnrollNumber=Convert.ToInt32(Request.Cookies["StudentCookie"].Value.ToString());
        student.sex=RadioButtonList1.SelectedValue;
        student.SecurityQuestion=SecurityQList.SelectedValue;
        student.SecurityAnswer=SecurityABox.Text;
        student.FirstLogin();
        Response.Redirect("Default.aspx");
    }
}