<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ad_ProjectDetails.aspx.cs" Inherits="Employees.WebForm5" EnableEventValidation="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">
 
                <div class="col-sm-12">
                    <center>
                        <h3>
                        Project Details</h3>
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
                 <asp:TemplateField HeaderText="ProjectName">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ProjectName" runat="server" Text='<%#Eval("[Project Name]") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="Coach">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Coach" runat="server" Text='<%#Eval("Coach") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txt_Coach" runat="server" Text='<%#Eval("Coach") %>'></asp:TextBox>  
                   </div> </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mentor">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Mentor" runat="server" Text='<%#Eval("Mentor") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txt_Mentor" runat="server" Text='<%#Eval("Mentor") %>'></asp:TextBox>  
                  </div>  </EditItemTemplate>  
                </asp:TemplateField>  
       <asp:TemplateField HeaderText="CoachEmail">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_CoachEmail" runat="server" Text='<%#Eval("CoachEmail") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txt_CoachEmail" runat="server" Text='<%#Eval("CoachEmail") %>'></asp:TextBox>  
                  </div>  </EditItemTemplate>  
                </asp:TemplateField> 
       <asp:TemplateField HeaderText="MentorEmail">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_MentorEmail" runat="server" Text='<%#Eval("MentorEmail") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="txt_MentorEmail" runat="server" Text='<%#Eval("MentorEmail") %>'></asp:TextBox>  
                </div>    </EditItemTemplate>  
                </asp:TemplateField>  
                   </Columns>  
        </asp:GridView>
&nbsp;<asp:Button class="btn btn-dark" ID="Button1" runat="server" OnClick="ExportClick" Text="Export To Excel" />
                </div></div></div>
</asp:Content>
