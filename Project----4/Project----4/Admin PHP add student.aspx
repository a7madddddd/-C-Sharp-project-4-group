<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin PHP add student.aspx.cs" Inherits="Project____4.Admin_PHP_add_student" %>

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
        <link href="css/templatemo-pod-talk.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />





       <style>
        .content {
            padding: 20px;
        }

        .custom-table-responsive {
            margin-top: 20px;
        }

        .custom-table {
            border-collapse: separate;
            border-spacing: 0 15px;
        }

        .custom-table th,
        .custom-table td {
            vertical-align: middle;
        }

        .custom-table thead th {
            background-color: #f8f9fa;
            border-bottom: none;
        }

        .custom-table th {
            border: none;
        }

        .custom-table tbody tr {
            box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
            transition: all 0.3s;
        }

        .custom-table tbody tr:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.15);
        }

        .custom-table tbody tr td {
            background-color: #ffffff;
            border: none;
        }

        .custom-table .control__indicator {
            background: #e4e4e4;
            border: 1px solid #bbb;
            border-radius: 4px;
        }

        .custom-table .control--checkbox input:checked ~ .control__indicator {
            background: #007bff;
            border: 1px solid #007bff;
        }

        .custom-table .control--checkbox input:checked ~ .control__indicator:before {
            border-color: #fff;
        }



        .custom-table .control--checkbox input:checked ~ .control__indicator {
            background: #007bff;
        }

        .custom-table a {
            color: blue;
            text-decoration: none;
        }

        .custom-table a:hover {
            text-decoration: underline;
        }

        .spacer td {
            background: transparent !important;
            border: none !important;
        }


         .delete-button {
    background-color: #dc3545; /* Bootstrap's danger color */
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: flex;
    align-items: center;
  }

  .delete-button:hover {
    background-color: #c82333; /* Darker shade of red */
  }

  .delete-icon {
    margin-right: 5px;
  }
    </style>
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
                </div>
            </asp:Panel>

            <asp:Panel runat="server" CssClass="hero-section">
                
            </asp:Panel>
              <asp:Panel runat="server" CssClass="empty-space" Style="height: 50px;"></asp:Panel>
              
             <div class="content">
                        <h2 class="mb-4 text-center">Php Technology Students</h2>

   <div class="container">

     

     <div class="table-responsive custom-table-responsive">


<div class="container mt-5">
        <div class="d-flex justify-content-between mb-3">
            <!-- Sort Button Group -->
            <div class="btn-group">
    <button type="button" class="btn btn-primary">Sort</button>
    <asp:LinkButton runat="server" CssClass="btn btn-primary dropdown-toggle dropdown-toggle-split"
        Text="<span class='sr-only'>Toggle Dropdown</span>" data-bs-toggle="dropdown"
        aria-haspopup="true" aria-expanded="false" />

    <div class="dropdown-menu">
        <asp:LinkButton runat="server" CssClass="dropdown-item" OnClick="SortById_Click">By Id</asp:LinkButton>
        <asp:LinkButton runat="server" CssClass="dropdown-item" OnClick="SortByName_Click">By Name</asp:LinkButton>
        <asp:LinkButton runat="server" CssClass="dropdown-item" OnClick="SortByEmail_Click">By Email</asp:LinkButton>
    </div>

 
<asp:Button ID="btnDeleteAll" runat="server" Text="Delete All" style="margin-left: 10px; border-radius: 6px;" CssClass="btn btn-danger" OnClick="btnDeleteAll_Click" />

                                  <!-- Download Button -->
<asp:Button ID="btnDownload" runat="server" CssClass="btn btn-primary" style="margin-left: 10px; border-radius: 6px;" OnClick="btnDownload_Click"
    Text='Download' />

            </div>

         


</div>
         

        <div data-mdb-input-init class="form-outline mb-4">
            <asp:TextBox ID="txtId" CssClass="form-control" runat="server" />
            <label class="form-label" for="txtId">Id</label>
        </div>

        <div data-mdb-input-init class="form-outline mb-4">
            <asp:TextBox ID="txtName" CssClass="form-control" runat="server" />
            <label class="form-label" for="txtName">Name</label>
        </div>

        <div data-mdb-input-init class="form-outline mb-4">
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email" />
            <label class="form-label" for="txtEmail">Email address</label>
        </div>

        <div data-mdb-input-init class="form-outline mb-4">
            <asp:TextBox ID="txtContact" CssClass="form-control" runat="server" />
            <label class="form-label" for="txtContact">Contact</label>
        </div>

        <asp:Button ID="btnAddStudent" CssClass="btn btn-primary btn-block mb-4" Text="Add New Student" OnClick="btnAddStudent_Click"  runat="server" />
    

        <div class="form-outline mb-4">
            <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server" ClientIDMode="Static" AutoPostBack="true" OnTextChanged="txtSearch_TextChanged" />
            <label class="form-label" for="txtSearch">Search</label>
        </div>
<div id="datatable">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table custom-table" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <label class="control control--checkbox">
                        <input type="checkbox" class="js-check-all" onclick="toggleCheckboxes(this);" />
                        <div class="control__indicator"></div>
                    </label>
                </HeaderTemplate>
                <ItemTemplate>
                    <label class="control control--checkbox">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <div class="control__indicator"></div>
                    </label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Id" HeaderText="Id" />
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# Eval("Id", "result for each student.aspx?Id={0}") %>' 
                        Text='<%# Eval("Name") %>'>
                    </asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" />
            <asp:BoundField DataField="Course" HeaderText="Course" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="DeleteRecord" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-danger" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>



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
            <a href="login.aspx" class="site-footer-link">LOGIN</a>
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
                        <%--<h6 class="site-footer-title mb-3">Social</h6>
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
                    </ul>--%>
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


    <script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.1/js/bootstrap.bundle.min.js"></script>





</body>

</html>>>

