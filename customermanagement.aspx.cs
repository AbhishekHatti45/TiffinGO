using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TiffinGO
{
    public partial class customermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(strcon); if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }

            SqlCommand cmd = new SqlCommand("DELETE  from customer_info where user_id=@user_id ", cn);
            cmd.Parameters.AddWithValue("@user_id", Textbox5.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script>alert('CustomerID Deleted Successfully!!!');</script> ");
            clearform();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        void clearform()
        {
            Textbox5.Text = "";
            Textbox1.Text = "";
            Textbox3.Text = "";
            Textbox4.Text = "";
            Textbox2.Text = "";

            Textbox8.Text = "";
            Textbox6.Text = "";
            Textbox7.Text = "";
            Textbox9.Text = "";
            Image2.ImageUrl = "";
            Label2.Text = "";

        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {

            SqlConnection cn = new SqlConnection(strcon); 
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from customer_info where user_id=@user_id ", cn);
            cmd.Parameters.AddWithValue("@user_id", Textbox5.Text);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                while (dr.Read())
                {
                    Textbox5.Text = dr.GetValue(9).ToString();
                    Textbox1.Text = dr.GetValue(1).ToString();
                    Textbox3.Text = dr.GetValue(3).ToString();
                    Textbox4.Text = dr.GetValue(4).ToString();
                    Textbox2.Text = dr.GetValue(2).ToString();

                    Textbox8.Text = dr.GetValue(5).ToString();
                    Textbox6.Text = dr.GetValue(6).ToString();
                    Textbox7.Text = dr.GetValue(7).ToString();
                    Textbox9.Text = dr.GetValue(8).ToString();
                    Image2.ImageUrl = dr.GetValue(12).ToString();

                    Label2.Text = Textbox5.Text.ToString();

                }
            }
            else
            {

                Response.Write("<script>alert('Invalid Credentials');</script> ");
            }

        }
    }
}