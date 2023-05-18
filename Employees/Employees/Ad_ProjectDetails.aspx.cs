using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employees
{
    public partial class WebForm5 : System.Web.UI.Page
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
        /// <summary>
        ///Displaying data in grid view
        /// </summary>
        protected void ShowData()
        {
            dt = new DataTable();
            con = new SqlConnection(strcon);
            con.Open();
            adapt = new SqlDataAdapter("ShowProjects", con);
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
        /// <summary>
        /// updating database after editing in grid view
        /// </summary>
        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  

            Label ProjectName = GridView1.Rows[e.RowIndex].FindControl("lbl_ProjectName") as Label;
            TextBox Coach = GridView1.Rows[e.RowIndex].FindControl("txt_Coach") as TextBox;
            TextBox Mentor = GridView1.Rows[e.RowIndex].FindControl("txt_Mentor") as TextBox;
            TextBox CoachEmail = GridView1.Rows[e.RowIndex].FindControl("txt_CoachEmail") as TextBox;
            TextBox MentorEmail = GridView1.Rows[e.RowIndex].FindControl("txt_MentorEmail") as TextBox;

            con = new SqlConnection(strcon);

            //updating the record  
            SqlCommand cmd1;
            cmd1 = new SqlCommand("UpdateProject", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@Name", ProjectName.Text);
            cmd1.Parameters.AddWithValue("@Contact", Coach.Text);
            cmd1.Parameters.AddWithValue("@Address", Mentor.Text);
            cmd1.Parameters.AddWithValue("@EmergencyContact", CoachEmail.Text);
            cmd1.Parameters.AddWithValue("@PAN", MentorEmail.Text);
            
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

        public override void VerifyRenderingInServerForm(Control control)
        {
            //required to avoid the runtime error "  
            //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
        }
        protected void ExportClick(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }
        /// <summary>
        /// Expoting Data to Excel
        /// </summary>
        private void ExportGridToExcel()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Projects" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView1.GridLines = GridLines.Both;
            GridView1.HeaderStyle.Font.Bold = true;
            GridView1.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();

        }

    }
}