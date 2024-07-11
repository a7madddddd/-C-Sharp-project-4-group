using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Survey_and_Student_courses_pages
{
    public partial class Survey_Page_Csharp : System.Web.UI.Page
    {
        private string feedbackPath;
        private string questionsPath;
        private string feedbackCountPath;

        protected void Page_Load(object sender, EventArgs e)
        {
            feedbackPath = Server.MapPath("~/feedbackCsharp.txt");
            questionsPath = Server.MapPath("~/questionsCsharp.txt");
            feedbackCountPath = Server.MapPath("~/feedbackCountCsharp.txt");

            if (!IsPostBack)
            {
                if (Session["UserID"] != null)
                {
                    string userId = Session["UserID"].ToString();
                    if (HasQuestionCountChanged(questionsPath))
                    {
                        // If questions have changed, delete previous feedback for all users and load new questions
                        ClearFeedbackFile(feedbackPath);
                        LoadQuestions();
                    }
                    else
                    {
                        if (FeedbackExists(feedbackPath, userId))
                        {
                            ShowThankYou();
                        }
                        else
                        {
                            LoadQuestions();
                        }
                    }
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        public class Feedback
        {
            public string UserID { get; set; }
            public List<string> Responses { get; set; }

            public Feedback(string userId, List<string> responses)
            {
                UserID = userId;
                Responses = responses;
            }

            public void SaveFeedback(string filePath)
            {
                List<string> feedbackData = new List<string> { $"User ID: {UserID}" };
                feedbackData.AddRange(Responses);
                feedbackData.Add("");
                File.AppendAllLines(filePath, feedbackData);
            }
        }

        private bool FeedbackExists(string filePath, string userId)
        {
            if (File.Exists(filePath))
            {
                string[] feedbackEntries = File.ReadAllLines(filePath);
                foreach (string entry in feedbackEntries)
                {
                    if (entry.Contains($"User ID: {userId}"))
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        private bool HasQuestionCountChanged(string questionsPath)
        {
            if (File.Exists(questionsPath))
            {
                int currentQuestionCount = File.ReadAllLines(questionsPath).Length;
                if (File.Exists(feedbackCountPath))
                {
                    int previousQuestionCount = int.Parse(File.ReadAllText(feedbackCountPath));
                    if (currentQuestionCount != previousQuestionCount)
                    {
                        File.WriteAllText(feedbackCountPath, currentQuestionCount.ToString());
                        return true;
                    }
                }
                else
                {
                    File.WriteAllText(feedbackCountPath, currentQuestionCount.ToString());
                }
            }
            return false;
        }

        private void ClearFeedbackFile(string filePath)
        {
            if (File.Exists(filePath))
            {
                File.WriteAllText(filePath, string.Empty);
            }
        }

        private void DeleteUserFeedback(string filePath, string userId)
        {
            if (File.Exists(filePath))
            {
                var feedbackEntries = File.ReadAllLines(filePath).Where(entry => !entry.Contains($"User ID: {userId}")).ToList();
                File.WriteAllLines(filePath, feedbackEntries);
            }
        }

        private void LoadQuestions()
        {
            if (File.Exists(questionsPath))
            {
                string[] questions = File.ReadAllLines(questionsPath);
                int questionNumber = 1;

                foreach (string question in questions)
                {
                    Panel questionBlock = new Panel { CssClass = "question-block" };

                    Label questionLabel = new Label
                    {
                        ID = "LabelQ" + questionNumber,
                        Text = question,
                        CssClass = "text-center d-block font-weight-bold"
                    };
                    questionBlock.Controls.Add(questionLabel);

                    if (IsPostBack)
                    {
                        string selectedValue = Request.Form["G" + questionNumber];
                        if (string.IsNullOrEmpty(selectedValue))
                        {
                            if (!questionLabel.Text.Contains("<span class='required-star'>*</span>"))
                            {
                                questionLabel.Text += " <span class='required-star' style='color:red;'>*</span>";
                            }
                        }
                    }

                    string[] options = { "Excellent", "Very Good", "Good", "Bad", "Very Bad" };
                    for (int i = 0; i < options.Length; i++)
                    {
                        Panel formCheck = new Panel { CssClass = "form-check" };
                        RadioButton radioButton = new RadioButton
                        {
                            ID = "r" + questionNumber + "_" + (i + 1),
                            GroupName = "G" + questionNumber,
                            CssClass = "form-check-input",
                            Attributes = { ["value"] = options[i] },
                        };

                        if (IsPostBack)
                        {
                            string selectedValue = Request.Form[radioButton.GroupName];
                            if (selectedValue != null && selectedValue == options[i])
                            {
                                radioButton.Checked = true;
                            }
                        }

                        Label radioLabel = new Label
                        {
                            Text = options[i],
                            CssClass = "form-check-label",
                            AssociatedControlID = radioButton.ID,
                        };
                        formCheck.Controls.Add(radioButton);
                        formCheck.Controls.Add(radioLabel);
                        questionBlock.Controls.Add(formCheck);
                    }

                    QuestionsPlaceholder.Controls.Add(questionBlock);
                    questionNumber++;
                }
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            ErrorMessage.Visible = false;

            if (File.Exists(questionsPath))
            {
                List<string> questions = File.ReadAllLines(questionsPath).ToList();
                string[] feedback = new string[questions.Count];
                bool allAnswered = true;

                for (int i = 0; i < questions.Count; i++)
                {
                    string selectedValue = Request.Form["G" + (i + 1)];

                    if (string.IsNullOrEmpty(selectedValue))
                    {
                        allAnswered = false;
                    }
                    else
                    {
                        feedback[i] = $"{questions[i]}: {selectedValue}";
                    }
                }

                if (allAnswered)
                {
                    if (Session["UserID"] != null)
                    {
                        string userId = Session["UserID"].ToString();
                        Feedback userFeedback = new Feedback(userId, feedback.ToList());

                        // Delete existing feedback for the user before saving new feedback
                        DeleteUserFeedback(feedbackPath, userId);
                        userFeedback.SaveFeedback(feedbackPath);

                        // Update the feedback count file if needed
                        int currentQuestionCount = File.ReadAllLines(questionsPath).Length;
                        File.WriteAllText(feedbackCountPath, currentQuestionCount.ToString());

                        Session["SurveySubmitted_Csharp"] = true;
                        ShowThankYou();
                    }
                    else
                    {
                        ErrorMessage.Text = "User ID is not available. Please log in and try again.";
                        ErrorMessage.Visible = true;

                        SurveyPanel.Visible = true;
                        ThankYouPanel.Visible = false;
                    }
                }
                else
                {
                    LoadQuestions();
                    ErrorMessage.Text = "Please answer all questions before submitting the survey.";
                    ErrorMessage.Visible = true;

                    SurveyPanel.Visible = true;
                    ThankYouPanel.Visible = false;
                }
            }
        }

        private void ShowThankYou()
        {
            SurveyPanel.Visible = false;
            ThankYouPanel.Visible = true;
        }

        protected void BackToCoursesButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Courses_for_student.aspx");
        }
    }
}
