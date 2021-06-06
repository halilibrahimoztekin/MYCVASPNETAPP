using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminEgitimSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            if (Request.QueryString["ID"] != null)
            {
                dt.EgitimSil(x);
                Response.Redirect("AdminEgitim.aspx");
            }
            else
            { 

                Response.Write("<script LANGUAGE='JavaScript' >alert('ID Yok')</script>");
            }
        }
    }
}