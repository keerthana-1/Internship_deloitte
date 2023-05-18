<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ad_AttendanceDetails.aspx.cs" Inherits="Employees.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">
 
                <div class="col-sm-12">
                    <center>
                        <h3>
                        Attendance Details</h3>
                    </center><asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" Width="695px" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
   <Columns>  
                <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button class="btn btn-dark" ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button class="btn btn-success" ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button class="btn btn-danger" ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="EmployeeID">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("EmployeeID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                 
                <asp:TemplateField HeaderText="LoginTime">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_LoginTime" runat="server" Text='<%#Eval("LoginTime") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_LoginTime" runat="server" Text='<%#Eval("LoginTime") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>
       <asp:TemplateField HeaderText="LogoutTime">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_LogoutTime" runat="server" Text='<%#Eval("LogoutTime") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_LogoutTime" runat="server" Text='<%#Eval("LogoutTime") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>
                
            </Columns>  
        </asp:GridView>
                    </div></div></div>
</asp:Content>
