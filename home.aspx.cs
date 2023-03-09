using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TiffinGO
{
    public partial class home : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO contactus(name,EmailAddress,subject,message) values( @name,@EmailAddress,@subject,@message  )", con);
                cmd.Parameters.AddWithValue("@name", t1.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailAddress", t2.Text.Trim());
                cmd.Parameters.AddWithValue("@subject", t3.Text.Trim());
                cmd.Parameters.AddWithValue("@message", t4.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert(' your message received Successfully,we will contact you shortly!');</script>");
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}