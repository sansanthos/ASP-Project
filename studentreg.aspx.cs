using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectasp
{
    public partial class studentreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void conbtn_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP2911;Initial Catalog=projectasp;User ID=sa;Password=S@nthosh0";
            SqlConnection con = new SqlConnection(constr);
            string str = "insert into studentregitb values('" + stuname.Text + "','" + stusurname.Text + "','" + stuaddress.Text + "','" + stucity.Text + "','" + stustate.Text + "','" + stupincode.Text + "','" + stubirthdate.Text + "','" + stugender.Text + "','" + stumobileeno.Text + "','" + stuemailid.Text + "','" + stuenrollno.Text + "','" + stuusername.Text + "','" + stupassword.Text + "','"+ stuconfirmpassword .Text+ "')";
            SqlCommand cmd = new SqlCommand(str, con);
            successmsg.Text = "YOUR DATA IS SUCCESS FULLY STORED.....";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
             stuname.Text = "";
            stusurname.Text = "";
            stuaddress.Text = "";
            stucity.Text = "";
            stustate.Text = "";
            stupincode.Text = "";
            stubirthdate.Text = "";
            stugender.Text = "";
            stumobileeno.Text = "";
            stuemailid.Text = "";
            stuenrollno.Text = "";
            stuusername.Text = "";
            stupassword.Text = "";
            stuconfirmpassword.Text = "";
        }

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            stuname.Text = "";
            stusurname.Text = "";
            stuaddress.Text = "";
            stucity.Text = "";
            stustate.Text = "";
            stupincode.Text = "";
            stubirthdate.Text = "";
            stugender.Text = "";
            stumobileeno.Text = "";
            stuemailid.Text = "";
            stuenrollno.Text = "";
            stuusername.Text = "";
            stupassword.Text = "";
            stuconfirmpassword.Text = "";


        }
    }
}