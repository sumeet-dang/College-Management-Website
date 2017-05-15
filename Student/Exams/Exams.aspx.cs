using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Exams_Exams : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Response.Write(DropDownList1.Items.Count);
       



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedValue.Contains("AptiQuestions"))
        {
            Response.Redirect("BeginExam.aspx?Test=Aptitude");
        }
        else if (DropDownList1.SelectedValue.Contains("ProgrammingQuestion"))
        {
            Response.Redirect("BeginExam.aspx?Test=Programming");
        }
        else if (DropDownList1.SelectedValue.Contains("QuantitativeQuestions"))
        {
            Response.Redirect("BeginExam.aspx?Test=Quantitative");
        }
        else if (DropDownList1.SelectedValue.Contains("VerbalQuestions"))
        {
            Response.Redirect("Begin.aspx?Test=Verbal");
        }
    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        if (DropDownList1.Items.Count == 0)
        {
            Label2.Text = "No Test Scheduled for Today";
            Button1.Enabled = false;
        }
        else if (DropDownList1.Items.Count > 0)
        {
            Label2.Text = "Please Select One Of The Scheduled Tests";
            Button1.Enabled = true;
        }
    }
}