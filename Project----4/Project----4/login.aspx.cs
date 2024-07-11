using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project____4
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Disable caching to prevent viewing the page after logout
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.MinValue);
            Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string id = txtID.Text;
            List<string> courses;

            if (IsValidStudent(email, id, out courses))
            {
                // Save user information and courses in session
                Session["UserEmail"] = email;
                Session["UserID"] = id;
                Session["Courses"] = courses;

                lblMessage.Text = "Login successful!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("Courses_for_student.aspx");
            }
            else if(IsValidAdmin(email, id)){
                Session["UserEmail"] = email;
                Session["UserID"] = id;

                lblMessage.Text = "Login successful!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("Admin_Services.aspx");
            }
            else
            {
                lblMessage.Text = "Login failed. user not found.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool IsValidAdmin(string email, string id)
        {
            try
            {
                string adminFilePath = Server.MapPath("~/admin.txt");

            if (File.Exists(adminFilePath))
            {
                string[] adminLines = File.ReadAllLines(adminFilePath);
                foreach (string line in adminLines)
                {
                    var adminData = line.Split(',');
                    if (adminData.Length >= 2 && adminData[1].Equals(email, StringComparison.OrdinalIgnoreCase) && adminData[0] == id)
                    {
                        return true;
                    }
                }
               
            }
                else
                {
                    lblMessage.Text = "User not found.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error reading admin file: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

            return false;




        }




        private bool IsValidStudent(string email, string id, out List<string> courses)
        {
            courses = new List<string>();
            try
            {
                string filePath = Server.MapPath("~/students.txt");
                
                if (File.Exists(filePath))
                {
                    string[] studentLines = File.ReadAllLines(filePath);
                    foreach (string line in studentLines)
                    {
                        var studentData = line.Split(',');
                        if (studentData.Length >= 5 && studentData[2].Equals(email, StringComparison.OrdinalIgnoreCase) && studentData[0] == id)
                        {
                            courses = studentData[4].Split(';').ToList(); // Assuming courses are separated by semicolons
                            return true;
                        }
                    }
                }
                else
                {
                    lblMessage.Text = "User not found.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error reading students file: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

            return false;
        }
    }
}
