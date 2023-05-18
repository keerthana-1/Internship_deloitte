using BusinessObjects;
using DataAccess;
using OCR;
using System;
using System.Configuration;
using System.IO;
using System.Windows;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void OnUpload(object sender, EventArgs e)
        {
            string filePath, extension;
            

            if (FileUpload.HasFile)
            {
                filePath = "C:/Users/AzureUser/Desktop/test/" + FileUpload.FileName;
                FileUpload.SaveAs(filePath);
                FileInfo fi = new FileInfo(filePath);
                extension = fi.Extension;
                try
                {
                    CallAPI f = new CallAPI();
                    FormProperties properties = f.FormRecognizer(filePath, extension);
                    if (properties == null)
                    {
                        LogError("null values");
                    }
                    else
                    {
                        Data data = new Data();
                        data.Insert(properties);
                    }
                }
                catch (Exception ex)
                {
                    LogError(ex.Message);
                }
            }
            else
            {
                MessageBox.Show("No File Uploaded.");
            }
        }
        public void LogError(string error)
        {
            using (StreamWriter writer = File.AppendText("C:/Users/AzureUser/Desktop/OCRlogs.txt"))
            {
                writer.WriteLine(error);
                
            }
        }

    }
   
}
   

    

               
            
           
  