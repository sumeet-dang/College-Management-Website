using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Student_Myprofile : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string st = null;
        st = CookieClass.findStudentCookie();
        if (st == null)
        {
            Response.Redirect("~/Student/StudentLogin.aspx");
        }
       
        if (!Page.IsPostBack)
        {
            string strcookie = CookieClass.findStudentCookie();
            ProfileImage.ImageUrl = "~/Handlers/ShowImage.ashx?enroll=" + strcookie;
            StudentClass student = new StudentClass(Convert.ToInt32(strcookie));
            NameLabel.Text = student.FirstName + student.MiddleName + student.LastName;
            EnrollNoBox.Text = student.EnrollNumber.ToString();
            AdmissionDateBox.Text = student.AdmissionDate.ToShortDateString();
            BranchBox.Text = student.Branch;
            StudentSex.Text = student.sex;
            if (student.hostler.Contains("Hostler"))
            {
                Hostler.Checked = true;
            }
            if (student.hostler.Contains("Day Scholar"))
            {
                DayScholar.Checked = true;
                AddressBox.Text = student.Address;
                AddressBox.Visible = true;
                AddressBox.Enabled = true;
            }
            EmailBox.Text = student.EmailId;
            PhoneBox.Text = student.ContactNumber.ToString();
            GPhoneBox.Text = student.GuarddianContactNumber.ToString();
            Year.Text = student.Year.ToString();
            
        }
    }

    protected void ImageUpload_Click(object sender, EventArgs e)
    {
        
        if (FileUpload1.HasFile)
        {
            int width;
            int height;
            string str1 = Request.Cookies["StudentCookie"].Value.ToString();
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
                SqlCommand cmd = new SqlCommand("Update Student set Image=@e1 where Enroll_No=" + str1, conn);
                cmd.Parameters.AddWithValue("@e1", image);
                cmd.ExecuteNonQuery();
                conn.Close();
                cmd.Dispose();
            }
        }
    }
    protected void Update_Click(object sender, EventArgs e)
    {
        StudentClass student = new StudentClass(Convert.ToInt32(Request.Cookies["StudentCookie"].Value));
       
        if (Hostler.Checked)
        {
            student.hostler = "Hostler";
        }
        if (DayScholar.Checked)
        {
            student.hostler = "Day Scholar";
        }
        student.Address = AddressBox.Text;
        student.EmailId = EmailBox.Text;
        student.ContactNumber=Convert.ToInt64(PhoneBox.Text);
        student.GuarddianContactNumber=Convert.ToInt64(GPhoneBox.Text);
        student.Year=Convert.ToInt32(Year.Text);
        student.ProfileUpdate();
    }

    protected void ChangePassButton_Click(object sender, EventArgs e)
    {
        bool check = StudentClass.checkLogin(EnrollNoBox.Text, OldPassBox.Text);
        if (check == true)
        {
            string str1 = Request.Cookies["StudentCookie"].Value.ToString();
            int enr = Convert.ToInt32(str1);
            ConnectionClass connection = new ConnectionClass();
            connection.openConnection();
            SqlCommand cmd = new SqlCommand("Update Student set Password='"+NewPassBox.Text.ToString()+"' where Enroll_No=" + str1, connection.conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            connection.conn.Close();
            Response.Redirect("~/Student/Default.aspx");
        }
        
    }
}