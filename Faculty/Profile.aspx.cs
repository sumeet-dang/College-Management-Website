using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcookie = CookieClass.findFacultyCookie();       
        ProfileImage.ImageUrl = "~/Handlers/ShowFacultyImage.ashx?EmpId=" + strcookie;
        if (!Page.IsPostBack)
        {
            FacultyClass faculty = new FacultyClass(strcookie);
            NameLabel.Text = faculty.firstName + faculty.middleName + faculty.lastName;
            DepartmentBox.Text = faculty.department;
            EnrollDateBox.Text = faculty.enrollDate.ToShortDateString();
            EmpIdBox.Text = faculty.facultyId;
            Sex.Text = faculty.sex;
            AddressBox.Text = faculty.address;
            EmailBox.Text = faculty.emailId;
            PhoneBox.Text = faculty.contactNumber.ToString();
        }
    }
    protected void ImageUpload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            int width;
            int height;
            string str1 = Request.Cookies["FacultyCookie"].Value.ToString();
            byte[] image = FileUpload1.FileBytes;
            using (Stream memStream = new MemoryStream(image))
            {
                using (System.Drawing.Image img = System.Drawing.Image.FromStream(memStream))
                {
                    width = img.Width;
                    height = img.Height;
                }
            }

            if (width > 400 || height > 400)
            {
            }
            else
            {
                string str = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                SqlCommand cmd = new SqlCommand("Update Faculty set Image=@e1 where FacultyId='" + str1+"'", conn);
                cmd.Parameters.AddWithValue("@e1", image);
                cmd.ExecuteNonQuery();
                conn.Close();
                cmd.Dispose();
            }
        }
    }
    protected void ChangePassButton_Click(object sender, EventArgs e)
    {
        bool check = FacultyClass.checkLogin(EmpIdBox.Text, OldPassBox.Text);
        if (check == true)
        {
            string str1 = Request.Cookies["FacultyCookie"].Value.ToString();
            string enr = str1.ToString();
            ConnectionClass connection = new ConnectionClass();
            connection.openConnection();
            SqlCommand cmd = new SqlCommand("Update Faculty set Password='" + NewPassBox.Text.ToString() + "' where FacultyId='" + str1+"'", connection.conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            connection.conn.Close();
            Response.Redirect("~/Faculty/Profile.aspx");
        }
        
    }
    protected void Update_Click(object sender, EventArgs e)
    {
        FacultyClass faculty = new FacultyClass(EmpIdBox.Text);
        faculty.facultyId = EmpIdBox.Text;
        faculty.address = AddressBox.Text;
        faculty.emailId = EmailBox.Text;
        faculty.contactNumber = Convert.ToInt64(PhoneBox.Text);
        faculty.ProfileUpdate();
    }
}