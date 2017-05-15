using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_ExamQuestions_VerbalPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Update")
        {
            Page.Validate("EditGroup");
        }
        if (e.CommandName == "Insert")
        {
            Page.Validate("InsertGroup");
        }
    }
}