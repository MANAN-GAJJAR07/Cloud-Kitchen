<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookTable.aspx.cs" Inherits="CloudKitchen.BookTable" %>

<!DOCTYPE html>
               <!-- this page have to user book table  -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Your Table</title>
    <style>
    /* General Page Styling */
    body {
        font-family: "Poppins", sans-serif;
        background: #f8f9fa;
        margin: 0;
        padding: 0;
    }

    #book-table {
        padding: 50px 0;
        background: linear-gradient(135deg, #fff 60%, #ffecec);
    }

    .heading h2 {
        font-size: 2rem;
        text-align: center;
        margin-bottom: 25px;
        font-weight: 700;
        color: #333;
        position: relative;
    }

    .heading h2::after {
        content: "";
        display: block;
        width: 60px;
        height: 3px;
        background: #ff4d4d;
        margin: 10px auto 0;
        border-radius: 3px;
    }

    /* Left Image Section */
    .left-image {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
    }

    .left-image img {
        max-width: 250px;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }

    .left-image img:hover {
        transform: scale(1.05);
    }

    /* Right Info (Form) */
    .right-info {
        background: #fff;
        border-radius: 16px;
        padding: 30px;
        box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.08);
        max-width: 450px;
        margin: 0 auto; /* Center the form */
    }

    .right-info h4 {
        text-align: center;
        font-weight: 600;
        margin-bottom: 20px;
        font-size: 1.4rem;
        color: #222;
    }

    /* Form Styling - Vertical Layout */
    .right-info .row {
        display: flex;
        flex-direction: column; /* ✅ Make form vertical */
        gap: 15px;
    }

    .right-info fieldset {
        border: none;
        padding: 0;
        margin: 0;
        width: 100%;
    }

    select,
    input[type="text"],
    input[type="phone"],
    .form-control,
    .aspNetDisabled {
        width: 100%;
        padding: 12px 15px;
        border-radius: 8px;
        border: 1px solid #ddd;
        background: #fdfdfd;
        font-size: 1rem;
        transition: all 0.3s ease-in-out;
    }

    select:focus,
    input:focus {
        border-color: #ff4d4d;
        outline: none;
        box-shadow: 0px 0px 6px rgba(255, 77, 77, 0.3);
    }

    /* Button Styling */
    .btn,
    input[type="submit"],
    .aspNetButton {
        display: inline-block;
        width: 100%;
        padding: 12px 0;
        background: #ff4d4d;
        color: #fff;
        font-size: 1rem;
        font-weight: 600;
        text-transform: uppercase;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    .btn:hover {
        background: #e84343;
    }

    /* Responsive Fix */
    @media (max-width: 768px) {
        .left-image img {
            max-width: 200px;
        }
        .right-info {
            margin-top: 10px;
            max-width: 90%;
        }
        .heading h2 {
            font-size: 1.6rem;
        }
    }
</style>


</head>
<body>
    <form id="form1" runat="server">
        <section id="book-table">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="heading">
                            <h2>Book Your Table Now</h2>
                        </div>
                    </div>
                    <div class="col-md-4 col-md-offset-2 col-sm-12">
                        <div class="left-image">
                            <img src="img/book_left_image.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-12">
                        <div class="right-info">
                            <h4>Reservation</h4>
                            <form method="get">
                                <div class="row">
                                    <div class="col-md-6">
                                        <fieldset>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Value="">Select day</asp:ListItem>
                                                <asp:ListItem Value="Monday">Monday</asp:ListItem>
                                                <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
                                                <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
                                                <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
                                                <asp:ListItem Value="Friday">Friday</asp:ListItem>
                                                <asp:ListItem Value="Saturday">Saturday</asp:ListItem>
                                                <asp:ListItem Value="Sunday">Sunday</asp:ListItem>
                                            </asp:DropDownList>
                                        </fieldset>
                                    </div>
                                    <div class="col-md-6">
                                        <fieldset>
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                <asp:ListItem Value="">Select hour</asp:ListItem>
                                                <asp:ListItem Value="10-00">10:00</asp:ListItem>
                                                <asp:ListItem Value="12-00">12:00</asp:ListItem>
                                                <asp:ListItem Value="14-00">14:00</asp:ListItem>
                                                <asp:ListItem Value="16-00">16:00</asp:ListItem>
                                                <asp:ListItem Value="18-00">18:00</asp:ListItem>
                                                <asp:ListItem Value="20-00">20:00</asp:ListItem>
                                                <asp:ListItem Value="22-00">22:00</asp:ListItem>
                                            </asp:DropDownList>
                                        </fieldset>
                                    </div>
                                    <div class="col-md-6">
                                        <fieldset>
                                            <asp:TextBox ID="TextBox1" name="name" type="name" class="form-control" placeholder="Full name" runat="server"></asp:TextBox>
                                        </fieldset>
                                    </div>
                                    <div class="col-md-6">
                                        <fieldset>
                                            <asp:TextBox ID="TextBox2" name="phone" type="phone" class="form-control" placeholder="Phone number" runat="server"></asp:TextBox>
                                        </fieldset>
                                    </div>
                                    <div class="col-md-6">
                                        <fieldset>
                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                                <asp:ListItem Value="">How many persons?</asp:ListItem>
                                                <asp:ListItem Value="1-Person">1 Person</asp:ListItem>
                                                <asp:ListItem Value="2-Person">2 Persons</asp:ListItem>
                                                <asp:ListItem Value="3-Person">3 Persons</asp:ListItem>
                                                <asp:ListItem Value="4-Person">4 Persons</asp:ListItem>
                                                <asp:ListItem Value="5-Person">5 Persons</asp:ListItem>
                                                <asp:ListItem Value="6-Person">6 Persons</asp:ListItem>
                                            </asp:DropDownList>
                                        </fieldset>
                                    </div>
                                    <div class="col-md-6">
                                        <fieldset>
                                            <asp:Button ID="Button1" type="submit" class="btn" runat="server" Text="Book Table" OnClick="Button1_Click" />
                                        </fieldset>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
