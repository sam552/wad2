using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

namespace CodingTest2
{
    public class StudentDBLogic
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["c432018fa01g1ConnectionString"].ConnectionString);

        public ArrayList getCoursesList(string studentID)
        {
            ArrayList classNumbersList = new ArrayList();

            // define SQL SELECT query with parameters
            string selectSQLCommand = "Select classNumber From Enroll WHERE stuId = @stuId";
            try
            {
                // create a command object
                SqlCommand command = new SqlCommand(selectSQLCommand, connection);
                command.Parameters.Add("@stuId", SqlDbType.VarChar).Value = studentID;
                // open connection, execute SELECT, close connection
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    classNumbersList.Add(reader.GetValue(0).ToString());
                }
                reader.Close();
                command.Dispose();
                connection.Close();
                return classNumbersList;
            }
            catch
            {
                return null;
            }
        }

        public int getFaccount(string facultyId)
        {
            

            // define SQL SELECT query with parameters
            string selectSQLCommand = "SELECT classNumber FROM Class WHERE facId = @facId";
            try
            {
                // create a command object
                SqlCommand command = new SqlCommand(selectSQLCommand, connection);
                command.Parameters.Add("@facId", SqlDbType.VarChar).Value = facultyId;
                // open connection, execute SELECT, close connection
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                int count = 0;
                while (reader.Read())
                {
                    count++;
                }
                reader.Close();
                command.Dispose();
                connection.Close();
                return count;
            }
            catch
            {
                return -1;
            }
        }
    }
}