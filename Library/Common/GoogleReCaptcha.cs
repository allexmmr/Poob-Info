using Newtonsoft.Json.Linq;
using System.Net;

public static class GoogleReCaptcha
{
    public static bool Validate(string siteSecret, string response)
    {
        bool valid = false;

        WebClient webClient = new WebClient();
        string json = webClient.DownloadString($"https://www.google.com/recaptcha/api/siteverify?secret={siteSecret}&response={response}");
        JObject obj = JObject.Parse(json);

        if (obj["success"].Value<bool>())
            valid = true;

        return valid;
    }
}