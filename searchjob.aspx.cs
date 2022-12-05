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
    public partial class searchjob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
          
            string co = "select * from addjobtb";
            SqlDataAdapter adpt = new SqlDataAdapter(co, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);



            SqlDataAdapter adap = new SqlDataAdapter("select * from addjobtb ", con);
            DataTable daa = new DataTable();
            adap.Fill(daa);



            if (daa.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("select * from addjobtb where category='" + DropDownList1.SelectedValue + "' and minqualification='" + drop1.SelectedValue + "' and requiredskill='" + drop2.SelectedValue + "'", con);
                SqlDataAdapter constr1 = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();



                con.Open();
                constr1.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Label1.Text = "find your jobs!!!!";
            }

            else
            {
                Label1.Text = "Not match jobs";
            }
        }
    }
    }
