using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TiffinGO
{
    public partial class customerTiffinGO : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] != null)
            {

                Label2.Text = Session["user_id"].ToString();


            }
            else
                Response.Redirect("TiffinGOsignin.aspx");
        }
    }
}