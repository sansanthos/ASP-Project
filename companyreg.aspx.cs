using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace projectasp
{
    public partial class companyreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP2911;Initial Catalog=projectasp;User ID=sa;Password=S@nthosh0";
            SqlConnection con = new SqlConnection(constr);
            string str = "insert into companyregtb values('" + cmpname.Text + "','" + cmpaddress.Text + "','" + cmpcity.Text + "','" + cmpstate.Text + "','" + cmppincode.Text + "','" + cmpcontactpersonname.Text + "','" + cmpmobileno.Text + "','" + cmpcontactno.Text + "','" + cmpemail.Text + "','" + cmpwebsite.Text + "','" + cmpusername.Text + "','" + cmppassword.Text + "','" + cmpconfirmpassword.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            successmsg.Text = "YOUR DATA IS SUCCESS FULLY STORED.....";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            cmpname.Text = "";
            cmpaddress.Text = "";
            cmpcity.Text = "";
            cmpstate.Text = "";
            cmppincode.Text = "";
            cmpcontactpersonname.Text = "";
            cmpmobileno.Text = "";
            cmpcontactno.Text = "";
            cmpemail.Text = "";
            cmpwebsite.Text = "";
            cmpusername.Text = "";
            cmppassword.Text = "";
            cmpconfirmpassword.Text = "";
        }

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            cmpname.Text = "";
            cmpaddress.Text = "";
            cmpcity.Text = "";
            cmpstate.Text = "";
            cmppincode.Text = "";
            cmpcontactpersonname.Text = "";
            cmpmobileno.Text = "";
            cmpcontactno.Text = "";
            cmpemail.Text = "";
            cmpwebsite.Text = "";
            cmpusername.Text = "";
            cmppassword.Text = "";
            cmpconfirmpassword.Text = "";
        }
    }
}