using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class db_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {
            int ID = Veritabani.UyeKontrol(txtUyeAdi.Text, txtSifre.Text);

            if (ID > 0)
            {
                Session["UyeID"] = ID;
                Session.Timeout = 1;
                Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Write("<h3>Yanlış kullanıcı adı veya şifre girdiniz.</h3>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(Veritabani.Md5(txtSifre.Text));
        }
    }
}