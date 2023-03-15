using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace MuzikSitesi
{
    public partial class galeriYonetim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Ekle_Boyutlandir_Click(object sender, EventArgs e)
        {
            if (fl_Galeri.FileName != "")
            {
                Galeri entity = new Galeri();
                entity.AktiflikDurumu = true;
                entity.EklenmeTarihi = DateTime.Now;
                entity.ResimAcıklama = txt_ResimAciklama.Value;
                entity.GaleriResim = fl_Galeri.FileName;
                fl_Galeri.SaveAs(Server.MapPath("Upload/Orjinal/" + fl_Galeri.FileName));
                System.Drawing.Bitmap Resim = new System.Drawing.Bitmap(Server.MapPath("Upload/Orjinal/" + fl_Galeri.FileName));
                Size boyut = new Size(1280, 400);
                Bitmap YeniResim = new Bitmap(Resim, boyut);
                YeniResim.Save(Server.MapPath("Upload/Duzenlenen/" + fl_Galeri.FileName));
                metotlar met = new metotlar();
                met.GaleriKaydet(entity);
                lbl_Mesaj.Text = "Ekleme Başarılı";
                GridView1.DataBind();
            }
        }
        protected void btn_Sil_Click(object sender, EventArgs e)
        {
            int galeriid = Convert.ToInt32((sender as Button).CommandArgument.ToString());
            metotlar met = new metotlar();
            met.SecilenGaleriResimSil(galeriid);
            GridView1.DataBind();

        }
    }
}