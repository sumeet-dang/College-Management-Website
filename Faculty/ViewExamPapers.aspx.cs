using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Faculty_ViewExamPapers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
    {
        FileUpload FileUpload1 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload1");
        if (FileUpload1.HasFile)
        {
            if ((FileUpload1.FileName.ToLower().EndsWith(".jpg")) || (FileUpload1.FileName.ToLower().EndsWith(".gif")) || (FileUpload1.FileName.ToLower().EndsWith(".jpeg")) || (FileUpload1.FileName.ToLower().EndsWith(".png")))
            {
            }
            else
            {
                CustomValidator CustomeValidator1 = (CustomValidator)ListView1.InsertItem.FindControl("CustomValidator1");
                CustomeValidator1.IsValid = false;
                e.Cancel = true;
            }
        }

    }

    protected void QuestionSource_Inserted(object sender, EntityDataSourceChangedEventArgs e)
    {

        FileUpload FileUpload1 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload1");
        if (FileUpload1.HasFile)
        {
            byte[] image;
            image = FileUpload1.FileBytes;
            string str = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update AptiQuestions set QuestionImage=@e1 where QuestionId=(Select Max(QuestionId) from AptiQuestions)", conn);
            cmd.Parameters.AddWithValue("@e1", image);
            cmd.ExecuteNonQuery();
            conn.Close();
            cmd.Dispose();
        }
        else
        {
            byte[] bytes = System.IO.File.ReadAllBytes(@"C:\Users\Sumit\Documents\Visual Studio 2012\WebSites\WebSite1\Images\dummy.jpg");
            string str = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update AptiQuestions set QuestionImage=@e1 where QuestionId=(Select MAX(QuestionId) from AptiQuestions)", conn);
            cmd.Parameters.AddWithValue("@e1", bytes);
            cmd.ExecuteNonQuery();
            conn.Close();
            cmd.Dispose();
        }
    }
    protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
    {
        FileUpload FileUpload2 = (FileUpload)ListView1.EditItem.FindControl("FileUpload2");
        if (FileUpload2.HasFile)
        {
            if ((FileUpload2.FileName.ToLower().EndsWith(".jpg")) || (FileUpload2.FileName.ToLower().EndsWith(".gif")) || (FileUpload2.FileName.ToLower().EndsWith(".jpeg")) || (FileUpload2.FileName.ToLower().EndsWith(".png")))
            {
            }
            else
            {
                CustomValidator CustomeValidator2 = (CustomValidator)ListView1.EditItem.FindControl("CustomValidator2");
                CustomeValidator2.IsValid = false;
                e.Cancel = true;
            }
        }
    }
    protected void QuestionSource_Updating(object sender, EntityDataSourceChangingEventArgs e)
    {
        Label Label1 = (Label)ListView1.EditItem.FindControl("QuestionIdLabel1");
        int a = Convert.ToInt32(Label1.Text);
        FileUpload FileUpload2 = (FileUpload)ListView1.EditItem.FindControl("FileUpload2");
        if (FileUpload2.HasFile)
        {
            byte[] image;
            image = FileUpload2.FileBytes;
            string str = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Update AptiQuestions set QuestionImage=@e1 where QuestionId=" +a, conn);
            cmd.Parameters.AddWithValue("@e1", image);
            cmd.ExecuteNonQuery();
            conn.Close();
            cmd.Dispose();
        };
    }
}