using BusinessObjects;
using Newtonsoft.Json.Linq;
using RestSharp;
using RestSharp.Authenticators;
using System;
using System.IO;
using System.Linq;
using System.Threading;
using System.Windows;

namespace OCR
{
    public class CallAPI
    { 
        public FormProperties FormRecognizer(string filePath,string extension)
        {
            string type;
            try
            {
                if (extension.Equals(".pdf"))
                {
                    type = "application/pdf";
                }
                else
                {
                    type = "image/jpeg";
                }

                FormProperties fp = new FormProperties();
                RestClient forms = new RestClient(baseUrl: "https://newformrecognizer.cognitiveservices.azure.com/formrecognizer/v2.0/custom/models/23ea0db7-9582-48c0-bbaf-6110bbe0a43d/analyze");
                forms.Authenticator = new FormRecognizerAuthenticator();
                byte[] contents = File.ReadAllBytes(path: filePath);
                RestRequest request = new RestRequest(Method.POST);
                request.AddHeader(name: "Content-Type", value: type)
                     .AddParameter(name: type, contents, ParameterType.RequestBody);
                IRestResponse response = forms.Execute(request);
                string resultUrl = Convert.ToString(response.Headers.FirstOrDefault(param => param.Name == "Operation-Location")?.Value);
                Console.Out.WriteLine(resultUrl);
                Uri uri = new Uri(resultUrl);
                RestRequest resultRequest = new RestRequest(uri, Method.GET);
                Thread.Sleep(millisecondsTimeout: 20000);
                IRestResponse resultResponse = forms.Execute(resultRequest);
                JObject result = JObject.Parse(resultResponse.Content);

                fp.EmpNo = Convert.ToInt32(result["analyzeResult"]["documentResults"][0]["fields"]["EmployeeNumber"]["text"].ToString().Replace(" ", ""));
                fp.Name = result["analyzeResult"]["documentResults"][0]["fields"]["Name"]["text"].ToString();
                fp.Number = result["analyzeResult"]["documentResults"][0]["fields"]["Number"]["text"].ToString();
                fp.City = result["analyzeResult"]["documentResults"][0]["fields"]["City"]["text"].ToString();
                fp.TotalAssets = Convert.ToInt32(result["analyzeResult"]["documentResults"][0]["fields"]["TotalAssets"]["text"].ToString().Replace(" ", "").Replace(",", ""));
                fp.TotalIncome = Convert.ToInt32(result["analyzeResult"]["documentResults"][0]["fields"]["Totalincome(loss)"]["text"].ToString().Replace(" ", "").Replace(",", ""));
                return fp;
            }
            catch(Exception)
            {
                return null;
            }
        }

    }
    public class FormRecognizerAuthenticator : IAuthenticator
    {

        public void Authenticate(IRestClient client, IRestRequest request)
        {

            request.AddHeader(name: "Ocp-Apim-Subscription-Key", value: "147b98ffec1f4630b2cfc7d2210338fb");
        }
    }

}
