using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectasp
{
    public partial class adminpage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminstu.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminedu.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("admincmp.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminappliedstu.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminjob.aspx");
        }
    }
}