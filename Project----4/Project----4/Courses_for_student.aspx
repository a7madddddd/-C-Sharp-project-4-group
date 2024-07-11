<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses_for_student.aspx.cs" Inherits="Survey_and_Student_courses_pages.Courses_for_student" %>


<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>CODESPHERE-Unlock Your Coding Potential</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="true" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-icons.css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link href="css/templatemo-pod-talk.css" rel="stylesheet" />
    <style>
        .text-primary {
            color: #1a73e8 !important;
        }

        .border-primary {
            border-color: #1a73e8 !important;
        }

        .link-primary {
            color: #1a73e8 !important;
        }

        .card-custom {
            border-radius: 15px;
            transition: transform 0.2s;
            margin: 20px;
        }

        .card-custom:hover {
            transform: scale(1.05);
        }

        .card-body img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
            margin-bottom: 15px;
        }

        .card-body h4 {
            font-size: 1.25rem;
        }

        .card-body p {
            font-size: 0.875rem;
        }

        .disabled-card {
            opacity: 0.6;
            pointer-events: none;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <main>
            <asp:Panel runat="server" CssClass="navbar navbar-expand-lg">
                <div class="container">
                    <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand me-lg-5 me-0">
                        <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
                    </asp:HyperLink>

                    <asp:LinkButton runat="server" CssClass="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </asp:LinkButton>

                    <asp:Panel runat="server" CssClass="collapse navbar-collapse" ID="navbarNav"  style="justify-content:flex-end">
                        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
   
 </div>
                        <asp:LinkButton ID="LinkButtonLogout" runat="server" OnClick="LinkButtonLogout_Click" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4">Logout</asp:LinkButton>
                    </asp:Panel>
                </div>
            </asp:Panel>

            <asp:Panel runat="server" CssClass="hero-section">
                <div class="container">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-12 text-center">
                                <h2 class="mb-0" style="color:white !important">Student Courses</h2>
                            </div>
                        </div>
                    </div>

                    <section class="py-5 py-xl-8">
                        <asp:Panel ID="CoursesPanel" runat="server">
                            <div class="container">
                                <div class="row justify-content-md-center">
                                    <div class="col-12 col-md-10 col-lg-8 col-xl-7">
                                        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>
                                    </div>
                                </div>
                            </div>

                            <div class="container overflow-hidden">
                                <div class="row gy-4 gy-xl-0">
                                    <div class="col-12 col-sm-6 col-xl-4">
                                        <div id="CsharpCard" runat="server" class="card card-custom border-0 border-bottom border-primary shadow-sm">
                                            <div class="card-body text-center p-4 p-xxl-5">
                                                <img src="pic/csharp-featured.png" alt="C# Course">
                                                <h4 class="mb-4">C# Course Survey</h4>
                                                <p class="mb-4 text-secondary">Please fill out this survey to help us improve our C# course.</p>
                                                <asp:LinkButton ID="LinkButtonCsharp" runat="server" OnClick="LinkButtonCsharp_Click" CssClass="fw-bold text-decoration-none link-primary">Fill the Survey
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                                    </svg>
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-xl-4">
                                        <div id="PHPCard" runat="server" class="card card-custom border-0 border-bottom border-primary shadow-sm">
                                            <div class="card-body text-center p-4 p-xxl-5">
                                                <img src="pic/1658841510153.png" alt="PHP Course">
                                                <h4 class="mb-4">PHP Course Survey</h4>
                                                <p class="mb-4 text-secondary">Please fill out this survey to help us improve our PHP course.</p>
                                                <asp:LinkButton ID="LinkButtonPHP" runat="server" OnClick="LinkButtonPHP_Click" CssClass="fw-bold text-decoration-none link-primary">Fill the Survey
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                                    </svg>
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-xl-4">
                                        <div id="NodejsCard" runat="server" class="card card-custom border-0 border-bottom border-primary shadow-sm">
                                            <div class="card-body text-center p-4 p-xxl-5">
                                                <img src="pic/nodejs.svg" alt="Node.js Course">
                                                <h4 class="mb-4">Node.js Course Survey</h4>
                                                <p class="mb-4 text-secondary">Please fill out this survey to help us improve our Node.js course.</p>
                                                <asp:LinkButton ID="LinkButtonNodejs" runat="server" OnClick="LinkButtonNodejs_Click" CssClass="fw-bold text-decoration-none link-primary">Fill the Survey
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                                    </svg>
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-xl-4">
                                        <div id="CplusCard" runat="server" class="card card-custom border-0 border-bottom border-primary shadow-sm">
                                            <div class="card-body text-center p-4 p-xxl-5">
                                                <img src="pic/1687615910475.png" alt="C++ Course">
                                                <h4 class="mb-4">C++ Course Survey</h4>
                                                <p class="mb-4 text-secondary">Please fill out this survey to help us improve our C++ course.</p>
                                                <asp:LinkButton ID="LinkButtonCplus" runat="server" OnClick="LinkButtonCplus_Click" CssClass="fw-bold text-decoration-none link-primary">Fill the Survey
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                                    </svg>
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                    </section>
                </div>
            </asp:Panel>
        </main>

        <footer class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand">
                            <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
                        </asp:HyperLink>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                       <%-- <h6 class="site-footer-title mb-3">Links</h6>
                        <ul class="site-footer-links">
                            <li class="site-footer-link-item" style="display: block !important;">
                                <a href="home.aspx" class="site-footer-link">Home</a>
                            </li>

                            <li class="site-footer-link-item" style="display: block !important;">
                                <a href="about.aspx" class="site-footer-link">About</a>
                            </li>

                            <li class="site-footer-link-item" style="display: block !important;">
                                <a href="contact.aspx" class="site-footer-link">Contact Us</a>
                            </li>

                            <li class="site-footer-link-item" style="display: block !important;">
                                <a href="#" class="site-footer-link">LOGIN</a>
                            </li>
                        </ul>--%>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                        <h6 class="site-footer-title mb-3">Contact</h6>
                        <p class="mb-2"><strong class="d-inline me-2">Phone:</strong> 0771234567</p>
                        <p>
                            <strong class="d-inline me-2">Email:</strong>
                            <asp:HyperLink runat="server" NavigateUrl="mailto:codesphere@gmail.com">codesphere@gmail.com</asp:HyperLink>
                        </p>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12">
                        <h6 class="site-footer-title mb-3">Social</h6>
                        <ul class="social-icon">
                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link bi-instagram"></a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link bi-twitter"></a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link bi-whatsapp"></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12">
                        <div style="display:flex; justify-content:center;">
                            <p>Copyright © 2024 CodeSphere Academy</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </form>

    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>
