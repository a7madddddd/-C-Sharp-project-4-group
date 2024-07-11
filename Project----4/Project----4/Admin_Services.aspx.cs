using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project4
{
    public partial class Admin_Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //NavigateUrl = "~/About.aspx"
            Response.Redirect("ResultPage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ResultPage.aspx");
        }

        protected void techLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add tec.aspx");
        }

        protected void techImg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add tec.aspx");
        }
        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            // Clear the session and redirect to login page
            Session.Clear();
            Session.Abandon(); // Ensure the session is fully cleared
            Response.Redirect("login.aspx");
        }
    }
}