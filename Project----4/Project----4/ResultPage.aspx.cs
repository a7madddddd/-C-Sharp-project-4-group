using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResultPage
{
    public partial class ResultPageWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            // Clear the session and redirect to login page
            Session.Clear();
            Session.Abandon(); // Ensure the session is fully cleared
            Response.Redirect("login.aspx");
        }

        protected void c_Click(object sender, EventArgs e)
        {
            if (ResultDetailsCpp.Visible) // Check if the result details panel is visible
            {
                ResultDetailsCpp.Visible = false; // Hide the result details panel
                ResultPanelcpp.BackColor = System.Drawing.Color.Empty; // Reset the background color of the whole card
                cclick.Text = "Show Details"; // Change button text to "Show Details"
                return;
            }

            string fullPath = Server.MapPath($"~/feedbackCplus.txt");
            //CoursesRef.WriteToFileCcourse(fullPath, "poor");
            //CoursesRef.ReadFromFileCcourse(fullPath);

            // Read all lines from the feedback file
            List<string> responses = File.ReadAllLines(fullPath).ToList();

            // Initialize counts for each feedback category
            int countVeryBad = 0; // New category
            int countBad = 0;
            int countGood = 0;
            int countVeryGood = 0;
            int countExcellent = 0;

            // Dictionary to map feedback text to numeric values
            Dictionary<string, int> feedbackScores = new Dictionary<string, int>
            {
                { "very bad", 1 }, // New mapping
                { "bad", 2 },
                { "good", 3 },
                { "very good", 4 },
                { "excellent", 5 }
            };

            // Calculate counts for each feedback category
            foreach (string response in responses)
            {
                string feedback = response.ToLower().Split(':').Last().Trim();
                if (feedbackScores.ContainsKey(feedback))
                {
                    switch (feedback)
                    {
                        case "very bad":
                            countVeryBad++; // New case
                            break;
                        case "bad":
                            countBad++;
                            break;
                        case "good":
                            countGood++;
                            break;
                        case "very good":
                            countVeryGood++;
                            break;
                        case "excellent":
                            countExcellent++;
                            break;
                    }
                }
            }

            // Calculate total responses
            int totalResponses = countVeryBad + countBad + countGood + countVeryGood + countExcellent;

            // Calculate the average score
            double avgcpp = totalResponses > 0 ?
                (countVeryBad * feedbackScores["very bad"] +
                 countBad * feedbackScores["bad"] +
                 countGood * feedbackScores["good"] +
                 countVeryGood * feedbackScores["very good"] +
                 countExcellent * feedbackScores["excellent"]) / (double)totalResponses : 0;

            // Convert average score to percentage
            double percentage = avgcpp * 20; // converting to percentage assuming max score is 5

            // Determine card color based on average score
            string cardColor = percentage >= 85 ? "lightgreen" : "pink"; // Changed condition to >= 85 for green

            // Update the background color of the whole card
            ResultPanelcpp.BackColor = System.Drawing.Color.FromName(cardColor);
            ResultDetailsCpp.Visible = true; // Show the result details panel

            // Update the label text with the calculated average and percentage
            AverageLabelCpp.Text = $"Average Score: {avgcpp:F2} ({percentage:F2}%)"; // New line to update the label text

            cclick.Text = "Hide Details"; // Change button text to "Hide Details"
        }

        protected void Csharp_Click(object sender, EventArgs e)
        {
            if (ResultDetailsCsharp.Visible) // Check if the result details panel is visible
            {
                ResultDetailsCsharp.Visible = false; // Hide the result details panel
                ResultPanelccharp.BackColor = System.Drawing.Color.Empty; // Reset the background color of the whole card
                csharpclick.Text = "Show Details"; // Change button text to "Show Details"
                return;
            }

            string fullPath = Server.MapPath($"~/feedbackCsharp.txt");
            // Read all lines from the feedback file
            List<string> responses = File.ReadAllLines(fullPath).ToList();

            // Initialize counts for each feedback category
            int countVeryBad = 0; // New category
            int countBad = 0;
            int countGood = 0;
            int countVeryGood = 0;
            int countExcellent = 0;

            // Dictionary to map feedback text to numeric values
            Dictionary<string, int> feedbackScores = new Dictionary<string, int>
            {
                { "very bad", 1 }, // New mapping
                { "bad", 2 },
                { "good", 3 },
                { "very good", 4 },
                { "excellent", 5 }
            };

            // Calculate counts for each feedback category
            foreach (string response in responses)
            {
                string feedback = response.ToLower().Split(':').Last().Trim();
                if (feedbackScores.ContainsKey(feedback))
                {
                    switch (feedback)
                    {
                        case "very bad":
                            countVeryBad++; // New case
                            break;
                        case "bad":
                            countBad++;
                            break;
                        case "good":
                            countGood++;
                            break;
                        case "very good":
                            countVeryGood++;
                            break;
                        case "excellent":
                            countExcellent++;
                            break;
                    }
                }
            }

            // Calculate total responses
            int totalResponses = countVeryBad + countBad + countGood + countVeryGood + countExcellent;

            // Calculate the average score
            double avgcsharp = totalResponses > 0 ?
                (countVeryBad * feedbackScores["very bad"] +
                 countBad * feedbackScores["bad"] +
                 countGood * feedbackScores["good"] +
                 countVeryGood * feedbackScores["very good"] +
                 countExcellent * feedbackScores["excellent"]) / (double)totalResponses : 0;

            // Convert average score to percentage
            double percentage = avgcsharp * 20; // converting to percentage assuming max score is 5

            // Determine card color based on average score
            string cardColor = percentage >= 85 ? "lightgreen" : "pink"; // Changed condition to >= 85 for green

            // Update the background color of the whole card
            ResultPanelccharp.BackColor = System.Drawing.Color.FromName(cardColor);
            ResultDetailsCsharp.Visible = true; // Show the result details panel

            // Update the label text with the calculated average and percentage
            AverageLabelCsharp.Text = $"Average Score: {avgcsharp:F2} ({percentage:F2}%)"; // New line to update the label text

            csharpclick.Text = "Hide Details"; // Change button text to "Hide Details"
        }

        protected void Php_Click(object sender, EventArgs e)
        {
            if (ResultDetailsPhp.Visible) // Check if the result details panel is visible
            {
                ResultDetailsPhp.Visible = false; // Hide the result details panel
                ResultPanelphp.BackColor = System.Drawing.Color.Empty; // Reset the background color of the whole card
                phpclick.Text = "Show Details"; // Change button text to "Show Details"
                return;
            }

            string fullPath = Server.MapPath($"~/feedbackPHP.txt");
            // Read all lines from the feedback file
            List<string> responses = File.ReadAllLines(fullPath).ToList();

            // Initialize counts for each feedback category
            int countVeryBad = 0; // New category
            int countBad = 0;
            int countGood = 0;
            int countVeryGood = 0;
            int countExcellent = 0;

            // Dictionary to map feedback text to numeric values
            Dictionary<string, int> feedbackScores = new Dictionary<string, int>
            {
                { "very bad", 1 }, // New mapping
                { "bad", 2 },
                { "good", 3 },
                { "very good", 4 },
                { "excellent", 5 }
            };

            // Calculate counts for each feedback category
            foreach (string response in responses)
            {
                string feedback = response.ToLower().Split(':').Last().Trim();
                if (feedbackScores.ContainsKey(feedback))
                {
                    switch (feedback)
                    {
                        case "very bad":
                            countVeryBad++; // New case
                            break;
                        case "bad":
                            countBad++;
                            break;
                        case "good":
                            countGood++;
                            break;
                        case "very good":
                            countVeryGood++;
                            break;
                        case "excellent":
                            countExcellent++;
                            break;
                    }
                }
            }

            // Calculate total responses
            int totalResponses = countVeryBad + countBad + countGood + countVeryGood + countExcellent;

            // Calculate the average score
            double avgphp = totalResponses > 0 ?
                (countVeryBad * feedbackScores["very bad"] +
                 countBad * feedbackScores["bad"] +
                 countGood * feedbackScores["good"] +
                 countVeryGood * feedbackScores["very good"] +
                 countExcellent * feedbackScores["excellent"]) / (double)totalResponses : 0;

            // Convert average score to percentage
            double percentage = avgphp * 20; // converting to percentage assuming max score is 5

            // Determine card color based on average score
            string cardColor = percentage >= 85 ? "lightgreen" : "pink"; // Changed condition to >= 85 for green

            // Update the background color of the whole card
            ResultPanelphp.BackColor = System.Drawing.Color.FromName(cardColor);
            ResultDetailsPhp.Visible = true; // Show the result details panel

            // Update the label text with the calculated average and percentage
            AverageLabelPhp.Text = $"Average Score: {avgphp:F2} ({percentage:F2}%)"; // New line to update the label text

            phpclick.Text = "Hide Details"; // Change button text to "Hide Details"
        }

        protected void Node_Click(object sender, EventArgs e)
        {
            if (ResultDetailsNode.Visible) // Check if the result details panel is visible
            {
                ResultDetailsNode.Visible = false; // Hide the result details panel
                ResultPanelNodeJs.BackColor = System.Drawing.Color.Empty; // Reset the background color of the whole card
                nodeclick.Text = "Show Details"; // Change button text to "Show Details"
                return;
            }

            string fullPath = Server.MapPath($"~/feedbacknodeJS.txt");
            // Read all lines from the feedback file
            List<string> responses = File.ReadAllLines(fullPath).ToList();

            // Initialize counts for each feedback category
            int countVeryBad = 0; // New category
            int countBad = 0;
            int countGood = 0;
            int countVeryGood = 0;
            int countExcellent = 0;

            // Dictionary to map feedback text to numeric values
            Dictionary<string, int> feedbackScores = new Dictionary<string, int>
            {
                { "very bad", 1 }, // New mapping
                { "bad", 2 },
                { "good", 3 },
                { "very good", 4 },
                { "excellent", 5 }
            };

            // Calculate counts for each feedback category
            foreach (string response in responses)
            {
                string feedback = response.ToLower().Split(':').Last().Trim();
                if (feedbackScores.ContainsKey(feedback))
                {
                    switch (feedback)
                    {
                        case "very bad":
                            countVeryBad++; // New case
                            break;
                        case "bad":
                            countBad++;
                            break;
                        case "good":
                            countGood++;
                            break;
                        case "very good":
                            countVeryGood++;
                            break;
                        case "excellent":
                            countExcellent++;
                            break;
                    }
                }
            }

            // Calculate total responses
            int totalResponses = countVeryBad + countBad + countGood + countVeryGood + countExcellent;

            // Calculate the average score
            double avgnode = totalResponses > 0 ?
                (countVeryBad * feedbackScores["very bad"] +
                 countBad * feedbackScores["bad"] +
                 countGood * feedbackScores["good"] +
                 countVeryGood * feedbackScores["very good"] +
                 countExcellent * feedbackScores["excellent"]) / (double)totalResponses : 0;

            // Convert average score to percentage
            double percentage = avgnode * 20; // converting to percentage assuming max score is 5

            // Determine card color based on average score
            string cardColor = percentage >= 85 ? "lightgreen" : "pink"; // Changed condition to >= 85 for green

            // Update the background color of the whole card
            ResultPanelNodeJs.BackColor = System.Drawing.Color.FromName(cardColor);
            ResultDetailsNode.Visible = true; // Show the result details panel

            // Update the label text with the calculated average and percentage
            AverageLabelNode.Text = $"Average Score: {avgnode:F2} ({percentage:F2}%)"; // New line to update the label text

            nodeclick.Text = "Hide Details"; // Change button text to "Hide Details"
        }
    }
}
