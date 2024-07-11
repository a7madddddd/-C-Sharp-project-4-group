using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private string filePath = "/Students_c++.txt";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            var students = LoadStudentsFromFile(Server.MapPath(filePath));
            GridView1.DataSource = students;
            GridView1.DataBind();
        }

        private void SaveStudentsToFile(List<Student> students)
        {
            using (StreamWriter writer = new StreamWriter(Server.MapPath(filePath)))
            {
                foreach (var student in students)
                {
                    writer.WriteLine($"{student.Id},{student.Name},{student.Email},{student.Contact},{student.Course}");
                }
            }
        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            try
            {
                var newStudent = new Student
                {
                    Id = int.Parse(txtId.Text),
                    Name = txtName.Text,
                    Email = txtEmail.Text,
                    Contact = txtContact.Text,
                    Course = "C++"
                };

                var students = LoadStudentsFromFile(Server.MapPath(filePath));
                students.Add(newStudent);
                SaveStudentsToFile(students);
                BindGridView();
            }
            catch (Exception ex)
            {
                // Handle exceptions (e.g., show an error message)
                // lblError.Text = "An error occurred: " + ex.Message;
            }
        }

        private List<Student> LoadStudentsFromFile(string filePath)
        {
            var students = new List<Student>();

            if (File.Exists(filePath))
            {
                using (StreamReader reader = new StreamReader(filePath))
                {
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        var data = line.Split(',');
                        if (data.Length == 5)
                        {
                            students.Add(new Student
                            {
                                Id = int.Parse(data[0]),
                                Name = data[1],
                                Email = data[2],
                                Contact = data[3],
                                Course = data[4]
                            });
                        }
                    }
                }
            }

            return students;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteRecord")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                DeleteStudentFromFile(id, Server.MapPath(filePath));
                BindGridView(); // Rebind GridView after deletion
            }
        }

        private void DeleteStudentFromFile(int id, string filePath)
        {
            var lines = File.ReadAllLines(filePath).ToList();
            var updatedLines = lines.Where(line => !line.StartsWith(id.ToString() + ",")).ToList();

            // Save only if any line was removed
            if (updatedLines.Count < lines.Count)
            {
                File.WriteAllLines(filePath, updatedLines);
            }
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            var students = LoadStudentsFromFile(Server.MapPath(filePath));
            string searchText = txtSearch.Text.ToLower();

            var filteredStudents = students.Where(s => s.Name.ToLower().Contains(searchText) ||
                                                       s.Email.ToLower().Contains(searchText)).ToList();

            GridView1.DataSource = filteredStudents;
            GridView1.DataBind();
        }



        protected void SortById_Click(object sender, EventArgs e)
        {
            var students = LoadStudentsFromFile(Server.MapPath(filePath));
            students = students.OrderBy(s => s.Id).ToList();
            SaveStudentsToFile(students); // Save sorted list back to file (optional)
            BindGridView();
        }

        protected void SortByName_Click(object sender, EventArgs e)
        {
            var students = LoadStudentsFromFile(Server.MapPath(filePath));
            students = students.OrderBy(s => s.Name).ToList();
            SaveStudentsToFile(students); // Save sorted list back to file (optional)
            BindGridView();
        }

        protected void SortByEmail_Click(object sender, EventArgs e)
        {
            var students = LoadStudentsFromFile(Server.MapPath(filePath));
            students = students.OrderBy(s => s.Email).ToList();
            SaveStudentsToFile(students); // Save sorted list back to file (optional)
            BindGridView();
        }
        protected void btnDownload_Click(object sender, EventArgs e)
        {
            var students = LoadStudentsFromFile(Server.MapPath(filePath));

            StringBuilder sb = new StringBuilder();
            sb.AppendLine("Id, Name, Email, Contact, Course");

            foreach (var student in students)
            {
                sb.AppendLine($"{student.Id},{student.Name},{student.Email},{student.Contact},{student.Course}");
            }

            Response.Clear();
            Response.ContentType = "text/csv";
            Response.AddHeader("Content-Disposition", "attachment; filename=students.csv");
            Response.Write(sb.ToString());
            Response.End();
        }

        protected void btnDeleteAll_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("/Students_c++.txt");

            if (File.Exists(filePath))
            {
                // Clear the file content
                File.WriteAllText(filePath, string.Empty);

                // Optionally, you can delete the file itself
                // File.Delete(filePath);

                // Rebind GridView to reflect the changes
                BindGridView();
            }
        }




        public class Student
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public string Email { get; set; }
            public string Contact { get; set; }
            public string Course { get; set; }
        }
    }
}
