using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MuzikSitesi
{
    public partial class sifremiunuttum : System.Web.UI.Page
    {
        muzikSitesiDbEntities db = new muzikSitesiDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSifremiUnuttum_Click(object sender, EventArgs e)
        {
            Kullanici k = db.Kullanici.Where(x => x.kullanici_Mail == txtMail.Text).SingleOrDefault();
            if (k==null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Sistemde Böyle Bir Mail Adresi Yok Lütfen Kontrol Ediniz." + "');", true);

            }
            if (k!=null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Şifreniz:  " + k.kullanici_Sifre + "');", true);
            }

        }
    }
}