using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.IO;

/// <summary>
/// Summary description for FacultyClass
/// </summary>
public class FacultyClass
{
    private string _facultyId;
    public string facultyId
    {
        get { return _facultyId; }
        set { _facultyId = value; }
    }
    private Int64 _id;
    public Int64 id
    {
        get { return _id; }
    }
    private string _firstName;
    public string firstName
    {
        get { return _firstName; }
        set { _firstName = value; }
    }
    private string _middleName;
    public string middleName
    {
        get { return _middleName; }
        set { _middleName = value; }
    }
    private string _lastName;
    public string lastName
    {
        get { return _lastName; }
        set { _lastName = value; }
    }
    private long _contactNumber;
    public long contactNumber
    {
        get { return _contactNumber; }
        set { _contactNumber = value; }
    }
    private string _address;
    public string address
    {
        get { return _address; }
        set { _address = value; }
    }
    private string _securityQuestion;
    public string securityQuestion
    {
        get { return _securityQuestion; }
        set { _securityQuestion = value; }
    }
    private string _securityAnswer;
    public string securityAnswer
    {
        get { return _securityAnswer; }
        set { _securityAnswer = value; }
    }
    private string _password;
    public string password
    {
        get { return _password; }
        set { _password = value; }
    }
    private string _department;
    public string department
    {
        get { return _department; }
        set { _department = value; }
    }
    private string _emailId;
    public string emailId
    {
        get { return _emailId; }
        set { _emailId = value; }
    }
    private string _sex;
    public string sex
    {
        get { return _sex; }
        set { _sex = value; }
    }
    private DateTime _enrollDate;
    public DateTime enrollDate
    {
        get { return _enrollDate; }
    }
	public FacultyClass()
	{
        _facultyId = null;
        _firstName = null;
        _middleName=null;
        _lastName = null;
        _contactNumber = 0;
	}
    public FacultyClass(string empid)
    {
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        DataSet ds = new DataSet();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand=new SqlCommand("Select FirstName,Middle_Name,Last_Name,ContactNumber,Address,Department,EmailId,sex,EnrolledDate from Faculty where FacultyId='" + empid + "'", connection.conn);
        sda.Fill(ds);
        _firstName = ds.Tables[0].Rows[0].ItemArray[0].ToString();
        _middleName = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        _lastName = ds.Tables[0].Rows[0].ItemArray[2].ToString();
        _contactNumber = (long)ds.Tables[0].Rows[0].ItemArray[3];
        _address = ds.Tables[0].Rows[0].ItemArray[4].ToString();
        _department = ds.Tables[0].Rows[0].ItemArray[5].ToString();
        _emailId = ds.Tables[0].Rows[0].ItemArray[6].ToString();
        _sex = ds.Tables[0].Rows[0].ItemArray[7].ToString();
        _enrollDate = ((DateTime)ds.Tables[0].Rows[0].ItemArray[8]);
        _facultyId = empid;
        sda.Dispose();
        connection.conn.Close();
    }
    public void NewFaculty()
    {
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        byte[] imageData = null;
        FileInfo fileInfo = new FileInfo(HttpContext.Current.Server.MapPath("~/Images/student.gif"));
        long imageFileLength = fileInfo.Length;
        FileStream fs = new FileStream(HttpContext.Current.Server.MapPath("~/Images/student.gif"), FileMode.Open, FileAccess.Read);
        BinaryReader br = new BinaryReader(fs);
        imageData = br.ReadBytes((int)imageFileLength);
       
        SqlCommand cmd = new SqlCommand("Insert into Faculty (FirstName, Last_Name, Department,Password,Image) values(@e1,@e2,@e3,@e4,@e5)", connection.conn);
        cmd.Parameters.AddWithValue("@e1", _firstName);
        cmd.Parameters.AddWithValue("@e2", _lastName);
        cmd.Parameters.AddWithValue("@e3", _department);
        cmd.Parameters.AddWithValue("@e4", _password);
        cmd.Parameters.AddWithValue("@e5", imageData);
        cmd.ExecuteNonQuery();       
        cmd.Dispose();
        connection.conn.Close();
    }
    public void FirstLogin()
    {
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Update Faculty set sex=@e1,SecurityQuestion=@e2,SecurityAnswer=@e3 where FacultyId='" + _facultyId+"'", connection.conn);
        cmd.Parameters.AddWithValue("@e1", _sex);
        cmd.Parameters.AddWithValue("@e2", _securityQuestion);
        cmd.Parameters.AddWithValue("@e3", _securityAnswer);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();
    }
    public static bool checkLogin(string emp, string pass)
    {
        bool result;
        ConnectionClass conn = new ConnectionClass();
        conn.openConnection();
        SqlCommand cmd = new SqlCommand("Select Password from Faculty where FacultyId='" + emp + "'", conn.conn);
        string pwd = cmd.ExecuteScalar().ToString();
        if (pwd.Equals(pass))
        {
            result = true;
        }
        else
        {
            result = false;
        }
        cmd.Dispose();
        conn.conn.Close();
        return result;
    }
    public void ProfileUpdate()
    {
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Update Faculty set Address=@e2,EmailId=@e3,ContactNumber=@e4 where FacultyId='" + _facultyId+"'", connection.conn);

        cmd.Parameters.AddWithValue("@e2", _address);
        cmd.Parameters.AddWithValue("@e3", _emailId);
        if (_contactNumber > 0)
        {
            cmd.Parameters.AddWithValue("@e4", _contactNumber);
        }
        else
        {
            cmd.Parameters.AddWithValue("@e4", 0);
        }      
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();
    }
}