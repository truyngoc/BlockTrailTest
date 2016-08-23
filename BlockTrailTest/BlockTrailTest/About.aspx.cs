using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Threading.Tasks;
using EdgeJs;

using HtmlAgilityPack;

using System.Net;
using System.Net.Http;

using System.Web.Script.Serialization;


namespace BlockTrailTest
{
    public partial class About : Page
    {
        public async Task Start()
        {
            var func = Edge.Func(@"
            return function (data, callback) {
                callback(null, 'Node.js welcomes ' + data);
            }
            ");

            Response.Write(await func(".NET demo"));
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            //Start().Wait(100);

            var dict = LoadUrl();

            Response.Write(dict["balance"]);
        }


        //public async Task<String> LoadLink()
        //{
        //    var link = "https://api.blocktrail.com/v1/BTC/address/1NcXPMRaanz43b1kokpPuYDdk6GGDvxT2T?api_key=MY_APIKEY";
        //    var httpClient = new HttpClient();
        //    var response = await httpClient.GetAsync(link);
        //    var result = await response.Content.ReadAsStringAsync();
           
        //    Response.Write(result);

        //    return result;
        //}


        public Dictionary<string, object> LoadUrl()
        {
            using (WebClient wc = new WebClient())
            {
                var link = "https://api.blocktrail.com/v1/BTC/address/1NcXPMRaanz43b1kokpPuYDdk6GGDvxT2T?api_key=MY_APIKEY";
                var json = wc.DownloadString(@link);

                JavaScriptSerializer ser = new JavaScriptSerializer();
                var dict = ser.Deserialize<Dictionary<string, object>>(json);

                return dict;
            }
        }
    }
}