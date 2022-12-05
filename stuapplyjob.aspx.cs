using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectasp
{
    public partial class stuapplyjob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {



                this.bind();
            }

        }

        private void bind()
        {
            string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection sn = new SqlConnection(str);

            lblcmpnyname.Text = Request.QueryString["cmpname"];
            lblJobCategory.Text = Request.QueryString["category"];
            lblRequiredskill.Text = Request.QueryString["requiredskill"];

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            
            if(FileUpload1.HasFile)
            { 

            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            Stream str1 = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(str1);
            Byte[] size = br.ReadBytes((int)str1.Length);
            //
            using (SqlConnection con = new SqlConnection(str))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "insert into jobapplicationtb(cmpname,category,requiredskill,firstname,lastname,dob,contactno,mailid,filename,fileType,filedata) values(@cmpnyname,@jobcategory,@skill,@firstname,@lastname,@dob,@contactno,@mailid,@Name,@Type,@Data)";
                    cmd.Parameters.AddWithValue("@cmpnyname", lblcmpnyname.Text);
                    cmd.Parameters.AddWithValue("@jobcategory", lblJobCategory.Text);
                    cmd.Parameters.AddWithValue("@skill", lblRequiredskill.Text);
                    cmd.Parameters.AddWithValue("@firstname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@lastname", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@dob", TextBox3.Text);

                    cmd.Parameters.AddWithValue("@contactno", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@mailid", txtemailid.Text);

                    cmd.Parameters.AddWithValue("@Name", filename);
                    cmd.Parameters.AddWithValue("@Type", "application/word");
                    cmd.Parameters.AddWithValue("@Data", size);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    }
                }
            }
        }
    }
}