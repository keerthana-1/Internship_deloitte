using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


namespace Employees
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string Id;
        SqlDataAdapter sqlda = new SqlDataAdapter();

        SqlCommand com = new SqlCommand();

        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = (string)Application["ID"];
            if (!IsPostBack)
            {
                bindgrid();
            }
        }
        private void bindgrid()

        {

            SqlConnection conn = new SqlConnection(strcon);

            dt = new DataTable();

            conn.Open();
            SqlCommand command = new SqlCommand("DetailsOnID", conn);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@EmployeeID", SqlDbType.Int).Value = Convert.ToInt32(Id);
            sqlda = new SqlDataAdapter(command);
            
            sqlda.Fill(dt);

            EmployeeFormView.DataSource = dt;

            EmployeeFormView.DataBind();

        }
        protected void EmployeeFormView_PageIndexChanging(object sender, FormViewPageEventArgs e)

        {

            EmployeeFormView.PageIndex = e.NewPageIndex;

            bindgrid();

        }
        /// <summary>
        /// Updating the form data to database
        /// </summary>
        
        protected void EmployeeFormView_ItemUpdating(object sender, FormViewUpdateEventArgs e)

        {

            TextBox txtEmployeeID = (TextBox)EmployeeFormView.FindControl("txtEmployeeID2");

            TextBox txtName = (TextBox)EmployeeFormView.FindControl("txtName2");

            TextBox txtContact= (TextBox)EmployeeFormView.FindControl("txtContact2");

            TextBox txtAddress = (TextBox)EmployeeFormView.FindControl("txtAddress2");
            TextBox txtEmergencyContact = (TextBox)EmployeeFormView.FindControl("txtEmergencyContact2");
            TextBox txtPAN = (TextBox)EmployeeFormView.FindControl("txtPAN2");
            TextBox txtCertifications = (TextBox)EmployeeFormView.FindControl("txtCertifications2");

            SqlConnection conn = new SqlConnection(strcon);

            com.Connection = conn;

            com = new SqlCommand("Edit", conn);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@ID", Convert.ToInt32(Id));
            com.Parameters.AddWithValue("@EmployeeID", txtEmployeeID.Text);
            com.Parameters.AddWithValue("@Name",txtName.Text);
            com.Parameters.AddWithValue("@Contact", txtContact.Text);
            com.Parameters.AddWithValue("@Address", txtAddress.Text);
            com.Parameters.AddWithValue("@EmergencyContact", txtEmergencyContact.Text);
            com.Parameters.AddWithValue("@PAN", txtPAN.Text);
            com.Parameters.AddWithValue("@Certifications", txtCertifications.Text);

            conn.Open();        

            com.ExecuteNonQuery();

            Response.Write("<script>alert(Record updated successfully)</script>");

            bindgrid();

            conn.Close();

        }

        protected void EmployeeFormView_ItemUpdated(object sender, FormViewUpdatedEventArgs e)

        {

            EmployeeFormView.ChangeMode(FormViewMode.ReadOnly);

        }
        protected void EmployeeFormView_ModeChanging(object sender, FormViewModeEventArgs e)

        {

            EmployeeFormView.ChangeMode(e.NewMode);

            bindgrid();

            if (e.NewMode == FormViewMode.Edit)
            {
                EmployeeFormView.AllowPaging = false;
            }
            else
            {
                EmployeeFormView.AllowPaging = true;
            }

        }
  

    }
}