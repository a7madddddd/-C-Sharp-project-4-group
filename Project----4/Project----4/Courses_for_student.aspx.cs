using System;
using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Web.UI;

namespace Survey_and_Student_courses_pages
{
    public partial class Courses_for_student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Disable caching to prevent viewing the page after logout
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.MinValue);
            Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);

            if (!IsPostBack)
            {
                // Check if the user is logged in
                if (Session["UserID"] == null)
                {
                    // Redirect to login page if not logged in
                    Response.Redirect("login.aspx");
                }
                else
                {
                    // Get the user ID and email from the session
                    string userId = Session["UserID"].ToString();
                    string userEmail = Session["UserEmail"].ToString();

                    // Get the list of courses the user is registered for
                    List<string> registeredCourses = Session["Courses"] as List<string>;

                    // Update the visibility of course cards based on registration status
                    UpdateCourseCards(registeredCourses);
                }
            }
        }

        protected void LinkButtonCsharp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Survey_Page_Csharp.aspx");
            List<string> questions = new List<string>(File.ReadAllLines(Server.MapPath("~/questionsCsharp.txt")));
        }

        protected void LinkButtonPHP_Click(object sender, EventArgs e)
        {
            Response.Redirect("Survey_page_PHP.aspx");
            List<string> questions = new List<string>(File.ReadAllLines(Server.MapPath("~/questionsPHP.txt")));
        }

        protected void LinkButtonNodejs_Click(object sender, EventArgs e)
        {
            Response.Redirect("Survey_page_nodejs.aspx");
            List<string> questions = new List<string>(File.ReadAllLines(Server.MapPath("~/questionsnodeJS.txt")));
        }

        protected void LinkButtonCplus_Click(object sender, EventArgs e)
        {
            Response.Redirect("Survey_page_Cplus.aspx");
            List<string> questions = new List<string>(File.ReadAllLines(Server.MapPath("~/questionsPlus.txt")));
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            // Clear the session and redirect to login page
            Session.Clear();
            Session.Abandon(); // Ensure the session is fully cleared
            Response.Redirect("login.aspx");
        }

        private void UpdateCourseCards(List<string> registeredCourses)
        {
            if (registeredCourses != null)
            {
                if (!registeredCourses.Contains("Csharp"))
                {
                    CsharpCard.Attributes["class"] += " disabled-card";
                }

                if (!registeredCourses.Contains("PHP"))
                {
                    PHPCard.Attributes["class"] += " disabled-card";
                }

                if (!registeredCourses.Contains("Nodejs"))
                {
                    NodejsCard.Attributes["class"] += " disabled-card";
                }

                if (!registeredCourses.Contains("Cplus"))
                {
                    CplusCard.Attributes["class"] += " disabled-card";
                }
            }
        }
    }
}
