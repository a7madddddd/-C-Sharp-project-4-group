
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CppQustion.aspx.cs" Inherits="Question.CPlusPlus" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manage C++ Questions</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="preconnect" href="https://fonts.googleapis.com">

 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

 <link
     href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap"
     rel="stylesheet">

 <link rel="stylesheet" href="css/bootstrap.min.css">

 <link rel="stylesheet" href="css/bootstrap-icons.css">

 <link rel="stylesheet" href="css/owl.carousel.min.css">

 <link rel="stylesheet" href="css/owl.theme.default.min.css">

 <link href="css/templatemo-pod-talk.css" rel="stylesheet">
    <style>
        .navbar{
            background-image:url("images/templatemo-wave-header.jpg");
        
        }
    </style>
</head>
   
<body>
    <form id="form1" runat="server">
                <asp:Panel runat="server" CssClass="navbar navbar-expand-lg">
         <div class="container">
             <asp:HyperLink runat="server" NavigateUrl="index.aspx" CssClass="navbar-brand me-lg-5 me-0">
                 <asp:Image runat="server" ImageUrl="images/logo.png" CssClass="logo-image img-fluid" AlternateText="logo" />
             </asp:HyperLink>

             <asp:LinkButton runat="server" CssClass="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                 <span class="navbar-toggler-icon"></span>
             </asp:LinkButton>
             <asp:Panel runat="server" CssClass="collapse navbar-collapse" ID="navbarNav"  style="justify-content:flex-end">
    <ul class="navbar-nav ms-lg-auto" style="display:none">
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
            <%-- <asp:Panel runat="server" CssClass="collapse navbar-collapse" ID="navbarNav"  style="justify-content:flex-end">
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
                  <asp:HyperLink runat="server" NavigateUrl="Add tec.aspx" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4" >Backe To DashBoard</asp:HyperLink>
                 <asp:HyperLink runat="server" NavigateUrl="login.aspx" CssClass="btn custom-btn custom-border-btn smoothscroll ms-4 ms-auto">LOGOUT</asp:HyperLink>
             </asp:Panel>--%>
         </div>
     </asp:Panel>

        <br /><br /><br />
        <br /><br /><br />
        <br /><br /><br />
        <div class="container mt-5">
            <h2 class="text-center">Manage C++ Questions</h2>
            <div class="form-group">
                <label for="txtQuestion">Add a Question</label>
                <asp:TextBox ID="txtQuestion" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group mt-2">
                <asp:Button ID="btnAdd" runat="server" Text="Add Question" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
            </div>
            <asp:Panel ID="pnlQuestions" runat="server" CssClass="mt-4">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Question</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptQuestions" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.DataItem %></td>
                                    <td>
                                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" CommandArgument='<%# Container.ItemIndex %>' OnClick="btnDelete_Click" />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </asp:Panel>
        </div>
          <br /><br /><br />
       <footer class="site-footer">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-md-6 col-12">
    <a class="navbar-brand" href="index.html">
        <img src="images/logo.png" class="logo-image img-fluid" alt="logo">
    </a>
</div>

                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0" >
           <%--        
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
                    <p>Copyright Â© 2024 codesphere academy</p>
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
    <script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
