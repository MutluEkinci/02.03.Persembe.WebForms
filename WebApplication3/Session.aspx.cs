using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["data"] = "Denemeler";
            Session.Timeout = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write(Session["data"]);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
        }
    }
}