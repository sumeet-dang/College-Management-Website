<%@ WebHandler Language="C#" Class="ShowFacultyImage" %>


using System;
using System.Web;
using System.Configuration;
using System.IO;
using System.Data;
using System.Data.SqlClient;
 

public class ShowFacultyImage : IHttpHandler
{
    
    public void ProcessRequest (HttpContext context) 
    {
        string empid;
        empid=Convert.ToString(context.Request.QueryString["EmpId"]);
        //Console.WriteLine(empid);
        //context.Response.Write(empid);
        string str = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select Image from Faculty where FacultyId='"+empid+"'", conn);
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