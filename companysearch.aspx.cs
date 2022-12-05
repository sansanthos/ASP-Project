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
    public partial class companysearch : System.Web.UI.Page
    {
        private string pdfDoc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.Bind();
            }
        }



        private void Bind()
        {
            string constr = "Data Source=CLAP2911;Initial Catalog=projectasp;User ID=sa;Password=S@nthosh0";
            SqlConnection con = new SqlConnection(constr);
            string co = "select * from companyregtb where cmpusername='" + Session["cmpusername"] + "'   ";
            SqlDataAdapter dp = new SqlDataAdapter(co, con);
            DataSet dt2 = new DataSet();
            dp.Fill(dt2);
            cmpname.Text = dt2.Tables[0].Rows[0]["cmpname"].ToString();
        }

        protected void btngetapplications_Click(object sender, EventArgs e)
        {

            string constr = "Data Source=CLAP2911;Initial Catalog=projectasp;User ID=sa;Password=S@nthosh0";
            SqlConnection con = new SqlConnection(constr);


            string co1 = "select * from jobapplicationtb where cmpname='" + cmpname.Text + "'  ";
            SqlDataAdapter dp = new SqlDataAdapter(co1, con);
            DataTable dt3 = new DataTable();
            dp.Fill(dt3);


            GridView1.DataSource = dt3;
            GridView1.DataBind();


        }

        protected void lnkDownload_Click(object sender, EventArgs e)
        {
            LinkButton lnkbtn = sender as LinkButton;
            GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
            int fileid = Convert.ToInt32(GridView1.DataKeys[gvrow.RowIndex].Value.ToString());





            // string name, type, resume, Data;
            string constr = "Data Source=CLAP2911;Initial Catalog=projectasp;User ID=sa;Password=S@nthosh0";



            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    //



                    //
                    cmd.CommandText = "select filename,filetype,filedata   from jobapplicationtb where id=@id";
                    cmd.Parameters.AddWithValue("@id", fileid);
                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Response.ContentType = dr["filetype"].ToString();
                        Response.AddHeader("Content-Disposition",
                                            "attachment;filename=\"" + dr["filename"] + "\"");
                        Response.BinaryWrite((byte[])dr["filedata"]);



                        Response.End();
                    }



                }

            }
        }

    }
}
