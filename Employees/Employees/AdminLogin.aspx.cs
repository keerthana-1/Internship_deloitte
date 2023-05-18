using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employees
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection("Data Source=LAPTOP-6OUG6R2R;Initial Catalog=Employee;Integrated Security=True");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from Registration where Username='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox2.Text.Trim() + "' AND Role= 'Admin' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert(' Signed In ');</script>");
                        Session["Username"] = dr.GetValue(4).ToString();
                        Session["FullName"] = dr.GetValue(1).ToString();
                        Session["role"] = "Admin";
                    }
                    Response.Redirect("AdminPage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}