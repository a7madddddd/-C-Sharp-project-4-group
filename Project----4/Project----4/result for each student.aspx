<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result for each student.aspx.cs" Inherits="Project____4.result_for_each_student" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>CODESPHERE - Unlock Your Coding Potential</title>

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
                    <asp:HyperLink runat="server" NavigateUrl="home.aspx" CssClass="navbar-brand me-lg-5 me-0">
                        <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
                    </asp:HyperLink>

                    <asp:LinkButton runat="server" CssClass="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </asp:LinkButton>

                    <asp:Panel runat="server" CssClass="collapse navbar-collapse" ID="navbarNav" Style="justify-content: flex-end">
                        <ul class="navbar-nav ms-lg-auto" style="display: none">
                            <li class="nav-item">
                                <asp:HyperLink runat="server" NavigateUrl="home.aspx" CssClass="nav-link">Home</asp:HyperLink>
                            </li>
                            <li class="nav-item">
                                <asp:HyperLink runat="server" NavigateUrl="about.aspx" CssClass="nav-link">About</asp:HyperLink>
                            </li>
                            <li class="nav-item">
                                <asp:HyperLink runat="server" NavigateUrl="contact.aspx" CssClass="nav-link">Contact</asp:HyperLink>
                            </li>
                        </ul>
                         <asp:HyperLink runat="server" NavigateUrl="Add tec.aspx" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4">Backe To DashBoard</asp:HyperLink>
                        <asp:HyperLink runat="server" NavigateUrl="login.aspx" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4">LOGOUT</asp:HyperLink>
                    </asp:Panel>
                </div>
            </asp:Panel>

            <asp:Panel runat="server" CssClass="hero-section">
            </asp:Panel>
            <asp:Panel runat="server" CssClass="empty-space" Style="height: 50px;"></asp:Panel>
            <asp:Panel runat="server" CssClass="empty-space" Style="height: 50px;"></asp:Panel>
            <asp:Panel runat="server" CssClass="empty-space" Style="height: 50px;"></asp:Panel>

            <div id="datatable">
                <asp:GridView ID="questionGridView" runat="server" AutoGenerateColumns="False" CssClass="table custom-table">
                    <Columns>
                        <asp:BoundField DataField="QuestionText" HeaderText="Question" />
                        <asp:BoundField DataField="AnswerText" HeaderText="Answer" />
                    </Columns>
                </asp:GridView>
            </div>
            
            <div style="width:100%; display:flex; justify-content:center;">
                <asp:Button ID="btnDownload" runat="server" Text="Download as File" OnClick="btnDownload_Click" CssClass="btn btn-primary mt-3" />
            </div>

            

            <asp:Panel runat="server" CssClass="empty-space" Style="height: 50px;"></asp:Panel>
            <asp:Panel runat="server" CssClass="empty-space" Style="height: 50px;"></asp:Panel>
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
                                <a href="login.aspx" class="site-footer-link">LOGIN</a>
                            </li>
                        </ul>--%>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                        <h6 class="site-footer-title mb=3">Contact</h6>
                        <p class="mb-2"><strong class="d-inline me-2">Phone:</strong> 0771234567</p>
                        <p>
                            <strong class="d-inline me-2">Email:</strong>
                            <asp:HyperLink runat="server" NavigateUrl="mailto:codesphere@gmail.com">codesphere@gmail.com</asp:HyperLink>
                        </p>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12">
                        <h6 class="site-footer-title mb=3">Social</h6>
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
