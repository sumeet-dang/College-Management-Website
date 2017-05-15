using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string emp = EmpId.Text;
        ConnectionClass conn = new ConnectionClass();
        string pwd;
        SqlCommand cmd;
        conn.openConnection();
        try
        {
            cmd = new SqlCommand("Select Password from Faculty where FacultyId='" + emp + "'", conn.conn);
            pwd = cmd.ExecuteScalar().ToString();
            Response.Cookies["FacultyCookie"].Value = EmpId.Text;
            if (RememberMe.Checked)
            {
                Response.Cookies["FacultyCookie"].Expires = DateTime.Now.AddDays(10);
            }
            else
            {
                Response.Cookies["FacultyCookie"].Expires = DateTime.Now.AddMinutes(15);
            }
            if (pwd.Equals(Password.Text))
            {
                cmd = new SqlCommand("Select Count(SecurityQuestion) From Faculty where FacultyId='" + emp + "'", conn.conn);
                int str = Convert.ToInt32(cmd.ExecuteScalar());
                if (str == 0)
                {
                    Response.Redirect("NewFaculty.aspx");
                }
                cmd.Dispose();
                conn.conn.Close();
                Response.Redirect("Default.aspx");
            }
        }
        catch
        {
            
        }

        Response.Redirect("LoginFailed.aspx");
    }
}