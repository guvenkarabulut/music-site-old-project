using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MuzikSitesi
{
    public partial class giris : System.Web.UI.Page
    {
        muzikSitesiDbEntities db = new muzikSitesiDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            Kullanici k = db.Kullanici.Where(x=>x.kullanici_Adi==txtKullaniciAdi.Text && x.kullanici_Sifre==txtSifre.Text).SingleOrDefault();
            if (k == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Giriş Bilgileri Yanlış Lütfen Kontrol Ediniz." + "');", true);
            }
            else if (k != null)
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        protected void lbSifremiUnuttum_Click(object sender, EventArgs e)
        {
            Response.Redirect("sifremiunuttum.aspx");
        }

        protected void lbKayıtOl_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayit.aspx");
        }
    }
}