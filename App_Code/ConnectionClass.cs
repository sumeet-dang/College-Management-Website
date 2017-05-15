using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for ConnectionClass
/// </summary>
public class ConnectionClass
{
    private string str = ConfigurationManager.ConnectionStrings["Connectionstring1"].ConnectionString;
    public SqlConnection conn;
     
	public ConnectionClass()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void openConnection()
    {
        conn = new SqlConnection(str);
        conn.Open();
    }
    public bool checkEntry(string input,string attribute, string tableName)
    {
        int result;
        bool found;
        conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select count(" + attribute + ") from " + tableName + " where " + attribute + " = " + "'" + input + "'", conn);
        result = Convert.ToInt32(cmd.ExecuteScalar());
        cmd.Dispose();
        conn.Close();
        if (result > 0)
        {
            found = true;
        }
        else
        {
            found = false;
        }
        return found;       
    }
    
}