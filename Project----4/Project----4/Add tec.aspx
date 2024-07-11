<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add tec.aspx.cs" Inherits="Project____4.Add_tec" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Services</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-icons.css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link href="css/templatemo-pod-talk.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/carousel2.css" />
    <link rel="stylesheet" href="css/theme.css" />
    <link rel="stylesheet" href="css/template.css" />
    <link rel="stylesheet" href="StyleSheet1.css" />
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap"
        rel="stylesheet" />
    <style>
        .bbttnn1 {
         /*   margin-bottom: -3px;*/
            position: absolute;
            bottom: .5rem;
            left: .9rem;
            padding: .5rem 3em;
            width: 90%;
            transition: all 0.5s ease;
            text-overflow: ellipsis;
            white-space: nowrap;
            backdrop-filter: blur(.8rem) !important;
            background-color: rgba(0, 0, 0, 0.1);
            border-radius: .5rem 2rem;
            border-color: none;
            font-weight: 700;
            letter-spacing: 1px;
            font-size: large;
            font-family: 'Sono', sans-serif;
            color: #0066cc;
            border: none !important;
        }

        .card1 .bbttnn1:hover {
            transform: scale(0.9);
            backdrop-filter: blur(.8rem);
            background-color: rgba(0, 0, 0, 0.2);
        }

        .card1 .bbttnn2:hover {
            transform: scale(0.9);
            backdrop-filter: blur(.8rem);
            background-color: rgba(0, 0, 0, 0.2);
        }

        .card1 .bbttnn2 {
            position: absolute;
            left: .2rem;
            padding: .5rem 3em;
            width: 90%;
            transition: all 0.5s ease;
            text-overflow: ellipsis;
            white-space: nowrap;
            backdrop-filter: blur(.8rem);
            background-color: rgba(0, 0, 0, 0.1);
            border-radius: .5rem 2rem;
            font-weight: 700;
            letter-spacing: 1px;
            font-size: large;
            font-family: 'Sono', sans-serif;
            color: #0066cc;
            border: none !important;
        }

            .card1 .bbttnn2:hover {
                color: #0a58ca;
            }

        #popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            border: 5px solid #0066cc;
            /*    background-image: url('image/');
*/ background-image: url('images/pop.gif') !important;
            /*/* URL of the background image */
            background-size: cover; /* Cover the entire container */
            background-position: center; /* Center the image */
            background-repeat: no-repeat;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 1);
            z-index: 999;
        }

            #popup label {
                color: whitesmoke;
                font-size: 2em;
                font-weight: 900;
                transition: 0.5s ease;
                font-family: 'Sono', sans-serif;
            }

                #popup Label:hover {
                    color: #0067CC;
                    transform: scale(1.1);
                }

            #popup h2 {
                color: whitesmoke;
                font-family: 'Sono', sans-serif !important;
                transition: 0.6s ease;
            }

                #popup h2:hover {
                    color: #0066CC;
                }

            #popup #ch1, #ch2, #ch3, #ch4 {
                width: 20px;
                height: 15px;
                transform: scale(1.5);
                margin: 15px;
                cursor: pointer;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand me-lg-5 me-0" href="index.html">
                        <img src="images/logo.png" class="logo-image img-fluid" alt="logo" />
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav" style="justify-content:flex-end">
                        <ul class="navbar-nav ms-lg-auto" style="display:none">
                            <li class="nav-item">
                                <a class="nav-link " href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.html">Contact</a>
                            </li>
                        </ul>
                        <div class="ms-4">
                             <asp:HyperLink runat="server" NavigateUrl="Admin_Services.aspx" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4">Admin Services</asp:HyperLink>
                            <asp:LinkButton ID="LinkButtonLogout" runat="server" OnClick="LinkButtonLogout_Click" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4">Logout</asp:LinkButton>

                        </div>
                    </div>
                </div>
            </nav>
            <header class="site-header d-flex flex-column justify-content-center align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12 text-center">
                            <h2 class="mb-0">Add Technologies</h2>
                        </div>
                    </div>
                </div>
            </header>
            <section class="about-section section-padding" id="section_2">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12">
                            <div class="section-title-wrap mb-5">
                                <h4 class="section-title"><a href="#popup">Add Technologies and questions <i class="bi bi-plus-circle-fill"></i></a></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <div id="popup">
            <h2>Add Technologies</h2>
            <br />
            <br />
            <asp:Label runat="server" AssociatedControlID="ch1">#C</asp:Label>
            <asp:CheckBox runat="server" ID="ch1" />
            <br />
            <br />
            <asp:Label runat="server" AssociatedControlID="ch2">C++</asp:Label>
            <asp:CheckBox runat="server" ID="ch2" />
            <br />
            <br />
            <asp:Label runat="server" AssociatedControlID="ch3">Php</asp:Label>
            <asp:CheckBox runat="server" ID="ch3" />
            <br />
            <br />
            <asp:Label runat="server" AssociatedControlID="ch4">Node Js</asp:Label>
            <asp:CheckBox runat="server" ID="ch4" />
            <br />
            <br />
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" CssClass="button type1 close-popup" />
        </div>
        <asp:Panel ID="cardscontainer123" runat="server">
        </asp:Panel>
        <footer class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand">
                    <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
                        </asp:HyperLink>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                       <%-- <h6 class="site-footer-title mb-3">Links</h6>--%>
                       <%-- <ul class="site-footer-links">
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
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>
