<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Employees.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
          <div class="col-md-15">
            <div class="card">
               <div class="card-body">
                   <div class="col-md-15">
                      
    <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label>
                       <div class="form-group">
<asp:TextBox CssClass="form-control" ID="CurrentPassword" runat="server"></asp:TextBox>
  
                       </div>

<asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
  <div class="form-group"><asp:TextBox CssClass="form-control" ID="NewPassword" TextMode="Password" runat="server"></asp:TextBox>
       
  </div>
<asp:Label ID="Label3"  runat="server" Text="Confirm Password"></asp:Label>
<div class="form-group"><asp:TextBox CssClass="form-control" ID="ConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>
    
</div>
 <div class="form-group">
<asp:Button class="btn btn-dark" ID="Button1" runat="server" OnClick="ChangePassword" Text="Change" />
</div>
    </div></div>
    </div></div>
         </div>
</asp:Content>
