<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> </title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <h2 style="color:white;background-color:black;text-align:center;font-weight:bold">OCR Form Recognition</h2>
    <br />
    <div class="container">
        <div class="row">
         <div class="col-md-5 mx-auto">
            <div class="card">
               <div class="card-body">
                  
    <form id="form1" runat="server" >
        <br />        
        <h3>Upload a file</h3><br />
        <div class="form-group">
        <asp:FileUpload ID="FileUpload"   runat="server" /><br />
            </div>
        <p>
        <asp:Button ID="Button" class="btn btn-dark" runat="server" OnClick="OnUpload" Text="Upload" />
        </p>
            
    </form>
    </div>
               </div>
            </div>
          </div>
      </div>
</body>
</html>
