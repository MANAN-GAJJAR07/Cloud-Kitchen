<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="CloudKitchen.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CloudKitchen - Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

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
        .register-link a {
            text-decoration: none;
            color: #ff7043;
            font-weight: 600;
        }
        .register-link a:hover {
            color: #d84315;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center align-items-center vh-100">
            <div class="col-md-5">
                <div class="card p-4">
                    <h2 class="text-center mb-4">Login to CloudKitchen</h2>
                    <h2>welcome</h2>
                    <div class="mb-3">
                        <label for="txtunm" class="form-label">Username</label>
                        <asp:TextBox ID="txtunm" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="txtpwd" class="form-label">Password</label>
                        <asp:TextBox ID="txtpwd" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                    </div>

                    <div class="d-grid">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-custom" OnClick="Button1_Click" />
                    </div>

                    <div class="text-center mt-3 register-link">
                        Don’t have an account? <a href="Registration.aspx">Register</a>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
