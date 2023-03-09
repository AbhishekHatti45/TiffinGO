using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TiffinGO
{
    public partial class subscription2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["foodtype"] != null)
            {
                HiddenField1.Value = Request.QueryString["foodtype"].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            Label answerLabel = (Label)button.NamingContainer.FindControl("Label16");
            Response.Redirect("mycart.aspx?id=" + answerLabel.Text);
        }
    }
}