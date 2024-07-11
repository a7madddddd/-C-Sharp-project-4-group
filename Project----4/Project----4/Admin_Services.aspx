<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin Services.aspx.cs" Inherits="Project4.Admin_Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Admin Services</title>
    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
    href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap"
    rel="stylesheet"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/bootstrap-icons.css"/>
    <link rel="stylesheet" href="css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="css/owl.theme.default.min.css"/>
    <link href="css/templatemo-pod-talk.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <main>
                   <%-- navbar --%>
   <asp:Panel runat="server" CssClass="navbar navbar-expand-lg">
        <div class="container">
            <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand me-lg-5 me-0">
                <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
            </asp:HyperLink>

            <asp:LinkButton runat="server" CssClass="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </asp:LinkButton>

            <asp:Panel runat="server" CssClass="collapse navbar-collapse" ID="navbarNav" style="justify-content: flex-end;">
                <ul class="navbar-nav ms-lg-auto" style="display:none">
                    <li class="nav-item">
                        <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="nav-link">Home</asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink runat="server" NavigateUrl="about.aspx" CssClass="nav-link">About</asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink runat="server" NavigateUrl="contact.aspx" CssClass="nav-link">Contact</asp:HyperLink>
                    </li>
                </ul>
                 <asp:LinkButton ID="LinkButtonLogout" runat="server" OnClick="LinkButtonLogout_Click" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4">Logout</asp:LinkButton>

              <%--  <asp:HyperLink runat="server" NavigateUrl="hogin.aspx" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4 ms-auto">LOGOUT</asp:HyperLink>--%>
            </asp:Panel>
        </div>
    </asp:Panel>
        <header class="site-header d-flex flex-column justify-content-center align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-12 text-center">
                        <h2 class="mb-0">Services</h2>
                    </div>
                </div>
            </div>
        </header>
        <section class="topics-section section-padding pb-0" id="section_3">
            <div class="container" style="padding-bottom:100px">
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-12">
                        <div class="section-title-wrap mb-5">
                            <h4 class="section-title">Admin Services</h4>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                        <div class="custom-block custom-block-overlay">
                   <asp:LinkButton ID="techImg" runat="server" class="custom-block-image-wrap" OnClick="techImg_Click">
                       <img src="images/topics/Technologies.jpg" class="custom-block-image img-fluid" alt="Technologies"/>
                   </asp:LinkButton>
                            <div class="custom-block-info custom-block-overlay-info">
                                <h5 class="mb-1">
                   <asp:LinkButton ID="techLink" runat="server" OnClick="techLink_Click">Technologies</asp:LinkButton>
                                </h5>
                                <p>the skills you need to 
                                    succeed in the world of programming.</p>
                                <span class="badge">Feedback Questions</span>
                                <span class="badge">Students</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                        <div class="custom-block custom-block-overlay" runat="server">
                   <asp:LinkButton ID="ResultImg" runat="server" class="custom-block-image-wrap" OnClick="LinkButton2_Click">
                       <img src="images/topics/result2.jpg" class="custom-block-image img-fluid" alt="Result"/>
                   </asp:LinkButton>
                            <div class="custom-block-info custom-block-overlay-info">
                                <h5 class="mb-1" runat="server">
                   <asp:LinkButton ID="ReultLink" runat="server" OnClick="LinkButton1_Click" >Surveys Results</asp:LinkButton>
                                </h5>
                                <p >student's feedback details,
    with average for each technology.</p>
                                <span class="badge">Students Feedback </span>
                                 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>    
    </main>
        </div>
            </form>
                    <footer class="site-footer">
        <div class="container">
            <div class="row">

                            <div class="col-lg-3 col-md-6 col-12">
                <a class="navbar-brand" href="index.html">
                    <img src="images/logo.png" class="logo-image img-fluid" alt="logo"/>
                </a>
            </div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0" >
                   
   <%-- <ul class="site-footer-links" >
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

        <div class="container ">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-12">
                    <div style="display:flex; justify-content:center;">
                    <p>Copyright © 2024 codesphere academy</p>
                        </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- JAVASCRIPT FILES -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
