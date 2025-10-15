<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="CloudKitchen.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CloudKitchen - User Registration</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
       <!-- yash andrapiya -->

    <style>
        body {
            background: linear-gradient(#2C3E50,#E08D57,#2C3E50);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 8px 18px rgba(0,0,0,0.2);
        }

        .form-label {
            font-weight: 600;
        }

        .btn-custom {
            background-color: #ff7043;
            color: #fff;
            font-weight: 600;
            border-radius: 10px;
        }

            .btn-custom:hover {
                background-color: #e64a19;
            }

        .login-link a {
            text-decoration: none;
            color: #ff7043;
            font-weight: 600;
        }

            .login-link a:hover {
                color: #d84315;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center align-items-center vh-100">
            <div class="col-md-6">
                <div class="card p-4">
                    <h2 class="text-center mb-4">CloudKitchen Registration</h2>

                    <div class="mb-3">
                        <label for="TextBox1" class="form-label">Name</label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Gender</label><br />
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="form-check-inline">
                            <asp:ListItem Text="Male" />
                            <asp:ListItem Text="Female" />
                        </asp:RadioButtonList>
                    </div>

                    <div class="mb-3">
                        <label for="TextBox2" class="form-label">Email</label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="TextBox3" class="form-label">Password</label>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="DropDownList1" class="form-label">City</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                            <asp:ListItem>Surendranagar</asp:ListItem>
                            <asp:ListItem>Rajkot</asp:ListItem>
                            <asp:ListItem>Dwarka</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="mb-3">
                        <label>Profile Image</label>
                        <asp:FileUpload ID="img1" runat="server" />
                    </div>


                    <div class="d-grid">
                        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-custom" OnClick="Button1_Click" />
                    </div>

                    <div class="text-center mt-3 login-link">
                        Already have an account? <a href="Login.aspx">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
