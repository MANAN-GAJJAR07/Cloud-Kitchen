<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CloudKitchen.contact" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Victory - Contact page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
            <%--Any querry have to contact me --%>

    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="css/fontAwesome.css" />
    <link rel="stylesheet" href="css/hero-slider.css" />
    <link rel="stylesheet" href="css/owl-carousel.css" />
    <link rel="stylesheet" href="css/templatemo-style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="container">
                <a href="#" class="navbar-brand scroll-top">Victory</a>
                <nav class="navbar navbar-inverse" role="navigation">
                    <div class="navbar-header">
                        <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div id="main-nav" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="index.aspx">Home</a></li>
                            <li><a href="menu.aspx">Our Menus</a></li>
                            <li><a href="blog.aspx">Blog Entries</a></li>
                            <li class="active"><a href="contact.aspx">Contact Us</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>

        <section class="page-heading">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Contact Us</h1>
                        <p>Whatever drinking vinegar hella fingerstache shoreditch kickstarter kitsch. La croix hella iceland flexitarian letterpress.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="contact-us">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="section-heading">
                            <h2>Message</h2>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <fieldset>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Your name..." required="true"></asp:TextBox>
                                </fieldset>
                                <fieldset>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Your email..." required="true"></asp:TextBox>
                                </fieldset>
                                <fieldset>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Your phone..." required="true"></asp:TextBox>
                                </fieldset>
                            </div>
                            <div class="col-md-6">
                                <fieldset>
                                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="6" placeholder="Your message..." required="true"></asp:TextBox>
                                </fieldset>
                                <fieldset>
                                    <asp:Button ID="btnSend" runat="server" CssClass="btn" Text="Send Message" OnClick="btnSend_Click" />
                                </fieldset>

                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="section-heading contact-info">
                            <h2>Contact Info</h2>
                            <p>
                                Pellentesque nec orci in erat venenatis viverra. Vivamus in lorem et leo feugiat ullamcorper.
                                Donec volutpat fermentum erat non aliquet. Cras fermentum, risus a blandit sodales, erat turpis
                                eleifend lacus, venenatis mollis leo lorem vel eros. Quisque et sem tempus, feugiat urna iaculis,
                                tempor metus.
                                <br /><br />
                                <em>30 Raffles Ave, <br />Singapore 039803</em>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <p>Copyright &copy; 2020 Victory Template</p>
                    </div>
                    <div class="col-md-4">
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <p>Design: TemplateMo</p>
                    </div>
                </div>
            </div>
        </footer>
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
