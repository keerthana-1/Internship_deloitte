using BusinessObjects;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows;


namespace DataAccess
{
    public class Data
    {
        public void Insert(FormProperties formProperties)
        {
            int Result;
            
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
                SqlCommand cmd = new SqlCommand("store",conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@EmployeeNumber", formProperties.EmpNo);
                cmd.Parameters.AddWithValue("@Name", formProperties.Name);
                cmd.Parameters.AddWithValue("@City", formProperties.City);
                cmd.Parameters.AddWithValue("@Number", formProperties.Number);
                cmd.Parameters.AddWithValue("@TotalAssets", formProperties.TotalAssets);
                cmd.Parameters.AddWithValue("@TotalIncome", formProperties.TotalIncome);
                conn.Open();
                Result = cmd.ExecuteNonQuery();
                cmd.Dispose();
                conn.Close();
                if (Result > 0)
                {
                    LogError("Data Saved");
                }
                else
                {
                    LogError("Data Not Saved");
                }
            }
            catch(Exception ex)
            {
                LogError(ex.Message);
            }
            
        }
        public void LogError(string Message)
        {
            using (StreamWriter writer = File.AppendText("C:/Users/AzureUser/Desktop/OCRlogs.txt"))
            {
                writer.WriteLine(Message);

            }
        }
    }
}

