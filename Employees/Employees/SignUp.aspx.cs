using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Employees
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// User Registration
        /// </summary>
        
        protected void SignUpClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd;
            cmd = new SqlCommand("register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EmployeeID", EmployeeID.Text);
            cmd.Parameters.AddWithValue("@FirstName", FirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", LastName.Text);
            cmd.Parameters.AddWithValue("@Email", Email.Text);
            cmd.Parameters.AddWithValue("@Username", Username.Text);
            cmd.Parameters.AddWithValue("@Password", Password.Text);
            cmd.Parameters.AddWithValue("@Role", 1);
            
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert(Sign Up Successful.);</script>");
            Response.Redirect("SignIn.aspx");

        }
    }
}