using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.IO;

/// <summary>
/// Summary description for StudentClass
/// </summary>
public class StudentClass
{
	
    private long _enrollNumber;
    public long EnrollNumber
    {
        get { return _enrollNumber; }
        set { _enrollNumber = value; }
    }
    private string _firstName;
    public string FirstName
    {
        get { return _firstName; }
        set { _firstName = value; }
    }
    private string _middleName;
    public string MiddleName
    {
        get { return _middleName; }
        set { _middleName = value; }
    }
    private string _lastName;
    public string LastName
    {
        get { return _lastName; }
        set { _lastName = value; }
    }
    private long _rollNumber;
    public long RollNumber
    {
        get { return _rollNumber; }
        set { _rollNumber = value; }
    }
    private string _branch;
    public string Branch
    {
        get { return _branch; }
        set { _branch = value; }
    }
    private DateTime _admissionDate;
    public DateTime AdmissionDate
    {
        get { return _admissionDate; }
    }
    private string _address;
    public string Address
    {
        get { return _address; }
        set { _address = value; }
    }
    private string _emailId;
    public string EmailId
    {
        get { return _emailId; }
        set { _emailId = value; }
    }
    private long _contactNumber;
    public long ContactNumber
    {
        get { return _contactNumber; }
        set { _contactNumber = value; }
    }
    private long _guardianContactNumber;
    public long GuarddianContactNumber
    {
        get { return _guardianContactNumber; }
        set { _guardianContactNumber = value; }
    }
    private string _hostler;
    public string hostler
    {
        get { return _hostler; }
        set { _hostler = value; }
    }
    private string _password;
    public string Password
    {
        get { return _password; }
        set { _password = value; }
    }
    private int _year;
    public int Year
    {
        get { return _year; }
        set { _year = value; }
    }
    private string _securityQuestion;
    public string SecurityQuestion
    {
        get { return _securityQuestion; }
        set { _securityQuestion = value; }
    }
    private string _securityAnswer;
    public string SecurityAnswer

    {
        get { return _securityAnswer; }
        set { _securityAnswer = value; }
    }
    private string _sex;
    public string sex
    {
        get
        {
            return _sex;
        }
        set
        {
            _sex = value;
        }
    }

    public StudentClass()
    {
        //Student Default Constructor

        _address = null;
        _contactNumber = 0;
        _emailId = null;
        _guardianContactNumber = 0;
        _hostler = null;
        _rollNumber = 0;
        _securityAnswer = null;
        _securityQuestion = null;
        _year = 0;
    }
   /* public StudentClass()
    {
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Insert into Student (First_Name, Last_Name, Branch,Password) values(@e1,@e2,@e3,@e4)", connection.conn);
        cmd.Parameters.AddWithValue("@e1", );
        cmd.Parameters.AddWithValue("@e2", );
        cmd.Parameters.AddWithValue("@e3", );
        cmd.Parameters.AddWithValue("@e4", );
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();
    }*/
    public StudentClass(int e)
    {
        _address = null;
        _contactNumber = 0;
        _emailId = null;
        _guardianContactNumber = 0;
        _hostler = null;
        
        _securityAnswer = null;
        _securityQuestion = null;
        _year = 0;
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Select First_Name from Student where Enroll_No=" + e, connection.conn);
        _firstName = cmd.ExecuteScalar().ToString(); ;
        cmd = new SqlCommand("Select Middle_Name from Student where Enroll_No=" + e, connection.conn);
        _middleName = cmd.ExecuteScalar().ToString();
        cmd = new SqlCommand("Select Last_Name from Student where Enroll_No=" + e, connection.conn);
        _lastName = cmd.ExecuteScalar().ToString();
        cmd = new SqlCommand("Select Branch from Student where Enroll_No=" + e, connection.conn);
        _branch = cmd.ExecuteScalar().ToString();
        cmd = new SqlCommand("Select Admission_Date from Student where Enroll_No=" + e, connection.conn);
        _admissionDate = Convert.ToDateTime(cmd.ExecuteScalar());
        cmd = new SqlCommand("Select StudentAddress from Student where Enroll_No=" + e, connection.conn);
        _address = cmd.ExecuteScalar().ToString();
        cmd = new SqlCommand("Select Email_Id from Student where Enroll_No=" + e, connection.conn);
        _emailId = cmd.ExecuteScalar().ToString();
        try
        {
            cmd = new SqlCommand("Select ContactNumber from Student where Enroll_No=" + e, connection.conn);
            _contactNumber = Convert.ToInt64(cmd.ExecuteScalar());
        }
        catch
        {
            _contactNumber = 0;
        }
        try
        {
            cmd = new SqlCommand("Select GuardianContact from Student where Enroll_No=" + e, connection.conn);
            _guardianContactNumber = Convert.ToInt64(cmd.ExecuteScalar());
        }
        catch
        {
            _guardianContactNumber = 0;
        }
        cmd = new SqlCommand("Select living_Status from Student where Enroll_No=" + e, connection.conn);
        _hostler = cmd.ExecuteScalar().ToString();
        cmd = new SqlCommand("Select Password from Student where Enroll_No=" + e, connection.conn);
        _password = cmd.ExecuteScalar().ToString();
        try
        {
            cmd = new SqlCommand("Select Year from Student where Enroll_No=" + e, connection.conn);
            _year = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch
        {
            _year = 1;
        }
        cmd = new SqlCommand("Select SecurityQuestion from Student where Enroll_No=" + e, connection.conn);
        _securityQuestion = cmd.ExecuteScalar().ToString();
        cmd = new SqlCommand("Select SecurityAnswer from Student where Enroll_No=" + e, connection.conn);
        _securityAnswer = cmd.ExecuteScalar().ToString();
        cmd = new SqlCommand("Select Sex from Student where Enroll_No=" + e, connection.conn);
        _sex = cmd.ExecuteScalar().ToString();
        cmd.Dispose();
        connection.conn.Close();
        _enrollNumber = e;
    }
    public static bool checkLogin(string enroll, string pass)
    { 
        bool result;
        ConnectionClass conn=new ConnectionClass();
        conn.openConnection();
        SqlCommand cmd=new SqlCommand("Select Password from Student where Enroll_No='"+enroll+"'",conn.conn);
        string pwd = cmd.ExecuteScalar().ToString();
        if(pwd.Equals(pass))
        {
            result=true;
        }
        else
        {
            result=false;
        }
        cmd.Dispose();
        conn.conn.Close();
        return result;
    }
    public static string getName(string enroll)
    {
        string name;
        ConnectionClass conn = new ConnectionClass();
        conn.openConnection();
        SqlCommand cmd = new SqlCommand("Select First_Name from Student where Enroll_No=" + Convert.ToInt32(enroll), conn.conn);
        name = cmd.ExecuteScalar().ToString();
        return name;            
    }
    public void ProfileUpdate()
    {
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Update Student set StudentAddress=@e2,Email_Id=@e3,ContactNumber=@e4,GuardianContact=@e5,living_Status=@e6,Year=@e7 where Enroll_No=" + _enrollNumber, connection.conn);
        
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
        if(_guardianContactNumber>0)
        {
        cmd.Parameters.AddWithValue("@e5", _guardianContactNumber);
        }
        else
        {
            cmd.Parameters.AddWithValue("@e5",0);
        }
        cmd.Parameters.AddWithValue("@e6", _hostler);
        if (_year > 0)
        {
            cmd.Parameters.AddWithValue("@e7", _year);
        }
        else
        {
            cmd.Parameters.AddWithValue("@e7", null);
        }
     
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();
    }
    public void NewStudent()
    {
        byte[] imageData = null;
        FileInfo fileInfo = new FileInfo(HttpContext.Current.Server.MapPath("~/Images/student.gif"));
        long imageFileLength = fileInfo.Length;
        FileStream fs = new FileStream(HttpContext.Current.Server.MapPath("~/Images/student.gif"), FileMode.Open, FileAccess.Read);
        BinaryReader br = new BinaryReader(fs);
        imageData = br.ReadBytes((int)imageFileLength);
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Insert into Student (First_Name, Last_Name, Branch,Password,Image) values(@e1,@e2,@e3,@e4,@e5)", connection.conn);
        cmd.Parameters.AddWithValue("@e1",_firstName );
        cmd.Parameters.AddWithValue("@e2", _lastName);
        cmd.Parameters.AddWithValue("@e3", _branch);
        cmd.Parameters.AddWithValue("@e4",_password );
        cmd.Parameters.AddWithValue("@e5", imageData);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("Insert into Attendance (Enrollment_No) values (@e1)", connection.conn);
        cmd.Parameters.AddWithValue("@e1", _enrollNumber);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();
    }
    public void FirstLogin()
    {
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Update Student set Sex=@e1,SecurityQuestion=@e2,SecurityAnswer=@e3 where Enroll_no=" + _enrollNumber, connection.conn);
        cmd.Parameters.AddWithValue("@e1", _sex);
        cmd.Parameters.AddWithValue("@e2", _securityQuestion);
        cmd.Parameters.AddWithValue("@e3", _securityAnswer);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();
    }
}