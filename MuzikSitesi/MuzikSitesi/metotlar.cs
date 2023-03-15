using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MuzikSitesi
{
    public class metotlar
    {
        public bool İletisimKaydet(Iletisim iletisimBilgileri)
        {
            try
            {
                muzikSitesiDbEntities vt = new muzikSitesiDbEntities();
                vt.Iletisim.Add(iletisimBilgileri);
                vt.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public List<Iletisim> TumiletisimListele()
        {
            try
            {
                muzikSitesiDbEntities vt = new muzikSitesiDbEntities();
                return vt.Iletisim.OrderBy(p => p.iletisimID).ToList();
            }
            catch
            {
                return new List<Iletisim>();
            }

        }
        public List<Galeri> TumGaleriListele()
        {
            try
            {
                muzikSitesiDbEntities vt = new muzikSitesiDbEntities();
                return vt.Galeri.Where(p => p.AktiflikDurumu == true).ToList();

            }
            catch
            {

                return new List<Galeri>();
            }
        }
        public bool GaleriKaydet(Galeri GaleriBilgileri)
        {
            try
            {
                muzikSitesiDbEntities vt = new muzikSitesiDbEntities();
                vt.Galeri.Add(GaleriBilgileri);
                vt.SaveChanges();
                return true;
            }
            catch
            {

                return false;
            }
        }
        public bool SecilenGaleriResimSil(int glresim)
        {
            try
            {
                muzikSitesiDbEntities vt = new muzikSitesiDbEntities();
                var Kul = vt.Galeri.Where(p => p.GaleriID == glresim).SingleOrDefault();
                Kul.AktiflikDurumu = false;
                vt.SaveChanges();
                return true;

            }
            catch
            {

                return false;
            }
        }
    }
}