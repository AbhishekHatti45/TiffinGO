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
    public partial class AddSubscription : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
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

           
        }

      

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("insert into subscription (SubscriptionType,image,description,price,foodtype )" + "values(@SubscriptionType,@image,@description,@price,@foodtype  )", cn);
            cmd.Parameters.AddWithValue("@SubscriptionType", Textbox1.Text);
            cmd.Parameters.AddWithValue("@image", Image2.ImageUrl);
            cmd.Parameters.AddWithValue("@description", Textbox3.Text);
            cmd.Parameters.AddWithValue("@price", Textbox4.Text);
            cmd.Parameters.AddWithValue("@foodtype", DropDownList1.SelectedItem.Value);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Label1.Text = "subscription  added successfully";

            Response.Write("<script>alert ('Subscription added successfully');</script>");

            clearform();
        }
        void clearform()
        {
            Textbox1.Text = "";
            DropDownList1.SelectedItem.Value = "";

            Textbox4.Text = "";
            Textbox3.Text = "";
            Image2.ImageUrl = "";




        }
    }
}