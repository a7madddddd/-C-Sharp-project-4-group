using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Question
{
    public partial class CSharp : System.Web.UI.Page
    {

        private string filePath;

        protected void Page_Load(object sender, EventArgs e)
        {
            filePath = Server.MapPath("~/questionsCsharp.txt");
            if (!File.Exists(filePath))
            {
                // إنشاء الملف إذا لم يكن موجوداً
                File.WriteAllText(filePath, "");
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
                List<string> questions = new List<string>(File.ReadAllLines(filePath));
                questions.Add(question);
                File.WriteAllLines(filePath, questions.ToArray());
                txtQuestion.Text = string.Empty;
                LoadQuestions();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // You can add additional logic here if needed before saving.
            // For now, the questions are saved each time they are added.
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int index = Convert.ToInt32((sender as Button).CommandArgument);
            List<string> questions = new List<string>(File.ReadAllLines(filePath));
            if (index >= 0 && index < questions.Count)
            {
                questions.RemoveAt(index);
                File.WriteAllLines(filePath, questions.ToArray());
                LoadQuestions();
            }
        }

        private void LoadQuestions()
        {
            if (File.Exists(filePath))
            {
                List<string> questions = new List<string>(File.ReadAllLines(filePath));
                rptQuestions.DataSource = questions;
                rptQuestions.DataBind();
            }
        }
    }
}