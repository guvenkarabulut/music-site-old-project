using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MuzikSitesi
{
    public partial class kayit : System.Web.UI.Page
    {
        muzikSitesiDbEntities db = new muzikSitesiDbEntities(); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (txtAd.Text =="" || txtSoyad.Text=="" || txtKullaniciAdi.Text == "" || txtSifre.Text=="")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Lütfen Alanları Kontrol Ediniz." + "');", true);

            }
            else
            {
                Kullanici k = new Kullanici();
                k.kullanici_Ad = txtAd.Text;
                k.kullanici_Soyad = txtSoyad.Text;
                k.kullanici_Adi = txtKullaniciAdi.Text;
                k.kullanici_Mail = txtMail.Text;
                k.kullanici_Sifre = txtSifre.Text;
                k.kullaniciTuruID = 1;
                k.aktifMi = "true";
                db.Kullanici.Add(k);
                int sonuc = db.SaveChanges();
                
                if (sonuc != 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Kayıt İşlemi Başarılı." + "');", true);
                    txtAd.Text = "";
                    txtSoyad.Text = "";
                    txtKullaniciAdi.Text = "";
                    txtMail.Text = "";
                    txtSifre.Text = "";
                    Response.Redirect("giris.aspx");
                }

            }

        }
    }
}