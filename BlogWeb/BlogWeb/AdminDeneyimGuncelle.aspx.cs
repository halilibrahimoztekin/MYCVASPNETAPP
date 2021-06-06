using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminDeneyimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSet1TableAdapters.TBLDENEYIMTableAdapter dt = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
            GuncellemeID.Text = x.ToString();
            GuncellemeID.Enabled = false;
            if (Page.IsPostBack == false)
            {
                BaslikText.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].BASLIK;
                AltbaslikText.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].ALTBASLIK;
                AciklamaText.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].ACIKLAMA;
                TarihText.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].TARIH;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLDENEYIMTableAdapter dt = new DataSet1TableAdapters.TBLDENEYIMTableAdapter();
            dt.DeneyimGuncelle(BaslikText.Text, AltbaslikText.Text, AciklamaText.Text, TarihText.Text, Convert.ToInt32(GuncellemeID.Text));
            Response.Redirect("AdminDeneyimler.aspx");
        }
    }
}