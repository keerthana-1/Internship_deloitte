using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Employees
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlDataAdapter adapt;
        SqlConnection con;

        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
            }
        }
        protected void ShowData()
        {
            dt = new DataTable();
            con = new SqlConnection(strcon);
            con.Open();
            adapt = new SqlDataAdapter("Attendance", con);
            adapt.SelectCommand.CommandType = CommandType.StoredProcedure;
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();
        }

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GridView1.EditIndex = e.NewEditIndex;
            ShowData();
        }
        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  
            Label EmployeeID = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
            TextBox LoginTime = GridView1.Rows[e.RowIndex].FindControl("txt_LoginTime") as TextBox;
            TextBox LogoutTime = GridView1.Rows[e.RowIndex].FindControl("txt_LogoutTime") as TextBox;
            con = new SqlConnection(strcon);

            //updating the record  
            SqlCommand cmd1;
            cmd1 = new SqlCommand("AttendanceEdit", con);
            cmd1.CommandType = CommandType.StoredProcedure;

            cmd1.Parameters.AddWithValue("@EmployeeID", Convert.ToInt32(EmployeeID.Text));
            cmd1.Parameters.AddWithValue("@LoginTime", Convert.ToDateTime(LoginTime.Text));
            cmd1.Parameters.AddWithValue("@LogoutTime", Convert.ToDateTime(LogoutTime.Text));
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }

        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            ShowData();
        }
    }
}