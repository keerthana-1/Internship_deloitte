<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Employees.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
        <div class="row">
         <div class="col-md-5 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                  </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>SignIn</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                                   
    <asp:Label ID="lbl_Username" runat="server" Text="UserName"></asp:Label>
               
<div class="form-group">
    <asp:TextBox CssClass="form-control" ID="Username" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="Please enter UserName"   
ForeColor="Red"></asp:RequiredFieldValidator> 
     </div>
    <asp:Label ID="lbl_Password" runat="server" Text="Password"></asp:Label>
<div class="form-group">
    <asp:TextBox CssClass="form-control" ID="Password" TextMode="Password" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Please enter Password"   
ForeColor="Red"></asp:RequiredFieldValidator> 
    </div>
    <div class="form-group">
    <asp:Button  class="btn btn-primary" ID="SignIn" runat="server" Text="SignIn" OnClick="SignInClick" />
   </div>
    <p>
      New User? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Register</asp:HyperLink>
     </p>    </div>
                  </div>
               </div>
            </div>
          </div>
      </div>
   </div> 
</asp:Content>
