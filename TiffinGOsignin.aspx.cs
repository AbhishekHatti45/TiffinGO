using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TiffinGO
{
    public partial class TiffinGOsignin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("signupTiffinGO.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("select user_id,password,role from customer_info where user_id=@user_id and password=@password", con);
                cmd.Parameters.AddWithValue("@user_id", Textbox1.Text);
                cmd.Parameters.AddWithValue("@password", Textbox2.Text);

                SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adpt.Fill(ds);

                if (ds.Tables[0].Rows.Count == 1)
                {
                    string role = ds.Tables[0].Rows[0][2].ToString();
                    Session["user_id"] = Textbox1.Text;
                    Session["role"] = role;
                    if (role == "admin")
                    {
                        Response.Redirect("adminhome.aspx");
                    }
                    else
                    {
                        Response.Redirect("c_home.aspx");
                    }
                }
                else
                {
                    Response.Write("Invalid UserName or Password....Try again");
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}