using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employees
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con;
        string Id;
        SqlCommand cmd;
        /// <summary>
        /// Displaying the project details of signedIn Employee
        /// </summary>
        
        protected void Page_Load(object sender, EventArgs e)
        {   Id = (string)Application["ID"];
            con = new SqlConnection(strcon);
            cmd = new SqlCommand("ProjDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@EmployeeID", SqlDbType.Int).Value = Id;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                while (dr.Read())
                {
                    Project.Text = dr["Project"].ToString();
                    Coach.Text = dr["Coach"].ToString();
                    Mentor.Text = dr["Mentor"].ToString();
                    CoachMail.Text = dr["CoachEmail"].ToString();
                    MentorMail.Text = dr["MentorEmail"].ToString();
                }
            }

            con.Close();
        }

    }
}