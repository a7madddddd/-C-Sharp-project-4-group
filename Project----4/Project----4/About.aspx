<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Project4.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>About CodeSphere</title>
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
    <style>
        .team-thumb img {
            width: 100%;
            height: 500px; /* Adjust the height as needed */
            object-fit: cover; /* Ensures the image covers the area without stretching */
        }
        img {
            width: 100%;
            height: 500px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <main>
    <%-- Navbar --%>
                                   <asp:Panel runat="server" CssClass="navbar navbar-expand-lg">
    <div class="container">
        <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand me-lg-5 me-0">
            <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
        </asp:HyperLink>

        <asp:LinkButton runat="server" CssClass="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </asp:LinkButton>

        <asp:Panel runat="server" CssClass="collapse navbar-collapse" ID="navbarNav">
            <ul class="navbar-nav ms-lg-auto">
                <li class="nav-item">
                    <asp:HyperLink runat="server" NavigateUrl="home.aspx" CssClass="nav-link">Home</asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink runat="server" NavigateUrl="About.aspx" CssClass="nav-link">About</asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink runat="server" NavigateUrl="ContactPage.aspx" CssClass="nav-link">Contact</asp:HyperLink>
                </li>
            </ul>
            <asp:HyperLink runat="server" NavigateUrl="login.aspx" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4">LOGIN</asp:HyperLink>
        </asp:Panel>
    </div>
</asp:Panel>
    <header class="site-header d-flex flex-column justify-content-center align-items-center">
        <div class="container">
            <div class="row">

                <div class="col-lg-12 col-12 text-center">

                    <h2 class="mb-0">About CodeSphere</h2>
                </div>

            </div>
        </div>
    </header>
    <section class="about-section section-padding" id="section_2">
        <div class="container">
            <div class="row">
               <div class="col-lg-8 col-12 mx-auto">
                   <div class="pb-5 mb-5">
                       <div class="section-title-wrap mb-4">
                           <h4 class="section-title">Our Mission</h4>
                       </div>
        <p>At CodeSphere, we believe that feedback is the cornerstone of growth and innovation.
            Our mission is to empower students by providing 
            a platform that transforms insights into actionable improvements.</p>
        <p>We are dedicated to creating a space where every opinion matters,
            fostering an environment of continuous enhancement and collaboration.</p>
                   </div>
               </div>
                <div class="col-lg-8 col-12 mx-auto">
                    <div class="pb-5 mb-5">
                        <div class="section-title-wrap mb-4">
                            <h4 class="section-title">Our story</h4>
                        </div>

                        <p>CodeSphere was born out of a simple yet powerful idea:
                            to bridge the gap between feedback providers
                            and recipients in a meaningful way within the field of coding education.
                            </p>

                        <p>Our founder, Batool Aldalki, recognized the need for a seamless
                            and efficient feedback mechanism tailored specifically for programming learners.
                            With backgrounds in technology, education, and software development,
                            they set out to create a solution that would revolutionize the way feedback is collected,
                            analyzed, and utilized in coding academies.</p>

                        <img src="images/story.jpg"
                            class="about-image mt-5 img-fluid" alt=""/>
                    </div>
                </div>
                

                <div class="col-lg-12 col-12">
                    <div class="section-title-wrap mb-5">
                        <h4 class="section-title">Our Team</h4>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12 mb-4">
                    <div class="team-thumb bg-white shadow-lg">
                        <img src="images/profile/hadeel.jpeg"
                            class="about-image img-fluid" alt=""/>

                        <div class="team-info">
                            <h4 class="mb-2">
                                Hadeel                       
                            </h4>
                            <span class="badge">Scrum Master</span>
                            <span class="badge">Web Developer</span>
                        </div>

                        <div class="social-share">
                            <ul class="social-icon">

                                <li class="social-icon-item">
                                    <a href="https://www.linkedin.com/in/hadeel-al-zoubi-b70584210/" target="_blank" class="social-icon-link bi-linkedin"></a>
                                </li>
                                <li class="social-icon-item">
                                    <a href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=hadeel@gmail.com" class="social-icon-link bi-envelope"></a>

                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12 mb-4">
                    <div class="team-thumb bg-white shadow-lg">
                        <img src="images/profile/husam.png" class="about-image img-fluid" alt="" />

                        <div class="team-info">
                            <h4 class="mb-2">
                                Hosam
                            </h4>

                            <span class="badge">Product Owner</span>
                             <span class="badge">Web Developer</span>
                        </div>

                        <div class="social-share">
                            <ul class="social-icon">
                                <li class="social-icon-item">
                                    <a href="https://www.linkedin.com/in/hosam-abuelhija-264b032b7/" target="_blank" class="social-icon-link bi-linkedin"></a>
                                </li>
                                <li class="social-icon-item">
                                    <a href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=hosam@gmail.com" class="social-icon-link bi-envelope"></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12 mb-4">
                    <div class="team-thumb bg-white shadow-lg">
                        <img src="images/profile/nour.jpg" class="about-image img-fluid" alt=""/>

                        <div class="team-info">
                            <h4 class="mb-2">
                                Nour                      
                            </h4>

                            <span class="badge">Web Developer</span>
                            <span class="badge">UI/UX Designer</span>
                        </div>

                        <div class="social-share">
                             <ul class="social-icon">
                                 <li class="social-icon-item">
                                     <a href="https://www.linkedin.com/in/nour-al-shloul-73997b220/" target="_blank" class="social-icon-link bi-linkedin"></a>

                                 </li>
                                 <li class="social-icon-item">
                                     <a href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=nourrshloul@gmail.com" target="_blank" class="social-icon-link bi-envelope"></a>

                                 </li>
                             </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12 mb-4">
                    <div class="team-thumb bg-white shadow-lg">
                        <img src="images/profile/lujain.jpg"
                            class="about-image img-fluid" alt=""/>

                        <div class="team-info">
                            <h4 class="mb-2">
                                Lujain                       
                            </h4>

                            <span class="badge">Web Developer</span>
                            <span class="badge">UI/UX Designer</span>

                        </div>

                        <div class="social-share">
                             <ul class="social-icon">
                                 <li class="social-icon-item">
                                     <a href="https://www.linkedin.com/in/lujain-alazzam-3549a61b0/" class="social-icon-link bi-linkedin"></a>

                                 </li>
                                 <li class="social-icon-item">
                                     <a href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=lujainalazzam98@gmail.com@gmail.com" class="social-icon-link bi-envelope"></a>

                                 </li>

                             </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12 mb-4">
                    <div class="team-thumb bg-white shadow-lg">
                        <img src="images/profile/ahmed.png"
                            class="about-image img-fluid" alt="" />

                        <div class="team-info">
                            <h4 class="mb-2">
                                Ahmad
                            </h4>

                            <span class="badge">Web Developer</span>
                            <span class="badge">UI/UX Designer</span>
                        </div>

                        <div class="social-share">
                             <ul class="social-icon">

     <li class="social-icon-item">
         <a href="https://www.linkedin.com/in/ahmad-onizat-ba38b4298/" class="social-icon-link bi-linkedin"></a>
     </li>
     <li class="social-icon-item">
         <a href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=ahmad@gmail.com" class="social-icon-link bi-envelope"></a>

     </li>
 </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12 mb-4">
                    <div class="team-thumb bg-white shadow-lg">
                        <img src="images/profile/bassam.png"
                            class="about-image img-fluid" alt=""/>

                        <div class="team-info">
                            <h4 class="mb-2">
                                Bassam
                            </h4>
                            <span class="badge">Web Developer</span>  
                            <span class="badge">UI/UX Designer</span>
                        </div>
                        <div class="social-share">
                             <ul class="social-icon">
     <li class="social-icon-item">
         <a href="https://www.linkedin.com/in/bassam-banyali-5b308b12a/" class="social-icon-link bi-linkedin"></a>
     </li>
     <li class="social-icon-item">
         <a href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=bassam@gmail.com" class="social-icon-link bi-envelope"></a>
     </li>
                             </ul>
                        </div>
                    </div>
                </div>
                </div>
            </div>
    </section>
                <div class="col-lg-8 col-12 mx-auto">
                    <div class="pb-5 mb-5">
                        <div class="section-title-wrap mb-4">
                            <h4 class="section-title">Our Values</h4>
                        </div>
        <p>Transparency: We believe in open communication and clear processes, 
            ensuring that feedback is always honest and actionable.</p>
        <p>Innovation: We continuously strive to improve our platform,
            incorporating the latest technologies and
            methodologies to stay ahead of the curve.</p>
        <p>Students-Centricity: Your satisfaction is our top priority.
            We listen to your needs and work tirelessly to exceed your expectations.</p>
                    </div>
                </div>
            </main>
<%-- Footer --%>
            
            <footer class="site-footer">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-md-6 col-12">
    <a class="navbar-brand" href="index.html">
        <img src="images/logo.png" class="logo-image img-fluid" alt="logo"/>
    </a>
</div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0" >
                   
    <ul class="site-footer-links" >
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
    </ul>

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
        </div>
    </form>
     <!-- JAVASCRIPT FILES -->
 <script src="js/jquery.min.js"></script>
 <script src="js/bootstrap.bundle.min.js"></script>
 <script src="js/owl.carousel.min.js"></script>
 <script src="js/custom.js"></script>
</body>
</html>
