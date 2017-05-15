using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_CreateExamSession : System.Web.UI.Page
{
    ConnectionClass connection = new ConnectionClass();
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
                       
        }

    }
    protected void ListView2_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        /*if (e.Item.ItemType == ListViewItemType.DataItem)
        {

        }*/
        Label l2 = (Label)e.Item.FindControl("DateScheduledLabel");
        Label l1 = (Label)e.Item.FindControl("IsScheduledLabel");
        Label l3 = (Label)e.Item.FindControl("IsOpenLabel");
        Label l4 = (Label)e.Item.FindControl("text");
        Button b1 = (Button)e.Item.FindControl("Button1");
        TextBox t1 = (TextBox)e.Item.FindControl("ScheduleDateBox");
        TextBox t2 = (TextBox)e.Item.FindControl("NumQuestionsBox");
       // CheckBox c1 = (CheckBox)e.Item.FindControl("ScheduleTestCBox");
        //TextBox t1 = (TextBox)e.Item.FindControl("ScheduleDateBox");
        if (l1.Text.Equals("false"))
        {
            l1.Text="Test Not Scheduled";

        }
            
        if (l1.Text.Contains("true"))
        {
            
            l1.Text = "Test Scheduled For";
            l2.Visible = true;
            b1.Visible = false;
            t1.Visible = false;
            t2.Visible = false;
            l4.Visible = false;

        }
        if (l3.Text.Equals("true"))
        {
            l3.Text="The test session is Currently Open";
        }
        else if(l3.Text.Equals("false"))
        {
            l3.Text = "The test session is currently closed";
        }
      /*  if (c1.Checked)
        {
            t1.Visible = true;
        }*/
    }
    protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Schedule")
        {
            Label l3 = (Label)e.Item.FindControl("IdLabel");
            Label l2 = (Label)e.Item.FindControl("DateSelectLabel");
            Label l1 = (Label)e.Item.FindControl("DateWarningLabel");
            TextBox t1 = (TextBox)e.Item.FindControl("ScheduleDateBox");
            TextBox t2 = (TextBox)e.Item.FindControl("NumQuestionsBox");
            if (t1.Text.Length==0)
            {
                l2.Visible = true;
            }
            else
            {
                l2.Visible = false;
                if (Convert.ToDateTime(t1.Text).Date < DateTime.Now.Date)
                {
                    l1.Visible = true;
                }
                else if (Convert.ToDateTime(t1.Text).Date >= DateTime.Now.Date)
                {
                    l1.Visible = false;
                    
                    ScheduleTest(((Label)e.Item.FindControl("IdLabel")).ToString(), Convert.ToDateTime(t1.Text),l3.Text,Convert.ToInt32(t2.Text));
                    Response.Redirect("CreateExamSession.aspx");
                }
            }
        }
    }
    public void ScheduleTest(string PaperName, DateTime date,string pname,int num)
    {

        connection.openConnection();
        cmd = new SqlCommand("Update ExamSchedule set IsScheduled='true',DateScheduled='" + date.ToShortDateString() + "' ,NumQuestions="+num+" where PaperName='"+pname+"'", connection.conn);        
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();
    }
    protected void ListView3_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Label l1 = (Label)e.Item.FindControl("PaperNameLabel");
        if (e.CommandName == "Deschedule") 
        {
            connection.openConnection();
            cmd = new SqlCommand("Update ExamSchedule set IsScheduled='false',IsOpen='false' where PaperName='" + l1.Text + "'", connection.conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            connection.conn.Close();
            Response.Redirect("CreateExamSession.aspx");

        }
    }
    protected void ListView4_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Label l1 = (Label)e.Item.FindControl("PaperNameLabel");
        if (e.CommandName == "Deschedule2")
        {
            connection.openConnection();
            cmd = new SqlCommand("Update ExamSchedule set IsScheduled='false',IsOpen='false' where PaperName='" + l1.Text + "'", connection.conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            connection.conn.Close();
            Response.Redirect("CreateExamSession.aspx");
        }
    }
}