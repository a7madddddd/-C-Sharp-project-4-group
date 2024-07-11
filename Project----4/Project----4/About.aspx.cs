using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project4
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void linkedin_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.linkedin.com/in/hadeel-al-zoubi-b70584210/");
        }
    }
}