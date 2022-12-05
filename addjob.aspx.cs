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
    public partial class addjob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
           
            con.Open();

            SqlCommand checkroll = new SqlCommand("select cmpname from companyregtb where cmpname='" + cmpname.Text + "'", con);
            SqlDataAdapter sd = new SqlDataAdapter(checkroll);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string str = "insert into addjobtb values('" + cmpname.Text + "','" + DropDownList1.Text + "'," +
                "'" + DropDownList2.Text + "','" + DropDownList3.Text + "'," +
                "'" + DropDownList4.Text + "','" + TextBox2.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "'," +
                "'" + DropDownList7.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'" +
                ",'" + TextBox5.Text + "')";
                SqlCommand cmd = new SqlCommand(str, con);
                successmsg.Text = " Successfully Added job Details..";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                fail.Text = "please check your company name...";
            }
        }
    }
}