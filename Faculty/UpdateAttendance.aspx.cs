using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_UpdateAttendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            EnrollLabel.Text = Request.QueryString["EnrollNumber"];
            Image1.ImageUrl = "~/Handlers/ShowImage.ashx?enroll=" + EnrollLabel.Text;
            int en = Convert.ToInt32(EnrollLabel.Text);
            StudentClass stud = new StudentClass(en);
            NameLabel.Text = stud.FirstName + stud.MiddleName + stud.LastName;
            BranchLabel.Text = stud.Branch;
            Month.Text = Request.QueryString["Month"];
            July.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=July", EnrollLabel.Text);
            August.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=August", EnrollLabel.Text);
            September.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=September", EnrollLabel.Text);
            October.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=October", EnrollLabel.Text);
            November.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=November", EnrollLabel.Text);
            December.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=December", EnrollLabel.Text);
            January.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=January", EnrollLabel.Text);
            February.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=February", EnrollLabel.Text);
            March.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=March", EnrollLabel.Text);
            April.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=April", EnrollLabel.Text);
            May.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=May", EnrollLabel.Text);
            June.NavigateUrl = string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month=June", EnrollLabel.Text);
            AttendanceClass att = new AttendanceClass(Request.QueryString["Month"], Convert.ToInt64(Request.QueryString["EnrollNumber"]));
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
    protected void Update_Click(object sender, EventArgs e)
    {
        
        AttendanceClass att = new AttendanceClass(Request.QueryString["Month"],Convert.ToInt64(Request.QueryString["EnrollNumber"]));
        att.enroll = Convert.ToInt64(Request.QueryString["EnrollNumber"]);
        int i, j, ptemp = 0, atemp = 0;
        string stemp = null;   
        for(i=1;i<=4;i++)
        {
            for (j = 1; j <= 7; j++)
            {
                RadioButton rPTemp = (RadioButton)Master.FindControl("ContentPlaceHolder1").FindControl("RadioButton" + i.ToString() + j.ToString() + "P");
                RadioButton rATemp = (RadioButton)Master.FindControl("ContentPlaceHolder1").FindControl("RadioButton" + i.ToString() + j.ToString() + "A");
                RadioButton rHTemp = (RadioButton)Master.FindControl("ContentPlaceHolder1").FindControl("RadioButton" + i.ToString() + j.ToString() + "H");
                if (rPTemp.Checked == true)
                {
                    ptemp++;
                    stemp += "P";
                    
                }
                else if (rATemp.Checked == true)
                {
                    atemp++;
                    stemp += "A";
                    
                }
                else if (rHTemp.Checked == true)
                {
                    stemp += "H";
                    
                }
            }

        }
        for(j = 1; j <= 3; j++)
         {
             RadioButton rPTemp = (RadioButton)Master.FindControl("ContentPlaceHolder1").FindControl("RadioButton5" + j.ToString() + "P");
             RadioButton rATemp = (RadioButton)Master.FindControl("ContentPlaceHolder1").FindControl("RadioButton5" + j.ToString() + "A");
             RadioButton rHTemp = (RadioButton)Master.FindControl("ContentPlaceHolder1").FindControl("RadioButton5" + j.ToString() + "H");
             if (rPTemp.Checked == true)
                 {
                     ptemp++;
                     stemp += "P";
                 }
                 else if (rATemp.Checked == true)
                 {
                     atemp++;
                     stemp += "A";
                 }
                 else if (rHTemp.Checked == true)
                 {
                     stemp += "H";
                 }
         }
         att.attendance = stemp;
         att.daysAbsent = atemp;
         att.daysPresent = ptemp;        
         att.monthlyUpdate();
        
         TotalAttendance.Text = att.overall.ToString();
        Response.Redirect(string.Format("../Faculty/UpdateAttendance.aspx?EnrollNumber={0}&Month={1}", EnrollLabel.Text,Month.Text));
    }
    
}