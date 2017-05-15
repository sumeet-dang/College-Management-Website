using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for AttendanceClass
/// </summary>
public class AttendanceClass
{
    private Int64 _enroll;
    public Int64 enroll
    {
        get{return _enroll;}
        set{_enroll=value;}
    }
    private string _attendance;
    public string attendance
    {
        get { return _attendance; }
        set { _attendance = value; }
    }
    private string _month;
    public string month
    {
        get { return _attendance; }
        set { _month = value; }
    }
    private int _daysPresent;
    public int daysPresent
    {
        get { return _daysPresent; }
        set { _daysPresent = value; }
    }
    private int _daysAbsent;
    public int daysAbsent
    {
        get { return daysAbsent; }
        set { _daysAbsent = value; }
    }
    private float _overall;
    public float overall
    {
        get { return _overall; }
        set { _overall = value; }
    }
    private float _monthTotal;
    public float monthTotal
    {
        get { return _monthTotal; }
        set { _monthTotal = value; }
    }
	public AttendanceClass()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public AttendanceClass(string mon,Int64 en)
    {
       _month = mon;
       _enroll=en;
       
       ConnectionClass connection = new ConnectionClass();
       connection.openConnection();
       SqlCommand cmd;
       cmd = new SqlCommand("Select " + _month + " from Attendance where Enrollment_No = " + _enroll, connection.conn);
       _attendance = cmd.ExecuteScalar().ToString();
       cmd = new SqlCommand("Select " + _month + "Total from Attendance where Enrollment_No = " + _enroll, connection.conn);
       try
       {
           _monthTotal = (float)(cmd.ExecuteScalar());
       }
       catch
       {
           _monthTotal = 0;
       }
       cmd = new SqlCommand("Select OverallAttendance from Attendance where Enrollment_No = " + _enroll, connection.conn);
       try
       {
           _overall = (float)(Convert.ToInt32(cmd.ExecuteScalar()));
       }
       catch
       {
           
       }
       foreach (char ch in _attendance)
       {
           if (ch=='P')
           {
               _daysPresent++;
           }
           else if (ch=='A')
           {
               _daysAbsent++;
           }
           _monthTotal = ((float)_daysPresent / ((float)_daysAbsent + (float)_daysPresent)) * 100;
       }
       cmd.Dispose();
       connection.conn.Close();
 
    }
    public void monthlyUpdate()
    {
        _monthTotal = ((float)_daysPresent / ((float)_daysAbsent + (float)_daysPresent))*100;
        
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Update Attendance set "+_month+"='"+_attendance+"',"+_month+"Total="+_monthTotal+" where Enrollment_No="+_enroll, connection.conn);        
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();
        ComputeOverall();   
    }
    private void ComputeOverall()
    {
        _overall = 0;
        float temp = 0;
        string str;
        int totalmonths = 0;
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Select JulyTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
 try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);
            
            _overall += temp;
            totalmonths++;
        }
       catch
        {
        }
        cmd = new SqlCommand("Select AugustTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        cmd = new SqlCommand("Select SeptemberTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        cmd = new SqlCommand("Select OctoberTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        cmd = new SqlCommand("Select NovemberTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        cmd = new SqlCommand("Select DecemberTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        cmd = new SqlCommand("Select JanuaryTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        cmd = new SqlCommand("Select FebruaryTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        cmd = new SqlCommand("Select MarchTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        cmd = new SqlCommand("Select AprilTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        cmd = new SqlCommand("Select MayTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        cmd = new SqlCommand("Select JuneTotal from Attendance where Enrollment_No= " + _enroll, connection.conn);
        try
        {
            str = (cmd.ExecuteScalar().ToString());
            temp += (float)Convert.ToSingle(str);

            _overall += temp;
            totalmonths++;
        }
        catch
        {
        }
        try
        {
            _overall = (float)temp / (int)totalmonths;
        }
        catch
        {
        }
        
        cmd = new SqlCommand("Update Attendance set OverallAttendance=" + _overall + "where Enrollment_No=" + _enroll, connection.conn);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        connection.conn.Close();
            
    }
}