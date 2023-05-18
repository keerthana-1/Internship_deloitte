using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Employees
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        string Id;
        /// <summary>
        /// Displaying the salary and performance details of signedIn Employee
        /// </summary>
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Id = (string)Application["ID"];
            con = new SqlConnection(strcon);
            
            cmd = new SqlCommand("SalAndPer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@EmployeeID", SqlDbType.Int).Value = Id;

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Salary.Text = dr["Salary"].ToString();
                    Performance.Text = dr["Performance"].ToString();
                }

            }

            con.Close();
        }
    }
}