﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultPageWebForm.aspx.cs" Inherits="ResultPage.ResultPageWebForm" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>Pod Talk - Free Bootstrap 5 CSS Template</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-icons.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link href="css/templatemo-pod-talk.css" rel="stylesheet">

    <style>
        .result-card {
            padding: 20px;
            margin: 20px;
            border-radius: 10px;
            color: white;
            font-size: 20px;
            text-align: center;
        }

        .navbar {
            background-image: url("images/templatemo-wave-header.jpg");
        }
/*class="custom-block custom-block-full"*/

.custom-block{

}
        .result-card {
            padding: 20px;
            margin: 20px;
            border-radius: 50px;
            color: white;
            font-size: 20px;
            text-align: center;
        }

        .custom-block-image {
            width: 100%;
            height: 200px; /* Adjust as needed */
            object-fit: cover;
            border-radius: 10px;
        }
    </style>
</head>

<body>
    <main>
        <form id="formnav" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Panel runat="server" CssClass="navbar navbar-expand-lg">
                <div class="container">
                    <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand me-lg-5 me-0">
                        <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
                    </asp:HyperLink>

                    <asp:LinkButton runat="server" CssClass="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </asp:LinkButton>

                    <asp:Panel runat="server" CssClass="collapse navbar-collapse" ID="navbarNav" style="justify-content:flex-end">
                         <asp:HyperLink runat="server" NavigateUrl="Admin_Services.aspx" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4">Admin Services</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="login.aspx" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4">LOGOUT</asp:HyperLink>
                    </asp:Panel>
                </div>
            </asp:Panel>

            <section class="trending-podcast-section section-padding">
                <div class="container">
                    <div class="col-lg-12 col-12">
                        <div class="section-title-wrap mb-5">
                            <h4 class="section-title">FeedBack Result</h4>
                        </div>
                    </div>

                    <div class="row" style="display:flex !important; justify-content: center; position:relative; padding: 10px !important">
                        <div class="col-lg-4 col-12">
                            <div class="custom-block custom-block-full">
                                <asp:UpdatePanel ID="UpdatePanelCpp" runat="server">
                                    <ContentTemplate>
                                        <asp:Panel ID="ResultPanelcpp" runat="server">
                                            <div class="custom-block-image-wrap">
                                                <a href="detail-page.html">
                                                    <img src="pic/1687615910475.png" class="custom-block-image img-fluid custom-block-image" alt="">
                                                </a>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </div>
                                            <div class="custom-block-info">
                                                <h5 class="mb-2">
                                                    <a href="detail-page.html">C++</a>
                                                </h5>
                                                <asp:Button ID="cclick" runat="server" Text="Show Details" OnClick="c_Click" BackColor="AliceBlue" style="border-radius:10px" BorderStyle="None" />
                                                <asp:Panel ID="ResultDetailsCpp" runat="server" CssClass="result-card" Visible="false">
                                                    <asp:Label ID="AverageLabelCpp" runat="server" Text=""></asp:Label>
                                                </asp:Panel>
                                            </div>
                                        </asp:Panel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="custom-block custom-block-full">
                                <asp:UpdatePanel ID="UpdatePanelCsharp" runat="server">
                                    <ContentTemplate>
                                        <asp:Panel ID="ResultPanelccharp" runat="server">
                                            <div class="custom-block-image-wrap">
                                                <a href="detail-page.html">
                                                    <img src="pic/csharp-featured-removebg-preview.png" class="custom-block-image img-fluid custom-block-image" alt="">
                                                </a>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </div>
                                            <div class="custom-block-info">
                                                <h5 class="mb-2">
                                                    <a href="detail-page.html">C#</a>
                                                </h5>
                                                <asp:Button ID="csharpclick" runat="server" Text="Show Details" OnClick="Csharp_Click" BackColor="AliceBlue" style="border-radius:10px" BorderStyle="None" />
                                                <asp:Panel ID="ResultDetailsCsharp" runat="server" CssClass="result-card" Visible="false">
                                                    <asp:Label ID="AverageLabelCsharp" runat="server" Text=""></asp:Label>
                                                </asp:Panel>
                                            </div>
                                        </asp:Panel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="display:flex !important; position:relative; justify-content: center; padding: 10px !important;">
                        <div runat="server" class="col-lg-4 col-12">
                            <div class="custom-block custom-block-full">
                                <asp:UpdatePanel ID="UpdatePanelPhp" runat="server">
                                    <ContentTemplate>
                                        <asp:Panel ID="ResultPanelphp" runat="server">
                                            <div class="custom-block-image-wrap">
                                                <a href="detail-page.html">
                                                    <img src="pic/1658841510153.png" class="custom-block-image img-fluid custom-block-image" alt="">
                                                </a>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </div>
                                            <div class="custom-block-info">
                                                <h5 class="mb-2">
                                                    <a>PHP</a>
                                                </h5>
                                                <asp:Button ID="phpclick" runat="server" Text="Show Details" OnClick="Php_Click" BackColor="AliceBlue" style="border-radius:10px" BorderStyle="None" />
                                                <asp:Panel ID="ResultDetailsPhp" runat="server" CssClass="result-card" Visible="false">
                                                    <asp:Label ID="AverageLabelPhp" runat="server" Text=""></asp:Label>
                                                </asp:Panel>
                                            </div>
                                        </asp:Panel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
                            <div class="custom-block custom-block-full">
                                <asp:UpdatePanel ID="UpdatePanelNodeJs" runat="server">
                                    <ContentTemplate>
                                        <asp:Panel ID="ResultPanelNodeJs" runat="server">
                                            <div class="custom-block-image-wrap">
                                                <a href="detail-page.html">
                                                    <img src="pic/6471348.png" class="custom-block-image img-fluid custom-block-image" alt="">
                                                </a>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </div>
                                            <div class="custom-block-info">
                                                <h5 class="mb-2">
                                                    <a>Node.js</a>
                                                </h5>
                                                <asp:Button ID="nodeclick" runat="server" Text="Show Details" OnClick="Node_Click" BackColor="AliceBlue" style="border-radius:10px" BorderStyle="None" />
                                                <asp:Panel ID="ResultDetailsNode" runat="server" CssClass="result-card" Visible="false">
                                                    <asp:Label ID="AverageLabelNode" runat="server" Text=""></asp:Label>
                                                </asp:Panel>
                                            </div>
                                        </asp:Panel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
    </main>

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