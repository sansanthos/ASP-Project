using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectasp
{
    public partial class companydetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.bindgrid();
            }
         
        }
        private void bindgrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand checkroll = new SqlCommand("select * from companyregtb where cmpusername = '" + Session["cmpusername"] + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(checkroll);
            DataSet dt = new DataSet();
            sd.Fill(dt);



            cmpname.Text = dt.Tables[0].Rows[0]["cmpname"].ToString();
            cmpaddress.Text = dt.Tables[0].Rows[0]["cmpaddress"].ToString();
            cmpcity.Text = dt.Tables[0].Rows[0]["cmpcity"].ToString();
            cmpstate.Text = dt.Tables[0].Rows[0]["cmpstate"].ToString();
            cmppincode.Text = dt.Tables[0].Rows[0]["cmppincode"].ToString();
            cmpcontactpersonname.Text = dt.Tables[0].Rows[0]["cmpcontactpersonname"].ToString();
            cmpmobileno.Text = dt.Tables[0].Rows[0]["cmpmobileno"].ToString();
            cmpcontactno.Text = dt.Tables[0].Rows[0]["cmpcontactno"].ToString();
            cmpemail.Text = dt.Tables[0].Rows[0]["cmpemail"].ToString();

            cmpwebsite.Text = dt.Tables[0].Rows[0]["cmpwebsite"].ToString();
            cmpusername.Text = dt.Tables[0].Rows[0]["cmpusername"].ToString();
            cmppassword.Text = dt.Tables[0].Rows[0]["cmppassword"].ToString();
            cmpconfirmpassword.Text = dt.Tables[0].Rows[0]["cmpconfirmpassword"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=CLAP2911;Initial Catalog=projectasp;User ID=sa;Password=S@nthosh0";
            SqlConnection sa = new SqlConnection(constr);

            string get = "update  companyregtb set cmpname='" + cmpname.Text + "',cmpaddress='" + cmpaddress.Text + "'," +
                 " cmpcity='" + cmpcity.Text + "',cmpstate='" + cmpstate.Text + "',cmppincode='" + cmppincode.Text + "'," +
                 "cmpcontactpersonname='" + cmpcontactpersonname.Text + "',cmpmobileno='" + cmpmobileno.Text + "',cmpcontactno='" + cmpcontactno.Text + "'," +
                 "cmpemail='" + cmpemail.Text + "',cmpwebsite='" + cmpwebsite.Text + "',cmpusername='" + cmpusername.Text + "',cmppassword='" + cmppassword.Text + "'," +
                 "cmpconfirmpassword='" + cmpconfirmpassword.Text + "' where cmpusername='" + cmpusername.Text + "' ";

            SqlCommand cmd = new SqlCommand(get, sa);
            successmsg.Text = "UPDATED SUCESSFULLY......";

            sa.Open();

            cmd.ExecuteNonQuery();

            sa.Close();
        }
    }
}