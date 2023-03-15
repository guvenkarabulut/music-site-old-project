using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MuzikSitesi
{
    public partial class galeri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var GaleriResimler = new metotlar().TumGaleriListele();
            string galeriicerik = "";
            if (GaleriResimler.Count() > 3)
            {

            }
            else
            {
                galeriicerik += "<div class='gallery-grids'>";
                for (int i = 0; i < GaleriResimler.Count(); i++)
                {
                    if (i == 1)
                    {
                        galeriicerik += "<div class='gallery-grid grid2'><a href='upload/duzenlenen/" + GaleriResimler[i].GaleriResim + "'><img src='upload/duzenlenen/" + GaleriResimler[i].GaleriResim + "' alt=''></a><p>" +"</p></div>";

                    }
                    else
                    {
                        galeriicerik += "<div class='gallery-grid'><a href='upload/duzenlenen/" + GaleriResimler[i].GaleriResim + "'><img src='upload/duzenlenen/" + GaleriResimler[i].GaleriResim + "' alt=''></a><p>" +  "</p></div>";
                    }

                }


            }
            ltr_Galeri.Text = galeriicerik;

        }
    }
}