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
    public partial class studentdetails : System.Web.UI.Page
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
            SqlCommand checkroll = new SqlCommand("select * from studentregitb where stuusername = '" + Session["stuusername"] + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(checkroll);
            DataSet dt = new DataSet();
            sd.Fill(dt);

            stuname.Text = dt.Tables[0].Rows[0]["stuname"].ToString();
            stusurname.Text = dt.Tables[0].Rows[0]["stusurname"].ToString();
            stuaddress.Text = dt.Tables[0].Rows[0]["stuaddress"].ToString();
            stucity.Text = dt.Tables[0].Rows[0]["stucity"].ToString();
            stustate.Text = dt.Tables[0].Rows[0]["stustate"].ToString();
            stupincode.Text = dt.Tables[0].Rows[0]["stupincode"].ToString();
            stubirthdate.Text = dt.Tables[0].Rows[0]["stubirthdate"].ToString();
            stugender.Text = dt.Tables[0].Rows[0]["stugender"].ToString();
            stumobileeno.Text = dt.Tables[0].Rows[0]["stumobileeno"].ToString();
            stuemailid.Text = dt.Tables[0].Rows[0]["stuemailid"].ToString();
            stuenrollno.Text = dt.Tables[0].Rows[0]["stuenrollno"].ToString();
            stuusername.Text = dt.Tables[0].Rows[0]["stuusername"].ToString();
            stupassword.Text = dt.Tables[0].Rows[0]["stupassword"].ToString();
            stuconfirmpassword.Text = dt.Tables[0].Rows[0]["stuconfirmpassword"].ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection sa = new SqlConnection(constr);

            string get = "update  studentregitb set stuname='" + stuname.Text + "',stusurname='" + stusurname.Text + "'," +
                 " stuaddress='" + stuaddress.Text + "',stucity='" + stucity.Text + "',stustate='" + stustate.Text + "'," +
                 "stupincode='" + stupincode.Text + "',stubirthdate='" + stubirthdate.Text + "',stugender='" + stugender.Text + "'," +
                 "stumobileeno='" + stumobileeno.Text + "',stuemailId='" + stuemailid.Text + "',stuenrollno='" + stuenrollno.Text + "',stuusername='" + stuusername.Text + "'," +
                 "stupassword='" + stupassword.Text + "',stuconfirmpassword='" + stuconfirmpassword.Text + "' where stuenrollno='" + stuenrollno.Text + "' ";

            SqlCommand cmd = new SqlCommand(get, sa);
           

            sa.Open();
            successmsg.Text = "UPDATED SUCCESSFULLY.....";
            cmd.ExecuteNonQuery();

            sa.Close();
        }
    }
    
}