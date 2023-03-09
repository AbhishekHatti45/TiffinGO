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
    public partial class SubscriptionManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            myTable.DataBind();
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection cn = new SqlConnection(strcon);
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from subscription where id=@id ", cn);
            cmd.Parameters.AddWithValue("@id", p1.Text);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                while (dr.Read())
                {
                    p1.Text = dr.GetValue(0).ToString();
                    p2.Text = dr.GetValue(1).ToString();
                    p3.SelectedValue = dr.GetValue(5).ToString();
                    p4.Text = dr.GetValue(4).ToString();
                    p5.Text = dr.GetValue(3).ToString();


                    Image2.ImageUrl = dr.GetValue(2).ToString();

                }
            }
            else
            {

                Response.Write("<script>alert('Invalid Credentials');</script> ");
            }
        }

        void clearform()
        {
            p1.Text = "";
            p2.Text = "";
            p3.SelectedValue = "";
            p4.Text = "";
            p5.Text = "";


            Image2.ImageUrl = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(strcon);
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }

            SqlCommand cmd = new SqlCommand("DELETE  from subscription where id=@id ", cn);
            cmd.Parameters.AddWithValue("@id", p1.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script>alert('Subscription Deleted Successfully!!!');</script> ");
            clearform();
            myTable.DataBind();
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs("C:/Users/hp/source/repos/TiffinGO/IMAGES/" + FileUpload1.FileName);
                Label2.Text = "File uploaded" + FileUpload1.FileName;
                Image2.ImageUrl = "IMAGES/" + FileUpload1.FileName;
            }
            else
                Label2.Text = "File not uploaded";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            update();
            clearform();
        }

        void update()
        {
            SqlConnection cn = new SqlConnection(strcon);

            if ("id" == null)
            {

            }
            else
            {
                if (cn.State == ConnectionState.Closed)
                {
                    cn.Open();

                }
                SqlCommand cmd = new SqlCommand("update  subscription set SubscriptionType=@SubscriptionType ,image=@image,description=@description,price=@price,foodtype=@foodtype WHERE id=@id", cn);
                if ("id" != null)
                {
                    cmd.Parameters.AddWithValue("@id", p1.Text.Trim());
                    cmd.Parameters.AddWithValue("@SubscriptionType", p2.Text.Trim());
                    cmd.Parameters.AddWithValue("@image", Image2.ImageUrl);
                    cmd.Parameters.AddWithValue("@description", p5.Text);
                    cmd.Parameters.AddWithValue("@price", p4.Text);
                    cmd.Parameters.AddWithValue("@foodtype", p3.SelectedItem.Value);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert ('Subscription Details Updated Successfully!!!');</script>");



                    myTable.DataBind();
                }

                cn.Close();
            }



        }
    }
}