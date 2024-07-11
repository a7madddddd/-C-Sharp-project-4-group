using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        protected void BindGridView()
        {
            var questions = LoadQuestionsFromFile(Server.MapPath("~/TextFile1.txt"));
            questionGridView.DataSource = questions;
            questionGridView.DataBind();
        }

        protected List<Question> LoadQuestionsFromFile(string filePath)
        {
            var questions = new List<Question>();

            if (File.Exists(filePath))
            {
                using (StreamReader reader = new StreamReader(filePath))
                {
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        var data = line.Split(',');

                        if (data.Length == 2)
                        {
                            questions.Add(new Question
                            {
                                question = data[0].Trim(),
                                answer = data[1].Trim()
                            });
                        }
                    }
                }
            }

            return questions;
        }

        protected class Question
        {
            public string question { get; set; }
            public string answer { get; set; }
        }
    }
}