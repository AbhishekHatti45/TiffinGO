using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TiffinGO
{
    public partial class subscriptionMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["subscriptionType"] != null)
            {
                HiddenField1.Value = Request.QueryString["subscriptionType"].ToString();
            }
        }
    }
}