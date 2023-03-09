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

namespace TiffinGO
{
    public partial class ConnectedArchitecture : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(strcon); if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }

            SqlCommand cmd = new SqlCommand("UPDATE  from dept where Dept_id=@Dept_id,Salary=@Salary ", cn);
            cmd.Parameters.AddWithValue("@Dept_id", t4.Text);
            cmd.Parameters.AddWithValue("Salary", t4.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script>alert(' Deleted Successfully!!!');</script> ");

            GridView2.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(strcon); if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }

            SqlCommand cmd = new SqlCommand("DELETE  from dept where Dept_id=@Dept_id ", cn);
            cmd.Parameters.AddWithValue("@Dept_id", t4.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script>alert(' Deleted Successfully!!!');</script> ");
          
            GridView2.DataBind();
        }
    }
}