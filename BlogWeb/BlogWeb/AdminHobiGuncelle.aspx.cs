using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminHobiGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            txtid.Text = x.ToString();
            txtid.Enabled = false;
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLHOBILERTableAdapter dt
                   = new DataSet1TableAdapters.TBLHOBILERTableAdapter();

                txthobi.Text = dt.HobiGetir(Convert.ToInt16(x))[0].HOBI;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLHOBILERTableAdapter dt = new DataSet1TableAdapters.TBLHOBILERTableAdapter();
            dt.HobiGuncelle(txthobi.Text, Convert.ToInt16(txtid.Text));
            Response.Redirect("AdminHobiler.aspx");
        }
    }
}