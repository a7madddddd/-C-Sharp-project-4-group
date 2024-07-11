<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Survey_page_nodejs.aspx.cs" Inherits="Survey_and_Student_courses_pages.Survey_page_nodejs" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Survey</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="true">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap-icons.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link href="css/templatemo-pod-talk.css" rel="stylesheet">
    <script type="text/javascript" src="JavaScript.js"></script>
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 1rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #1a73e8;
            border-radius: 1rem 1rem 0 0;
        }
        .card-title {
            color: #fff;
        }
        .btn-primary {
            background-color: #1a73e8;
            border-color: #1a73e8;
        }
        .btn-primary:hover {
            background-color: #155ab6;
            border-color: #155ab6;
        }
        .text-primary {
            color: #1a73e8 !important;
        }
        .form-check-input:checked {
            background-color: #1a73e8;
            border-color: #1a73e8;
        }
        .form-check {
            display: flex;
            align-items: center;
            margin-bottom: 0.5rem;
        }
        .form-check-input {
            margin-right: 10px;
        }
        .form-check-label {
            margin: 0;
        }
        .question-block {
            margin-bottom: 1.5rem;
        }
        .thank-you {
            text-align: center;
            font-size: 1.5rem;
            color: #1a73e8;
        }
        .navbar {
            margin-bottom: 2rem;
        }
        .survey-container {
            margin-top: 2rem;
        }
        .site-footer {
            margin-top: 2rem;
        }
        .required-star {
            color: red;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg fixed-top justify-content-center">
        <div class="container d-flex justify-content-center">
            <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand">
                <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
            </asp:HyperLink>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            </div>
        </div>
    </nav>
    <header class="site-header d-flex flex-column justify-content-center align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12 text-center">
                    <h2 class="mb-0">Survey</h2>
                </div>
            </div>
        </div>
    </header>
    <div class="container survey-container">
        <form id="form1" runat="server" class="mx-auto my-5" style="max-width: 60%;" onsubmit="return validateSurvey();">
            <asp:Panel ID="SurveyPanel" runat="server">
                <div class="card">
                    <div class="card-header" style="background-color: #7BBEF0 !important">
                        <h5 class="card-title mt-2" style="text-align: center !important;">Feedback Request</h5>
                    </div>
                    <div class="modal-body">
                        <div class="text-center">
                            <i class="far fa-file-alt fa-4x mb-3 text-primary" style="color: #7BBEF0 !important"></i>
                            <p><strong>Your opinion matters</strong></p>
                            <p><strong>Give us your feedback.</strong></p>
                        </div>
                        <hr />
                        <div class="px-4">
                            <asp:PlaceHolder ID="QuestionsPlaceholder" runat="server"></asp:PlaceHolder>
                            <asp:Label ID="ErrorMessage" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                        </div>
                    </div>
                    <div class="card-footer text-end">
                        <asp:Button ID="submitButton" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="SubmitButton_Click" />
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="ThankYouPanel" runat="server" CssClass="thank-you" Visible="False">
                <div class="card">
                    <div class="card-body">
                        <p>Thank you for your feedback!</p>
                    </div>
                </div>
                <div class="mt-3">
                    <asp:Button ID="BackToCoursesButton" runat="server" CssClass="btn btn-primary" OnClick="BackToCoursesButton_Click" Text="Back to Courses" />
                </div>
            </asp:Panel>
        </form>
    </div>
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-12">
                    <a class="navbar-brand" href="index.html">
                        <img src="images/logo.png" class="logo-image img-fluid" alt="logo">
                    </a>
                </div>
                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                  <%--  <ul class="site-footer-links">
                        <li class="site-footer-link-item" style="display: block !important;">
                            <a href="#" class="site-footer-link">Home</a>
                        </li>
                        <li class="site-footer-link-item" style="display: block !important;">
                            <a href="#" class="site-footer-link">About</a>
                        </li>
                        <li class="site-footer-link-item" style="display: block !important;">
                            <a href="#" class="site-footer-link">Contact Us</a>
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
                        <a href="#">codesphere@gmail.com</a>
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
                    <div style="display: flex; justify-content: center;">
                        <p>Copyright © 2024 codesphere academy</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>