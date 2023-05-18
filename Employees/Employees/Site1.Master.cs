using System;

namespace Employees
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               
                if (Application["role"]==null)
                {
                    Home.Visible = true;///Home
                    SignOut.Visible = false; // logout link button
                    EmpEdit.Visible = false;//Edit Info
                    Password.Visible = false;//Change password
                    EmpSal.Visible = false; //Salary and performance
                    EmpProj.Visible = false; //Project
                    EmpAttend.Visible = false; //Attendance
                    AdmEmp.Visible = false; // Employee
                    AdmSal.Visible = false;//salary
                   
                    AdmProj.Visible = false; //Project
                    AdmAttend.Visible = false; //Attendance
                    CreateUser.Visible = false; //CreateUser
                }
                else if (Application["role"].Equals("1"))
                {
                    Home.Visible = false;///Home
                    SignOut.Visible = true; // logout link button
                    EmpEdit.Visible = true;//Edit Info
                    Password.Visible = true;//Change password
                    EmpSal.Visible = true; //Salary and performance
                    EmpProj.Visible = true; //Project
                    EmpAttend.Visible = true; //Attendance
                    AdmEmp.Visible = false; // Employee
                    AdmSal.Visible = false;//salary
                    
                    AdmProj.Visible = false; //Project
                    AdmAttend.Visible = false; //Attendance
                    CreateUser.Visible = false; //CreateUser
                }
                else if (Application["role"].Equals("2"))
                {
                    Home.Visible = false;///Home
                    SignOut.Visible = true; // logout link button
                    EmpEdit.Visible = false;//Edit Info
                    Password.Visible = false;//Change password
                    EmpSal.Visible = false; //Salary and performance
                    EmpProj.Visible = false; //Project
                    EmpAttend.Visible = false; //Attendance
                    AdmEmp.Visible = true; // Employee
                    AdmSal.Visible = true;//salary
                    
                    AdmProj.Visible = true; //Project
                    AdmAttend.Visible = true; //Attendance
                    CreateUser.Visible = true; //CreateUser
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void SignOutClick(object sender, EventArgs e)
        {
            Application["username"] = "";
            Application["fullname"] = "";
            Application["role"] = null;
            SignOut.Visible = false;
            
            Response.Redirect("SignIn.aspx");
        }
        protected void HomeClick(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");

        }
        protected void EmpEditClick(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeDetails.aspx");
        }
        protected void PasswordClick(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
        protected void EmpSalClick(object sender, EventArgs e)
        {
            Response.Redirect("SalaryandPerformance.aspx");
        }
        protected void EmpProjClick(object sender, EventArgs e)
        {
            Response.Redirect("ProjectDetails.aspx");
        }
        protected void EmpAttendClick(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeDetails.aspx");
        }
        protected void AdmEmpClick(object sender, EventArgs e)
        {
            Response.Redirect("Ad_EmployeeDetails.aspx");
        }
        protected void AdmSalClick(object sender, EventArgs e)
        {
            Response.Redirect("Ad_SalaryDetails.aspx");
        }
       
        protected void AdmProjClick(object sender, EventArgs e)
        {
            Response.Redirect("Ad_ProjectDetails.aspx");
        }
        protected void AdmAttendClick(object sender, EventArgs e)
        {
            Response.Redirect("Ad_AttendanceDetails.aspx");
        }
        protected void CreateUserClick(object sender, EventArgs e)
        {
            Response.Redirect("MakeAdmin.aspx");
        }
    }
}