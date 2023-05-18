<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="Employees.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
 

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <asp:FormView ID="EmployeeFormView" DataKeyNames="EmployeeID" RunAt="server" 
         AllowPaging="true" onpageindexchanging="EmployeeFormView_PageIndexChanging"
          onitemupdated="EmployeeFormView_ItemUpdated"  onitemupdating="EmployeeFormView_ItemUpdating"     
        onmodechanging="EmployeeFormView_ModeChanging" >          
         <ItemTemplate>

                  <table class="table table-borderless">

                    <tr><td ><b>Employee ID</b></td><td><%# Eval("EmployeeID") %></td></tr>

                    <tr><td ><b>First Name</b></td> <td><%# Eval("Name") %></td></tr>

                    <tr><td ><b>Last Name</b></td>  <td><%# Eval("Contact") %></td></tr>

                    <tr><td ><b>Address</b></td>  <td><%# Eval("Address")%></td></tr>

                    <tr><td ><b>Designation</b></td>  <td><%# Eval("EmergencyContact")%></td></tr>
                    <tr><td ><b>PAN</b></td>  <td><%# Eval("PAN")%></td></tr>
                      <tr><td ><b>Certifications</b></td>  <td><%# Eval("Certifications")%></td></tr>
                    <tr>

                      <td colspan="2">
                          <div class="form-group">
                        <asp:LinkButton ID="EditButton" class="btn btn-dark"  Text="Edit"  CommandName="Edit"  RunAt="server"/>     
                        </div>
                          &nbsp;
                      </td>

                    </tr>

                  </table>                

                </ItemTemplate>

 

                <EditItemTemplate>

                  <table class="table table-borderless">

                    <tr><td ><b>Employee ID:</b></td>

                        <td><asp:TextBox CssClass="form-control" ID="txtEmployeeID2" Text='<%# Bind("EmployeeID") %>' RunAt="Server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmployeeID2" ErrorMessage="Please enter Id"   
 ForeColor="Red"></asp:RequiredFieldValidator> 
                        </td></tr>
                          

                    <tr><td ><b>Name:</b></td>

                        <td><asp:TextBox CssClass="form-control" ID="txtName2" Text='<%# Bind("Name") %>'  RunAt="Server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName2" ErrorMessage="Please enter Name"   
 ForeColor="Red"></asp:RequiredFieldValidator> 
                        </td></tr>

  

                    <tr><td ><b>Contact</b></td>

                        <td><asp:TextBox CssClass="form-control" ID="txtContact2" Text='<%# Bind("Contact") %>' RunAt="Server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContact2" ErrorMessage="Please enter Contact"   
 ForeColor="Red"></asp:RequiredFieldValidator> </td></tr>


                    <tr><td ><b>Address:</b></td>

                        <td><asp:TextBox CssClass="form-control" ID="txtAddress2" Text='<%# Bind("Address") %>' RunAt="Server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress2" ErrorMessage="Please enter Address"   
 ForeColor="Red"></asp:RequiredFieldValidator> 
                        </td></tr>


                    <tr><td ><b>EmergencyContact</b></td>

                        <td><asp:TextBox CssClass="form-control" ID="txtEmergencyContact2" Text='<%# Bind("EmergencyContact") %>' RunAt="Server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmergencyContact2" ErrorMessage="Please enter EmergencyContact"   
 ForeColor="Red"></asp:RequiredFieldValidator> 
                        </td></tr>  

                                         
                      <tr><td ><b>PAN</b></td>

                        <td><asp:TextBox CssClass="form-control" ID="txtPAN2" Text='<%# Bind("PAN") %>'  RunAt="Server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPAN2" ErrorMessage="Please enter PAN"   
 ForeColor="Red"></asp:RequiredFieldValidator> 
                        </td></tr> 
                                        
                      <tr><td ><b>Certifications</b></td>

                        <td><asp:TextBox CssClass="form-control" ID="txtCertifications2"  Text='<%# Bind("Certifications") %>' RunAt="Server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCertifications2" ErrorMessage="Please enter Certifications"   
 ForeColor="Red"></asp:RequiredFieldValidator> 
                        </td></tr>                  

                    <tr>

                      <td colspan="2">
                          <div class="form-group">
                        <asp:LinkButton class="btn btn-dark" ID="UpdateButton" Text="Update" CommandName="Update" RunAt="server"/>
                      </div>
                      </td>

                    </tr>

                  </table>                

                </EditItemTemplate>

               </asp:FormView>

</asp:Content>
