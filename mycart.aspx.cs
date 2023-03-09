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
    public partial class mycart : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                HiddenField1.Value = Request.QueryString["id"].ToString();
                Button1.Visible = true;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("insert into mycart ( user_id, pid,status)values(@user_id,@pid,'pending') ", con);
            cmd.Parameters.AddWithValue("@user_id", Session["user_id"]);
            cmd.Parameters.AddWithValue("@pid", HiddenField1.Value);
            // cmd.Parameters.AddWithValue("@status", TextBox4.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label16.Text = "Product added to Mycart successfully";

            GridView2.DataBind();
            showbill();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            var button = (Control)sender;
            Label answerlabel = (Label)button.NamingContainer.FindControl("Label7");
            int id = Convert.ToInt32(answerlabel.Text);
            SqlCommand cmd = new SqlCommand("delete from mycart where id=@id ", con);
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView2.DataBind();
            showbill();
        }
        void showbill()
        {

            SqlConnection con = new SqlConnection(strcon);
            if (Session["user_id"] != null)
            {
                string user_id = Session["user_id"].ToString();
                int s = 99;
                string cm = "select sum(convert(int,s.price)) from subscription s,mycart m where s.id=m.pid and m.user_id='" + user_id + "'";
                SqlCommand cmd = new SqlCommand(cm, con);
                SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                DataSet cs = new DataSet();
                adpt.Fill(cs);
                Label22.Text = "Rs." + " " + cs.Tables[0].Rows[0][0].ToString() + "/-";
                int sum = s + Convert.ToInt32(cs.Tables[0].Rows[0][0].ToString());
                Label20.Text = "RS." + " " + sum.ToString() + "/-";
                Session["totalbill"] = sum.ToString();
                GridView2.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection cn = new SqlConnection(strcon);
            string dt = DateTime.Now.ToString("yyyy-MM-dd");
            string dt2 = DateTime.Now.AddDays(30).ToString("yyyy-MM-dd");


            int totalbill = Convert.ToInt32(Session["totalbill"]);
            SqlCommand cmd = new SqlCommand("insert into orders ( user_id, StartDate,EndDate,totalbill)values(@user_id,@StartDate,@EndDate,@totalbill) ", cn);
            cmd.Parameters.AddWithValue("@user_id", Session["user_id"]);
            cmd.Parameters.AddWithValue("@StartDate", dt);
            cmd.Parameters.AddWithValue("@EndDate", dt2);
            cmd.Parameters.AddWithValue("@totalbill", totalbill);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Label1.Text = "Thank you subscribing with TiffinGO" + " " + Session["user_id"].ToString() + "<br> " + "Your Order Placed Successfully!!!";

            SqlCommand cmd2 = new SqlCommand("insert into OrderedProducts(oid,pid) SELECT k.oid,s.pid from mycart s , (select top 1 * from orders order by oid desc) k where k.user_id='" + Session["user_id"] + "' ", cn);
            cn.Open();
            cmd2.ExecuteNonQuery();
            cn.Close();

            SqlCommand cmd1 = new SqlCommand("delete from mycart where user_id='" + Session["user_id"] + "' ", cn);


            cn.Open();
            cmd1.ExecuteNonQuery();
            cn.Close();
            GridView2.DataBind();
        }
        void dt2()
        {

        }
    }
}
