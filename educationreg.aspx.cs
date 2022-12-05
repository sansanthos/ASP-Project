using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace projectasp
{
    public partial class educationreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string constr = "Data Source=CLAP2911;Initial Catalog=projectasp;User ID=sa;Password=S@nthosh0"; 
            SqlConnection con = new SqlConnection(constr);         



            con.Open();
            SqlCommand checkroll = new SqlCommand("select stuenrollno from studentregitb where stuenrollno='" + eduenrollno.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(checkroll);
            DataTable dt = new DataTable();
            sd.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                string str = "insert into educationregtb values ('" + educlgname.Text + "','" + eduenrollno.Text + "','" + edusemester.Text + "','" + edueducation.Text + "','" + edubranch.Text + "','" + edupassyear.Text + "','" + educpi.Text + "','" + educgpa.Text + "','" + eduskill.Text + "','" + eduextraskill.Text + "','" + FileUpload1 + "')";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Yeah enroll number is available!!!";
                Label2.Text = "successfully inserted";
            }
            else
            {
                Label1.Text = "Enroll is invalid";
            }

            uploadmyfiles();

        }
        public void uploadmyfiles()
        {



            string Name = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string location = Server.MapPath("~/upload/" + Name);
            FileUpload1.SaveAs(location);
            Label2.Text = Name.ToString();



        }

        protected void eduresume_TextChanged(object sender, EventArgs e)
        {

        }
    }
}