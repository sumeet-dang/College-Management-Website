using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_StudentLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.Validate("Group1");
        int enroll = Convert.ToInt32(EnrollNo.Text);
        if (Page.IsValid)
        {
            bool isExists;
            ConnectionClass conn = new ConnectionClass();
            conn.openConnection();
            SqlCommand cmd = new SqlCommand("Select Password from Student where Enroll_No='" + enroll + "'", conn.conn);
            string pwd = cmd.ExecuteScalar().ToString();
            if (pwd.Equals(Password.Text))
            {
                isExists = true;
            }
            else
            {
                isExists = false;
            }
            cmd=new SqlCommand("Select SecurityQuestion From Student where Enroll_No='"+enroll+"'",conn.conn);           
            if (isExists == true)
            {
                Response.Cookies["StudentCookie"].Value = EnrollNo.Text;
                if (RememberMe.Checked)
                {
                    Response.Cookies["StudentCookie"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {
                    Response.Cookies["StudentCookie"].Expires = DateTime.Now.AddMinutes(15);
                }
                try
                {                    
                    string str = (string)cmd.ExecuteScalar();
                    cmd.Dispose();
                    conn.conn.Close();
                    Response.Redirect("Default.aspx");                    
                }                   
                catch
                {
                    
                }
                Response.Redirect("NewStudent.aspx");                      
            }
            else
            {
                Response.Redirect("~/Student/LoginFailed.aspx");
            }
        }
        
    }
}