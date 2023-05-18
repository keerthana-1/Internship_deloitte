using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Employees
{
    public partial class WebForm2 : System.Web.UI.Page
    {
       
        string strcon= ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// User SignIn
        /// </summary>
        protected void SignInClick(object sender, EventArgs e)
        {                         
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd1,cmd2,cmd;
            con.Open();

            cmd1 = new SqlCommand("counts", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.Add("@Username", SqlDbType.VarChar).Value = Username.Text.Trim();
            cmd1.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password.Text.Trim();
            Int32 count = Convert.ToInt32(cmd1.ExecuteScalar());
            cmd1.Dispose();
            cmd2 = new SqlCommand("GetID", con);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.Add("@Username", SqlDbType.VarChar).Value = Username.Text.Trim();
            cmd2.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password.Text.Trim();
            Int32 Id=Convert.ToInt32(cmd2.ExecuteScalar());
            Application["ID"] = Convert.ToString(Id);
            
            con.Close();
           if(count<1)
            {
                Response.Write("<script>alert(Invalid Credentials.);</script>");
                Response.Redirect("SignIn.aspx");
            }
            else
            {
                con.Open();
                cmd = new SqlCommand("GetRole", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = Username.Text.Trim();
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password.Text.Trim();
                
                Int32 role = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.Dispose();
                con.Close();
                Application["role"] = Convert.ToString(role);
                
                if(role==1)
                {
                    Response.Redirect("EmployeeDetails.aspx");
                }
                else if (role == 2)
                {
                    Response.Redirect("Ad_EmployeeDetails.aspx");
                }

            }
                 

        }
    }
}