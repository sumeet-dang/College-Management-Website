using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Exams
/// </summary>
public class Exams
{
    string isScheduled, IsOpen;
    DateTime dateScheduled;

	public Exams()
	{
       
	}
    public void SetOpen()
    {
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd;
        cmd = new SqlCommand("Select IsScheduled from ExamSchedule where PaperName='AptiQuestions'", connection.conn);
        isScheduled = cmd.ExecuteScalar().ToString();
        if (isScheduled.Contains("true"))
        {
            cmd = new SqlCommand("Select DateScheduled from ExamSchedule where PaperName='AptiQuestions'", connection.conn);
            dateScheduled = Convert.ToDateTime(cmd.ExecuteScalar());
            if (dateScheduled.Date == DateTime.Now.Date)
            {
                cmd = new SqlCommand("Update ExamSchedule set IsOpen='true' where PaperName='AptiQuestions'", connection.conn);
                cmd.ExecuteNonQuery();
            }
        }

        cmd = new SqlCommand("Select IsScheduled from ExamSchedule where PaperName='VerbalQuestions'", connection.conn);
        IsOpen = cmd.ExecuteScalar().ToString();
        if (IsOpen.Contains("true"))
        {
            cmd = new SqlCommand("Select DateScheduled from ExamSchedule where PaperName='VerbalQuestions'", connection.conn);
            dateScheduled = Convert.ToDateTime(cmd.ExecuteScalar());
            if (dateScheduled.Date == DateTime.Now.Date)
            {
                cmd = new SqlCommand("Update ExamSchedule set IsOpen='true' where PaperName='VerbalQuestions'", connection.conn);
                cmd.ExecuteNonQuery();
            }
        }

        cmd = new SqlCommand("Select IsScheduled from ExamSchedule where PaperName='QuantitativeQuestions'", connection.conn);
        IsOpen = cmd.ExecuteScalar().ToString();
        if (IsOpen.Contains("true"))
        {
            cmd = new SqlCommand("Select DateScheduled from ExamSchedule where PaperName='QuantitativelQuestions'", connection.conn);
            dateScheduled = Convert.ToDateTime(cmd.ExecuteScalar());
            if (dateScheduled.Date == DateTime.Now.Date)
            {
                cmd = new SqlCommand("Update ExamSchedule set IsOpen='true' where PaperName='QuantitativelQuestions'", connection.conn);
                cmd.ExecuteNonQuery();
            }
        }

        cmd = new SqlCommand("Select IsScheduled from ExamSchedule where PaperName='ProgrammingQuestion'", connection.conn);
        IsOpen = cmd.ExecuteScalar().ToString();
        if (IsOpen.Contains("true"))
        {
            cmd = new SqlCommand("Select DateScheduled from ExamSchedule where PaperName='ProgrammingQuestion'", connection.conn);
            dateScheduled = Convert.ToDateTime(cmd.ExecuteScalar());
            if (dateScheduled.Date == DateTime.Now.Date)
            {
                cmd = new SqlCommand("Update ExamSchedule set IsOpen='true' where PaperName='ProgrammingQuestion'", connection.conn);
                cmd.ExecuteNonQuery();
            }
        }
    }
    public void SetClose()
    {
        ConnectionClass connection = new ConnectionClass();
        connection.openConnection();
        SqlCommand cmd = new SqlCommand("Select IsScheduled from ExamSchedule where PaperName='AptiQuestions'", connection.conn);
        IsOpen = cmd.ExecuteScalar().ToString();
        if (IsOpen.Contains("true"))
        {
            cmd = new SqlCommand("Select DateScheduled from ExamSchedule where PaperName='AptiQuestions'", connection.conn);
            dateScheduled = Convert.ToDateTime(cmd.ExecuteScalar());
            if (dateScheduled.Date < DateTime.Now.Date)
            {
                cmd = new SqlCommand("Update ExamSchedule set IsOpen='false',IsScheduled='false' where PaperName='AptiQuestions'", connection.conn);
                cmd.ExecuteNonQuery();
            }
        }

        cmd = new SqlCommand("Select IsScheduled from ExamSchedule where PaperName='VerbalQuestions'", connection.conn);
        IsOpen = cmd.ExecuteScalar().ToString();
        if (IsOpen.Contains("true"))
        {
            cmd = new SqlCommand("Select DateScheduled from ExamSchedule where PaperName='VerbalQuestions'", connection.conn);
            dateScheduled = Convert.ToDateTime(cmd.ExecuteScalar());
            if (dateScheduled.Date < DateTime.Now.Date)
            {
                cmd = new SqlCommand("Update ExamSchedule set IsOpen='false',IsScheduled='false' where PaperName='VerbalQuestions'", connection.conn);
                cmd.ExecuteNonQuery();
            }
        }

        cmd = new SqlCommand("Select IsScheduled from ExamSchedule where PaperName='QuantitativeQuestions'", connection.conn);
        IsOpen = cmd.ExecuteScalar().ToString();
        if (IsOpen.Contains("true"))
        {
            cmd = new SqlCommand("Select DateScheduled from ExamSchedule where PaperName='QuantitativeQuestions'", connection.conn);
            dateScheduled = Convert.ToDateTime(cmd.ExecuteScalar());
            if (dateScheduled.Date < DateTime.Now.Date)
            {
                cmd = new SqlCommand("Update ExamSchedule set IsOpen='false',IsScheduled='false' where PaperName='QuantitativeQuestions'", connection.conn);
                cmd.ExecuteNonQuery();
            }
        }

        cmd = new SqlCommand("Select IsScheduled from ExamSchedule where PaperName='ProgrammingQuestion'", connection.conn);
        IsOpen = cmd.ExecuteScalar().ToString();
        if (IsOpen.Contains("true"))
        {
            cmd = new SqlCommand("Select DateScheduled from ExamSchedule where PaperName='ProgrammingQuestion'", connection.conn);
            dateScheduled = Convert.ToDateTime(cmd.ExecuteScalar());
            if (dateScheduled.Date < DateTime.Now.Date)
            {
                cmd = new SqlCommand("Update ExamSchedule set IsOpen='false',IsScheduled='false' where PaperName='ProgrammingQuestion'", connection.conn);
                cmd.ExecuteNonQuery();
            }
        }
    }

}