<%@ WebHandler Language="C#" Class="ShowQuestionImage" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public class ShowQuestionImage : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) 
    {
        int id;
        id = Convert.ToInt32(context.Request.QueryString["Qimage"]);
        string str = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select QuestionImage from AptiQuestions where QuestionId="+ id, conn);
        byte[] img = (byte[])cmd.ExecuteScalar();
        cmd.Dispose();
        conn.Close();
        Stream strm = new MemoryStream(img);
        byte[] buffer = new byte[4096];
        int byteSeq = strm.Read(buffer, 0, 4096);

        while (byteSeq > 0)
        {
            context.Response.OutputStream.Write(buffer, 0, byteSeq);
            byteSeq = strm.Read(buffer, 0, 4096);
        }       
    }
 
    public bool IsReusable 
    {
        get 
        {
            return false;
        }
    }

}