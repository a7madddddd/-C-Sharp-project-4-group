using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project____4
{
    public partial class Admin_NodeJS_add_student : System.Web.UI.Page
    {
        private string filePath = "~/Students_NodeJs.txt";  // Adjusted file path
        private string commonFilePath = "~/students.txt";  // Common file path

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

        private void SaveStudentsToFile(List<Student> students, string path)
        {
            using (StreamWriter writer = new StreamWriter(Server.MapPath(path)))
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
                int id = int.Parse(txtId.Text);
                string name = txtName.Text;
                string email = txtEmail.Text;
                string contact = txtContact.Text;
                string newCourse = "Nodejs";

                var students = LoadStudentsFromFile(Server.MapPath(filePath));
                var commonStudents = LoadStudentsFromFile(Server.MapPath(commonFilePath));
                var student = students.FirstOrDefault(s => s.Id == id);
                var commonStudent = commonStudents.FirstOrDefault(s => s.Id == id);

                if (student != null)
                {
                    // Student already exists in course-specific file, update courses if not present
                    var courses = student.Course.Split(';').ToList();
                    if (!courses.Contains(newCourse))
                    {
                        courses.Add(newCourse);
                        student.Course = string.Join(";", courses);
                    }
                }
                else
                {
                    // New student
                    student = new Student
                    {
                        Id = id,
                        Name = name,
                        Email = email,
                        Contact = contact,
                        Course = newCourse
                    };
                    students.Add(student);
                }

                if (commonStudent != null)
                {
                    // Student already exists in common file, update courses if not present
                    var courses = commonStudent.Course.Split(';').ToList();
                    if (!courses.Contains(newCourse))
                    {
                        courses.Add(newCourse);
                        commonStudent.Course = string.Join(";", courses);
                    }
                }
                else
                {
                    // New student in common file
                    commonStudent = new Student
                    {
                        Id = id,
                        Name = name,
                        Email = email,
                        Contact = contact,
                        Course = newCourse
                    };
                    commonStudents.Add(commonStudent);
                }

                SaveStudentsToFile(students, filePath);
                SaveStudentsToFile(commonStudents, commonFilePath);
                BindGridView();
            }
            catch (Exception ex)
            {
                // Handle exceptions (e.g., show an error message)
                // lblError.Text = "An error occurred: " + ex.Message;
            }
        }

        private List<Student> LoadStudentsFromFile(string path)
        {
            var students = new List<Student>();

            if (File.Exists(path))
            {
                using (StreamReader reader = new StreamReader(path))
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

        // Sorting methods
        protected void SortById_Click(object sender, EventArgs e)
        {
            var students = LoadStudentsFromFile(Server.MapPath(filePath));
            students = students.OrderBy(s => s.Id).ToList();
            SaveStudentsToFile(students, filePath); // Save sorted list back to file (optional)
            BindGridView();
        }

        protected void SortByName_Click(object sender, EventArgs e)
        {
            var students = LoadStudentsFromFile(Server.MapPath(filePath));
            students = students.OrderBy(s => s.Name).ToList();
            SaveStudentsToFile(students, filePath); // Save sorted list back to file (optional)
            BindGridView();
        }

        protected void SortByEmail_Click(object sender, EventArgs e)
        {
            var students = LoadStudentsFromFile(Server.MapPath(filePath));
            students = students.OrderBy(s => s.Email).ToList();
            SaveStudentsToFile(students, filePath); // Save sorted list back to file (optional)
            BindGridView();
        }

        protected void btnDeleteAll_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath(filePath);

            if (File.Exists(path))
            {
                // Clear the file content
                File.WriteAllText(path, string.Empty);

                // Rebind GridView to reflect the changes
                BindGridView();
            }
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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteRecord")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                DeleteStudentFromFile(id, Server.MapPath(filePath));
                DeleteCourseFromCommonFile(id, "Nodejs", Server.MapPath(commonFilePath));
                BindGridView(); // Rebind GridView after deletion
            }
        }

        private void DeleteStudentFromFile(int id, string path)
        {
            var lines = File.ReadAllLines(path).ToList();
            var updatedLines = lines.Where(line => !line.StartsWith(id.ToString() + ",")).ToList();

            // Save only if any line was removed
            if (updatedLines.Count < lines.Count)
            {
                File.WriteAllLines(path, updatedLines);
            }
        }

        private void DeleteCourseFromCommonFile(int id, string course, string path)
        {
            var lines = File.ReadAllLines(path).ToList();
            for (int i = 0; i < lines.Count; i++)
            {
                var data = lines[i].Split(',');
                if (int.Parse(data[0]) == id)
                {
                    var courses = data[4].Split(';').ToList();
                    courses.Remove(course);
                    if (courses.Count == 0)
                    {
                        lines.RemoveAt(i);
                    }
                    else
                    {
                        data[4] = string.Join(";", courses);
                        lines[i] = string.Join(",", data);
                    }
                    break;
                }
            }

            File.WriteAllLines(path, lines);
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
