using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Attendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            EnrollLabel.Text = Request.Cookies["StudentCookie"].Value;
            Image1.ImageUrl = "~/Handlers/ShowImage.ashx?enroll=" + EnrollLabel.Text;
            int en = Convert.ToInt32(Request.Cookies["StudentCookie"].Value);
            StudentClass stud = new StudentClass(en);
            NameLabel.Text = stud.FirstName + stud.MiddleName + stud.LastName;
            BranchLabel.Text = stud.Branch;
            Month.Text = Request.QueryString["Month"];
            July.NavigateUrl = string.Format("../Student/Attendance.aspx?Month=July", EnrollLabel.Text);
            August.NavigateUrl = string.Format("../Student/Attendance.aspx?Month=August", EnrollLabel.Text);
            September.NavigateUrl = string.Format("../Student/Attendance.aspx?Month=September", EnrollLabel.Text);
            October.NavigateUrl = string.Format("../Student/Attendance.aspx?Month=October", EnrollLabel.Text);
            November.NavigateUrl = string.Format("../Student/Attendance.aspxMonth=November", EnrollLabel.Text);
            December.NavigateUrl = string.Format("../Student/Attendance.aspx?Month=December", EnrollLabel.Text);
            January.NavigateUrl = string.Format("../Student/Attendance.aspx?EnrollNumber={0}&Month=January", EnrollLabel.Text);
            February.NavigateUrl = string.Format("../Student/Attendance.aspx?Month=February", EnrollLabel.Text);
            March.NavigateUrl = string.Format("../Student/Attendance.aspx?Month=March", EnrollLabel.Text);
            April.NavigateUrl = string.Format("../Student/Attendance.aspx?Month=April", EnrollLabel.Text);
            May.NavigateUrl = string.Format("../Student/Attendance.aspx?Month=May", EnrollLabel.Text);
            June.NavigateUrl = string.Format("../Student/Attendance.aspx?EMonth=June", EnrollLabel.Text);
            AttendanceClass att = new AttendanceClass(Request.QueryString["Month"], Convert.ToInt64(Request.Cookies["StudentCookie"].Value));
            int i = 1, j = 1;
            foreach (char ch in att.attendance)
            {
                if (j == 8)
                {
                    j = 1;
                    i++;
                }
                RadioButton rPTemp = (RadioButton)Master.FindControl("ContentPlaceHolder1").FindControl("RadioButton" + i.ToString() + j.ToString() + "P");
                RadioButton rATemp = (RadioButton)Master.FindControl("ContentPlaceHolder1").FindControl("RadioButton" + i.ToString() + j.ToString() + "A");
                RadioButton rHTemp = (RadioButton)Master.FindControl("ContentPlaceHolder1").FindControl("RadioButton" + i.ToString() + j.ToString() + "H");
                if (ch == 'P')
                {
                    rPTemp.Checked = true;
                }

                else if (ch == 'A')
                {
                    rATemp.Checked = true;
                }
                else if (ch == 'H')
                {
                    rHTemp.Checked = true;
                }
                j++;
            }
            Label1.Text = att.monthTotal.ToString();
            TotalAttendance.Text = att.overall.ToString();
        }
        else
        {

        }
    }
   
}