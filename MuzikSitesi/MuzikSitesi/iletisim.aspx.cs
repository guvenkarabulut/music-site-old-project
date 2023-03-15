using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MuzikSitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_gonder_Click(object sender, EventArgs e)
        {
            Iletisim il = new Iletisim();
            il.Adi = txt_Adi.Value;
            il.Soyadi = txt_Soyadi.Value;
            il.Eposta = txt_eposta.Value;
            il.Mesaj = txt_mesaj.Value;
            il.ipAdresi = GetUserIP();
            new metotlar().İletisimKaydet(il);
        }
        public static string GetUserIP()
        {
            var IP = string.Empty;

            if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
                IP = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
            else if (HttpContext.Current.Request.ServerVariables["HTTP_CLIENT_IP"] != null && HttpContext.Current.Request.ServerVariables["HTTP_CLIENT_IP"].Length != 0)
                IP = HttpContext.Current.Request.ServerVariables["HTTP_CLIENT_IP"];
            else if (HttpContext.Current.Request.UserHostAddress.Length != 0)
                IP = HttpContext.Current.Request.UserHostName;
            return IP;
        }
    }
}