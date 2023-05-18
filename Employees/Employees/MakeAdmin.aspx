<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MakeAdmin.aspx.cs" Inherits="Employees.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
          <div class="col-md-15">
            <div class="card">
               <div class="card-body">
                   <div class="col-md-15">
                      <h2 style="text-align:center">Create New User</h2> 
                       <hr />
    <asp:Label ID="Label1" runat="server" Text="EmployeeID"></asp:Label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="EmployeeID" runat="server"></asp:TextBox>
        </div>
    
    <asp:Label ID="Label2" runat="server" Text="FirstName"></asp:Label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="FirstName" runat="server"></asp:TextBox>
        </div>
    
    <asp:Label ID="Label3" runat="server" Text="LastName"></asp:Label>
        <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="LastName" runat="server"></asp:TextBox>
            </div>
    
    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="Email" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Enter valid Mail Id" ControlToValidate="Email"   ForeColor="Red"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> </div>
    
    <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="Username" runat="server"></asp:TextBox>
        </div>
   
    <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="Password" runat="server"></asp:TextBox>
        </div>
   
    <asp:Label ID="Label7" runat="server" Text="Select Role"></asp:Label>
  <div class="form-group">
    <asp:DropDownList CssClass="form-control" ID="RolesList1" runat="server" >
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>User</asp:ListItem>
    </asp:DropDownList>
      </div>
    
    <div class="form-group">
    <asp:Button class="btn btn-dark" ID="Button1" runat="server" OnClick="CreateClick" Text="Create User" />
    </div>
     </div></div>
      </div></div></div>
</asp:Content>
