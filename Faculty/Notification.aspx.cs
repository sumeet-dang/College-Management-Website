using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string temp = Request.Cookies["FacultyCookie"].Value.ToString();
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Insert into Notifications (UploaderId,Message) values('"+temp+"','"+TextBox1.Text+"')", connection.conn);
        //SqlCommand cmd = new SqlCommand("Insert into Notifications (UploaderId,Message) values('" + "CF000001" + "','" + TextBox1.Text.ToString() + "')", connection.conn);
      
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();
        Label1.Visible = true;
    }
}