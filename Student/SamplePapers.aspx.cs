using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_SamplePapers : System.Web.UI.Page
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
           Panel1.Controls.Add(link);
            Panel1.Controls.Add(new LiteralControl("<br />"));
        }
    }
}