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

public partial class Management_CreateFaculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //CreateFacultyProfile.Attributes.Add("onclick", "setTimeout(\"UpdateImg('Image1','../Images/atom.gif');\",50);");
        if (!Page.IsPostBack)
        {
            try
            {
                ConnectionClass connection = new ConnectionClass();
                connection.openConnection();
                SqlCommand cmd = new SqlCommand("SELECT IDENT_Current('Faculty') as xyz", connection.conn);
                int temp=Convert.ToInt32(cmd.ExecuteScalar())+1;
                EmpId.Text="CF"+ temp.ToString("D6");
                cmd.Dispose();
                connection.conn.Close();
            }
            catch
            {
                Response.Redirect("~/PermissionDenied.aspx");
            }
        }
    } 
    protected void CreateFacultyProfile_Click(object sender, EventArgs e)
    {
        FacultyClass fc = new FacultyClass();
        fc.department = DepartmentList.SelectedValue;
        fc.firstName = FirstName.Text;
        fc.lastName = LastName.Text;
        fc.password = Password.Text;
        fc.NewFaculty();
        Thread.Sleep(4000);
        Response.Redirect("~/Management/Default.aspx");        
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        FirstName.Text = null;
        LastName.Text = null;
        DepartmentList.SelectedIndex = 0;
        Password.Text = null;
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Management/Default.aspx");
    }
    protected void GeneratePass_Click(object sender, EventArgs e)
    {
        Password.Text = Membership.GeneratePassword(8, 0);

    }
}