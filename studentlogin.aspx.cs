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
    public partial class studentlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtlog_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            string str = "select count(1) from studentregitb where stuusername=@username and stupassword=@password";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            cmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
            cmd.Parameters.AddWithValue("@password", textpassword.Text.Trim());



            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count == 1)
            {



                Session["stuusername"] = txtusername.Text.Trim();
                Session["stupassword"] = textpassword.Text.Trim();




                Response.Redirect("studentdetails.aspx");
            }
            else
            {
                Label1.Text = "error";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginpage.aspx");
        }
    }
}