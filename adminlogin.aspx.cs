using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectasp
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtlog_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            string str = "select count(1) from admintb where adminusername=@adminusername and adminpassword=@adminpassword";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            cmd.Parameters.AddWithValue("@adminusername", txtuser.Text.Trim());
            cmd.Parameters.AddWithValue("@adminpassword", txtpass.Text.Trim());
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count == 1)
            {



                Session["username"] = txtuser.Text.Trim();
                Session["password"] = txtpass.Text.Trim();




                Response.Redirect("adminpage.aspx");
            }
            else
            {
                Label1.Text = "Username and Password Error";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginpage.aspx");
        }
    }
}