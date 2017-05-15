using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_Exams_Programming : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int marks = 0;
        int enroll = Convert.ToInt32(Request.Cookies["StudentCookie"].Value);
        string date = DateTime.Now.ToShortDateString();
        for (int i = 0; i < 10; i++)
        {
            RadioButton r1 = (RadioButton)ListView1.Items[i].FindControl("RadioButton1");
            RadioButton r2 = (RadioButton)ListView1.Items[i].FindControl("RadioButton2");
            RadioButton r3 = (RadioButton)ListView1.Items[i].FindControl("RadioButton3");
            RadioButton r4 = (RadioButton)ListView1.Items[i].FindControl("RadioButton4");
            if ((r1.Checked) && (((Label)ListView1.Items[i].FindControl("CorrectOptionLabel")).Text.Equals("1")))
            {
                marks++;
            }
            if ((r2.Checked) && (((Label)ListView1.Items[i].FindControl("CorrectOptionLabel")).Text.Equals("2")))
            {
                marks++;
            }
            if ((r3.Checked) && (((Label)ListView1.Items[i].FindControl("CorrectOptionLabel")).Text.Equals("3")))
            {
                marks++;
            }
            if ((r4.Checked) && (((Label)ListView1.Items[i].FindControl("CorrectOptionLabel")).Text.Equals("4")))
            {
                marks++;
            }
        }
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Insert into StudentResults (StudentId,PaperId,DateTaken,Marks) values(@e1,@e2,@e3,@e4)", connection.conn);
        cmd.Parameters.AddWithValue("@e1", enroll);
        cmd.Parameters.AddWithValue("@e2", "Programming");
        cmd.Parameters.AddWithValue("@e3", date);
        cmd.Parameters.AddWithValue("@e4", marks);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();

    }
}