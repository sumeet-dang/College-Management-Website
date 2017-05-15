using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_UploadPapers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DirectoryInfo directory = new DirectoryInfo(Server.MapPath("~/SampleUploads"));
        int counter = 0;
        foreach (FileInfo file in directory.GetFiles())
        {
            HyperLink link = new HyperLink();            
            link.ID = "Link" + counter++;
            link.Text = file.Name;
            link.NavigateUrl = "~/Downloads.aspx?file=" + file.Name;
            Panel2.Controls.Add(link);
            Panel2.Controls.Add(new LiteralControl("<br />"));
        }
    }
    
   

    protected void UploadButton_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~\\SampleUploads\\") + FileUpload1.PostedFile.FileName);
            Thread.Sleep(3000);
            Response.Redirect("Default.aspx");
        }
    }
    protected void CreateFileButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreatePaper.aspx");
    }
   
    protected void AddFileButton_Click(object sender, EventArgs e)
    {
        
            Response.Redirect("UploadPapers.aspx");
        
    }
}