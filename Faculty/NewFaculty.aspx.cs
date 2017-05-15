using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_NewFaculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FacultyClass fc = new FacultyClass();
        fc.facultyId = Request.Cookies["FacultyCookie"].Value.ToString();
        fc.sex = RadioButtonList1.SelectedValue;
        fc.securityQuestion = SecurityQList.SelectedValue;
        fc.securityAnswer = SecurityABox.Text;
        fc.FirstLogin();
        Response.Redirect("Default.aspx");
    }
}