using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace TiffinGO
{

    public partial class signupTiffinGO : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void But_Click(object sender, EventArgs e)
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
            if (checkMemberExists())
            {

                Response.Write("<script>alert('user Already Exist with this  ID, try other ID');</script>");
            }
            else
            {
                signupnewuser();
            }
        }


        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from CustomerInfo where user_id='" + T8.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void signupnewuser()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into customer_info ( full_name,dob,contact_no,email,state, city, pincode,full_address,user_id,password,image)values(@full_name,@dob,@contact_no,@email,@state, @city, @pincode,@full_address,@user_id,@password,@image)", con);

                cmd.Parameters.AddWithValue("@full_name", T1.Text);
                cmd.Parameters.AddWithValue("@dob", T2.Text);
                cmd.Parameters.AddWithValue("@contact_no", T3.Text);
                cmd.Parameters.AddWithValue("@email", T4.Text);
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", T5.Text);
                cmd.Parameters.AddWithValue("@pincode", T6.Text);
                cmd.Parameters.AddWithValue("@full_address", T7.Text);
                cmd.Parameters.AddWithValue("@user_id", T8.Text);
                cmd.Parameters.AddWithValue("@password", T9.Text);
                cmd.Parameters.AddWithValue("@image", Image2.ImageUrl);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert(' sigun up successfull! Go to login Page...');</script>");
                sendmail();
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        public void sendmail()
        {
            string to = Convert.ToString(T4.Text);
            //string to = ("Textbox1.Text"); //To address    
            string from = "abhiagrosales@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = "Your Registration to <b> Agrosales site</b> completed successfully";
            message.Subject = "Registraion to Agrosales site";
            message.Body = mailbody;
            //message.BodyEncoding = Encoding.UTF8;  
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("abhiagrosales@gmail.com", "abhi@1999");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            client.Send(message);

        }

        protected void T2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}