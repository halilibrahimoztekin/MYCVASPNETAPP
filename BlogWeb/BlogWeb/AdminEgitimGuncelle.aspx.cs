using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminEgitimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            txtguncelleme.Text = x.ToString();
            txtguncelleme.Enabled = false;
           
            if (Request.QueryString["ID"] != null)
            {
                if (Page.IsPostBack == false)
                {
                    txtbaslik.Text = dt.EgitimGetir(Convert.ToInt32(x))[0].BASLIK;
                    txtaltbaslik.Text = dt.EgitimGetir(Convert.ToInt32(x))[0].ALTBASLIK;
                    txtaciklama.Text = dt.EgitimGetir(x)[0].ACIKLAMA;
                    txtgno.Text = dt.EgitimGetir(x)[0].GNOT;
                    txttarih.Text = dt.EgitimGetir(x)[0].TARIH;
                }
            }
            else
            {

                Response.Write("<script LANGUAGE='JavaScript' >alert('ID Yok')</script>");
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            dt.EgitimGuncelle(txtbaslik.Text, txtaltbaslik.Text, txtaciklama.Text, txtgno.Text, txttarih.Text, Convert.ToInt32(txtguncelleme.Text));
            Response.Redirect("AdminEgitim.aspx");
        }
    }
}