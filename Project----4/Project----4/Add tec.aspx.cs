using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project____4
{
    public partial class Add_tec : System.Web.UI.Page
    {
        private string filePath;

        protected void Page_Load(object sender, EventArgs e)
        {
            filePath = Server.MapPath("~/tech.txt");

            if (!IsPostBack)
            {
                cardscontainer123.Controls.Clear();
                LoadDataAndCreateCards();
            }
        }
        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            // Clear the session and redirect to login page
            Session.Clear();
            Session.Abandon(); // Ensure the session is fully cleared
            Response.Redirect("login.aspx");
        }


        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SaveCheckboxStates();
            cardscontainer123.Controls.Clear();
            LoadDataAndCreateCards();
        }

        private void SaveCheckboxStates()
        {
            using (StreamWriter writer = new StreamWriter(filePath))
            {
                if (ch1.Checked)
                {
                    writer.WriteLine("C#,AddStudentCSharp.aspx,CC.png");
                }
                if (ch2.Checked)
                {
                    writer.WriteLine("C++,AddStudentCpp.aspx,C1.png");
                }
                if (ch3.Checked)
                {
                    writer.WriteLine("PHP,AddStudentPhp.aspx,PHP2.png");
                }
                if (ch4.Checked)
                {
                    writer.WriteLine("Node Js,AddStudentNodeJs.aspx,nod.png");
                }
            }
        }

        private void LoadDataAndCreateCards()
        {
            if (File.Exists(filePath))
            {
                using (StreamReader reader = new StreamReader(filePath))
                {
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        var parts = line.Split(',');
                        if (parts.Length == 3)
                        {
                            AppendCard(parts[0], parts[1], parts[2]);
                        }
                    }
                }
            }
        }

        private void AppendCard(string techName, string studentPage, string imageUrl)
        {
            var card = new Panel { CssClass = "card1" };

            var image = new Image { ImageUrl = "~/images/" + imageUrl, AlternateText = techName, CssClass = "tech-image" };
            card.Controls.Add(image);

            var label = new Label { Text = techName, CssClass = "tech-name" };
            card.Controls.Add(label);

            // Button for adding new student
            var btnAddStudent = new Button
            {
                Text = "Add Student",
                CssClass = "bbttnn1",

                PostBackUrl = studentPage // This redirects to the appropriate student page
            };
            card.Controls.Add(btnAddStudent);

            switch (techName)
            {
                case "C++":
                    btnAddStudent.PostBackUrl = "Admin Cplus add student.aspx";
                    break;
                case "C#":
                    btnAddStudent.PostBackUrl = "Admin Csharp add student.aspx";
                    break;
                case "PHP":
                    btnAddStudent.PostBackUrl = "Admin PHP add student.aspx";
                    break;
                case "Node Js":
                    btnAddStudent.PostBackUrl = "Admin NodeJs add student.aspx";
                    break;
            }
            card.Controls.Add(btnAddStudent);

            // Button for adding question
            var btnAddQuestion = new Button
            {
                Text = "Add Questions",
                CssClass = "bbttnn2",

                PostBackUrl = "WebForm3.aspx" // This redirects to the questions page
            };

            switch (techName)
            {
                case "C++":
                    btnAddQuestion.PostBackUrl = "CPlusPlus.aspx";
                    break;
                case "C#":
                    btnAddQuestion.PostBackUrl = "Csharp.aspx";
                    break;
                case "PHP":
                    btnAddQuestion.PostBackUrl = "Php.aspx";
                    break;
                case "Node Js":
                    btnAddQuestion.PostBackUrl = "Nodejs.aspx";
                    break;
            }
           
            card.Controls.Add(btnAddQuestion);

            cardscontainer123.Controls.Add(card);
        }
    }
}
