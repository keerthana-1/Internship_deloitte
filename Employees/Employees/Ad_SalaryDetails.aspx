<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ad_SalaryDetails.aspx.cs" Inherits="Employees.WebForm10" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">
 
                <div class="col-sm-12">
                    <center>
                        <h3>
                        Salary Details</h3>
                    </center> 
                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" Width="695px" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
   <Columns> 
                <asp:TemplateField>  
                    <ItemTemplate>  <div class="form-group"> 
                        <asp:Button class="btn btn-dark" ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  </div>
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group"> 
                        <asp:Button class="btn btn-success" ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button class="btn btn-danger" ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                   </div> </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="EmployeeID">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("EmployeeID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                 
                <asp:TemplateField HeaderText="Salary">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Salary" runat="server" Text='<%#Eval("Salary") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group"> 
                        <asp:TextBox CssClass="form-control" ID="txt_Salary" runat="server" Text='<%#Eval("Salary") %>'></asp:TextBox>  
                  </div>  </EditItemTemplate>  
                </asp:TemplateField>
       <asp:TemplateField HeaderText="Performance">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Performance" runat="server" Text='<%#Eval("Performance") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group"> 
                        <asp:TextBox CssClass="form-control" ID="txt_Performance" runat="server" Text='<%#Eval("Performance") %>'></asp:TextBox>  
                  </div>  </EditItemTemplate>  
                </asp:TemplateField>
                
            </Columns>  
        </asp:GridView>
                    
    <asp:Button class="btn btn-dark" ID="Button1" runat="server" OnClick="ExportClick" Text="Export To Excel" />
</div></div></div>

</asp:Content>
