using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Employees
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Id = (string)Application["ID"];
        }
        /// <summary>
        /// update Password of the user in database 
        /// </summary>
        
        protected void ChangePassword(object sender, EventArgs e)
        {
            SqlConnection con3 = new SqlConnection(strcon);
            SqlCommand cmd;
            cmd = new SqlCommand("changepassword", con3);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", Id);
            cmd.Parameters.AddWithValue("@Password", NewPassword.Text);
           
            con3.Open();
            int i = cmd.ExecuteNonQuery();
            con3.Close();
            Response.Write("<script>alert(Password Changed)</script>");
        }
    }
}