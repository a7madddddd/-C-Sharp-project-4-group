using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Question
{
    public partial class CPlusPlus : System.Web.UI.Page
    {
        public string filePathcpp;

        protected void Page_Load(object sender, EventArgs e)
        {

            filePathcpp = Server.MapPath("~/questionsPlus.txt");
            if (!File.Exists(filePathcpp))
            {
                // إنشاء الملف إذا لم يكن موجوداً
                File.WriteAllText(filePathcpp, "");
            }
            if (!IsPostBack)
            {
                LoadQuestions();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            string question = txtQuestion.Text.Trim();
            if (!string.IsNullOrEmpty(question))
            {
                List<string> questions = new List<string>(File.ReadAllLines(filePathcpp));
                questions.Add(question);
                File.WriteAllLines(filePathcpp, questions.ToArray());
                txtQuestion.Text = string.Empty;
                LoadQuestions();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // You can add additional logic here if needed before saving.
            // For now, the questions are saved each time they are added.
            
            //string question = txtQuestion.Text.Trim();
            //if (!string.IsNullOrEmpty(question))
            //{
            //    List<string> questions = new List<string>(File.WriteAllLines(""));
            //    questions.Add(question);
            //    File.WriteAllLines(filePathcpp, questions.ToArray());
            //    txtQuestion.Text = string.Empty;
            //    LoadQuestions();
            //}

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int index = Convert.ToInt32((sender as Button).CommandArgument);
            List<string> questions = new List<string>(File.ReadAllLines(filePathcpp));
            if (index >= 0 && index < questions.Count)
            {
                questions.RemoveAt(index);
                File.WriteAllLines(filePathcpp, questions.ToArray());
                LoadQuestions();
            }
        }

        private void LoadQuestions()
        {
            if (File.Exists(filePathcpp))
            {
                List<string> questions = new List<string>(File.ReadAllLines(filePathcpp));
                rptQuestions.DataSource = questions;
                rptQuestions.DataBind();
            }
        }
    }
}
