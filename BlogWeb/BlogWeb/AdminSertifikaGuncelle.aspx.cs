using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminSertifikaGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            txtid.Text = x.ToString();
            txtid.Enabled = false;
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter dt
                   = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();

                txtsertifika.Text = dt.SertifikaGetir(Convert.ToInt16(x))[0].SERTIFIKA;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();
            dt.SertifikaGuncelle(txtsertifika.Text, Convert.ToInt16(txtid.Text));
            Response.Redirect("AdminSertifikalar.aspx");
        }
    }
}