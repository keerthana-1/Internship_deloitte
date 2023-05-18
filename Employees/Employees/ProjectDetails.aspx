<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="Employees.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%;" class="table table-borderless">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Project"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="Project" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Coach"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="Coach" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Mentor"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="Mentor" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="CoachMail"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="CoachMail" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="MentorMail"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="MentorMail" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
       </table>
    
</asp:Content>
