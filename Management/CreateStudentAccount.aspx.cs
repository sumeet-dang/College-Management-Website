using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;
using System.Web.Security;

public partial class Management_CreateStudentAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CreateStudentProfile.Attributes.Add("onclick", "setTimeout(\"UpdateImg('Image1','../Images/atom.gif');\",50);");
        if(!Page.IsPostBack)
        {
            try
            {
                Label1.Visible = false;
                ConnectionClass connection = new ConnectionClass();
                connection.openConnection();
                SqlCommand cmd = new SqlCommand("SELECT IDENT_Current('Student') as xyz", connection.conn);
                EnrollNo.Text = (Convert.ToInt32(cmd.ExecuteScalar()) + 1).ToString();
                cmd.Dispose();
                connection.conn.Close();
            }
            catch
            {
                Response.Redirect("~/PermissionDenied.aspx");
            }
        }
    }
    protected void CreateStudentProfile_Click(object sender, EventArgs e)
    {
        StudentClass student = new StudentClass();
        student.FirstName = FirstName.Text;
        student.LastName = LastName.Text;
        student.Branch = BranchList.SelectedValue;
        student.EnrollNumber = Convert.ToInt32(EnrollNo.Text);
        student.Password = Password.Text;
        FirstName.Text = null;
        LastName.Text = null;
        BranchList.SelectedIndex = 0;
        Label1.Visible = true;
        Thread.Sleep(4000);
        student.NewStudent();
        Response.Redirect("~/Management/Default.aspx");
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Management/Default.aspx");
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        FirstName.Text = null;
        LastName.Text = null;
        BranchList.SelectedIndex = 0;
    }
    protected void GeneratePass_Click(object sender, EventArgs e)
    {
        Password.Text = Membership.GeneratePassword(8, 0);
    }
}