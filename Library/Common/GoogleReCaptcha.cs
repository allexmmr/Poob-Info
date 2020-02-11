using Newtonsoft.Json.Linq;
using System.Configuration;
using System.IO;
using System.Net;
using System.Web;

namespace Library.Common
{
    public static class GoogleReCaptcha
    {
        public static bool Validate(out string errorMessage)
        {
            errorMessage = null;
            bool isValid = false;
            string captchaResponse = HttpContext.Current.Request.Form["g-recaptcha-response"];
            captchaResponse = captchaResponse?.TrimEnd(',');
            string secretKey = ConfigurationManager.AppSettings["SecretKey"];
            string apiUrl = "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}";
            string requestUri = string.Format(apiUrl, secretKey, captchaResponse);
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(requestUri);

            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    JObject jResponse = JObject.Parse(stream.ReadToEnd());
                    isValid = jResponse.Value<bool>("success") ? true : false;

                    if (!isValid)
                        errorMessage = "Falha ao validar o captcha.";
                }
            }

            return isValid;
        }
    }
}