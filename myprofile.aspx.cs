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
    public partial class myprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (Session["user_id"].ToString() == "" || Session["user_id"] == null)
            {

                Response.Write("<script>alert ('Session Expired Login Again!!!');</script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }

                    SqlCommand cmd = new SqlCommand("select * from customer_info where user_id= '" + Session["user_id"].ToString() + "' ;", con);
                    if (Session["user_id"] != null)
                    {

                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable ds = new DataTable();
                        da.Fill(ds);
                        Textbox1.Text = ds.Rows[0]["full_name"].ToString();
                        Textbox2.Text = ds.Rows[0]["dob"].ToString();
                        Textbox3.Text = ds.Rows[0]["contact_no"].ToString();
                        Textbox4.Text = ds.Rows[0]["email"].ToString();
                        DropDownList1.SelectedValue = ds.Rows[0]["state"].ToString();
                        Textbox6.Text = ds.Rows[0]["city"].ToString();
                        Textbox7.Text = ds.Rows[0]["pincode"].ToString();
                        Textbox5.Text = ds.Rows[0]["full_address"].ToString();
                        Textbox8.Text = ds.Rows[0]["user_id"].ToString();
                        Textbox9.Text = ds.Rows[0]["password"].ToString();
                        Image2.ImageUrl = ds.Rows[0]["image"].ToString();
                    }

                }
            }


            if (Session["user_id"] != null)
            {

                Label2.Text = Session["user_id"].ToString();


            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (Session["user_id"].ToString() == "" || Session["user_id"] == null)
            {

                Response.Write("<script>alert ('Session Expired Login Again!!!');</script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                string password = "";
                if (Textbox10.Text.Trim() == "")
                {
                    password = Textbox9.Text.Trim();
                }
                else
                {
                    password = Textbox10.Text.Trim();
                }
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("update  customer_info set full_name=@full_name,dob=@dob,contact_no=@contact_no,email=@email,state=@state, city=@city, pincode=@pincode,full_address=@full_address,user_id=@user_id,password=@password WHERE user_id= '" + Session["user_id"].ToString() + "' ;", con);
                if (Session["user_id"] != null)
                {
                    cmd.Parameters.AddWithValue("@full_name", Textbox1.Text);
                    cmd.Parameters.AddWithValue("@dob", Textbox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@contact_no", Textbox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", Textbox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@city", Textbox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@pincode", Textbox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@full_address", Textbox5.Text.Trim());

                    cmd.Parameters.AddWithValue("@user_id", Textbox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", password);


                    cmd.ExecuteNonQuery();


                    Response.Write("<script>alert ('Your Details Updated Successfully!!!');</script>");
                }

                con.Close();

            }

        }
    }
}