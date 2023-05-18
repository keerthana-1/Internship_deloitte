<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SalaryandPerformance.aspx.cs" Inherits="Employees.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%;" class="table table-borderless">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Salary"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="Salary" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Performance"></asp:Label>
            </td>
            <td>
                <asp:TextBox CssClass="form-control" ID="Performance" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        </table>
</asp:Content>
