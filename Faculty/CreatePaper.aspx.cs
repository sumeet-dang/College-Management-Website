using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_CreatePaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AddFileButton_Click(object sender, EventArgs e)
    {
       FileStream fs=new FileStream(Server.MapPath("~/SampleUploads/"+FileNameBox.Text+".txt"),FileMode.OpenOrCreate,FileAccess.Write);
       StreamWriter s1 = new StreamWriter(fs);
       s1.WriteLine(FileContentBox.Text);
       s1.Close();

       s1.Dispose();
       fs.Close();
       fs.Dispose();
            
            
    }
}