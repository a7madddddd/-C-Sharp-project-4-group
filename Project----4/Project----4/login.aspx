<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Project____4.login" %>

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

            <asp:Panel runat="server" CssClass="hero-section">
                <div class="container">
                   
                    
        <section class="vh-100" style="height: 600px !important;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px; background-color: aliceblue">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                                        <h1 class="text-center fw-bold mb-5 mx-1 mx-md-4 mt-4" style="color: #00204a">LOGIN</h1>
                                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="text-center d-block"></asp:Label>
                                        <div class="mx-1 mx-md-4">
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw" aria-hidden="true" style="color: #00204a"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" Required="true" PlaceHolder="Your Email"></asp:TextBox>
                                                    <asp:Label AssociatedControlID="txtEmail" runat="server" CssClass="form-label" Text="Your Email"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw" aria-hidden="true" style="color: #00204a"></i>
                                                <div class="form-outline flex-fill mb-0 position-relative">
                                                    <asp:TextBox ID="txtID" runat="server" CssClass="form-control" TextMode="SingleLine" Required="true" PlaceHolder="Your ID"></asp:TextBox>
                                                    <asp:Label AssociatedControlID="txtID" runat="server" CssClass="form-label" Text="Your ID"></asp:Label>
                                                    <span toggle="#txtID" class="fa fa-fw fa-eye-slash field-icon toggle-password position-absolute"></span>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary btn-lg" Text="LOGIN" OnClick="btnLogin_Click" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2" style="justify-content:end;">
                                        <img src="images/12345.png" class="img-fluid" alt="Sample image" width="500px"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                        <h6 class="site-footer-title mb-3">Links</h6>
                        <ul class="site-footer-links" >
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
    </ul>
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

