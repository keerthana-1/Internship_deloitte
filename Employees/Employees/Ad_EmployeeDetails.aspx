<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ad_EmployeeDetails.aspx.cs" Inherits="Employees.WebForm9" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head"  runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
            <div class="row">
 
                <div class="col-sm-12">
                    <center>
                        <h3>
                        Employee Details</h3>
                    </center>
    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" Width="695px" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
   <Columns>  
          <asp:TemplateField>  
                    <ItemTemplate> <div class="form-group"> 
                        <asp:Button class="btn btn-dark" ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" /> </div> 
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group">
                        <asp:Button class="btn btn-success" ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                      <br />  <asp:Button class="btn btn-danger" ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                   </div> </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="EmployeeID">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("EmployeeID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("Name") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate> 
                        <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txt_Name" runat="server" Text='<%#Eval("Name") %>'></asp:TextBox>  
                   </div> </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Contact">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Contact" runat="server" Text='<%#Eval("Contact") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txt_Contact" runat="server" Text='<%#Eval("Contact") %>'></asp:TextBox>  
                   </div> </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Address" runat="server" Text='<%#Eval("Address") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txt_Address" runat="server" Text='<%#Eval("Address") %>'></asp:TextBox>  
                  </div>  </EditItemTemplate>  
                </asp:TemplateField>  
       <asp:TemplateField HeaderText="EmergencyContact">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_EmergencyContact" runat="server" Text='<%#Eval("EmergencyContact") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txt_EmergencyContact" runat="server" Text='<%#Eval("EmergencyContact") %>'></asp:TextBox>  
                  </div>  </EditItemTemplate>  
                </asp:TemplateField> 
       <asp:TemplateField HeaderText="PAN">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_PAN" runat="server" Text='<%#Eval("PAN") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txt_PAN" runat="server" Text='<%#Eval("PAN") %>'></asp:TextBox>  
                </div>    </EditItemTemplate>  
                </asp:TemplateField>  
        <asp:TemplateField HeaderText="Certifications">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Certifications" runat="server" Text='<%#Eval("Certifications") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txt_Certifications" runat="server" Text='<%#Eval("Certifications") %>'></asp:TextBox>  
               </div>     </EditItemTemplate>  
                </asp:TemplateField>  
            </Columns>  
        </asp:GridView>
&nbsp;<asp:Button class="btn btn-dark" ID="Button1" runat="server" Text="Export To Excel" OnClick="ExportClick" />
                </div></div></div>

</asp:Content>
