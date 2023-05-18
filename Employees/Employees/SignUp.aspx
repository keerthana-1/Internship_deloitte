<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Employees.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
          <div class="col-md-15">
            <div class="card">
               <div class="card-body">
                   <div class="col-md-15">
                      <h2 style="text-align:center">SignUp</h2> 
                       <hr />
    <asp:Label  ID="Label1" runat="server" Text="Employee ID:"></asp:Label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="EmployeeID" runat="server"></asp:TextBox>
      
        </div>
   
    <asp:Label   ID="Label2" runat="server" Text="FirstName:"></asp:Label>
    
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="FirstName" runat="server"></asp:TextBox>
        
        </div>
    
    <asp:Label  ID="Label3" runat="server" Text="LastName:"></asp:Label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="LastName" runat="server"></asp:TextBox>
         
        </div>
    
    <asp:Label  ID="Label4" runat="server" Text="Email:"></asp:Label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="Email" runat="server"></asp:TextBox>
        
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Enter valid Mail Id" ControlToValidate="Email"   ForeColor="Red"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> 

        </div>
    
    <asp:Label  ID="Label6" runat="server" Text="UserName:"></asp:Label>
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="Username" runat="server"></asp:TextBox>
        
        </div>
    
    <asp:Label  ID="Label5" runat="server" Text="Password:"></asp:Label>
    
    <div class="form-group">
    <asp:TextBox CssClass="form-control" ID="Password" runat="server"></asp:TextBox>
    
        </div>
    
    <div class="form-group">
    <asp:Button class="btn btn-dark " ID="Button1" runat="server" Text="Register" OnClick="SignUpClick" />
    </div>
    </div></div>
    </div></div></div>
    
    
</asp:Content>
