<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="CloudKitchen.Menu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CloudKitchen Menu</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" />
    // this is manu page delious food our cloud kitechen 
    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f9f9f9;
            color: #333;
        }

        header {
            background: #e6f0ff;
            padding: 25px 0;
            text-align: center;
            border-bottom: 1px solid #d0d8eb;
        }

        header h1 {
            font-style: italic;
            font-size: 2.5rem;
            margin: 0;
            color: #222;
        }

        nav {
            background: #e6f0ff;
            border-bottom: 1px solid #ccc;
            text-align: center;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 10px 0;
            display: inline-flex;
            gap: 2em;
        }

        nav ul li a {
            color: #3d464d;
            text-decoration: none;
            font-weight: 500;
            padding: 10px 15px;
            transition: 0.3s;
        }

        nav ul li a.active, nav ul li a:hover {
            background: #121212;
            color: #eee;
            font-weight: 600;
        }

        main {
            padding: 50px 10px 70px;
            text-align: center;
        }

        main h2 {
            font-size: 2.5rem;
            font-weight: 700;
            color: #444;
            margin-bottom: 5px;
        }

        .categories {
            margin-bottom: 40px;
            display: flex;
            justify-content: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        .categories button {
            background: transparent;
            border: 2px solid #bf4b44;
            font-weight: 700;
            font-size: 1rem;
            color: #bf4b44;
            cursor: pointer;
            padding: 8px 16px;
            border-radius: 4px;
            transition: 0.3s;
        }

        .categories button.active, .categories button:hover {
            background: #bf4b44;
            color: #fff;
        }

        /* ----------- IMPROVED VERTICAL DATALIST STYLE ----------- */
        #DataList1 {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 30px;
            padding: 25px 15px;
            max-width: 750px;
            margin: 0 auto;
        }

        #DataList1 > div {
            display: flex;
            align-items: center;
            gap: 20px;
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
            padding: 20px 25px;
            width: 100%;
            transition: transform 0.25s ease, box-shadow 0.25s ease;
        }

        #DataList1 > div:hover {
            transform: translateY(-4px);
            box-shadow: 0 8px 22px rgba(0, 0, 0, 0.12);
        }

        #DataList1 img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 12px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
        }

        /* Image zoom effect */
        #DataList1 > div:hover img {
            transform: scale(1.06);
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        /* Text details */
        #DataList1 div {
            flex: 1;
            text-align: left;
            font-size: 1rem;
            color: #333;
            line-height: 1.5;
        }

        #DataList1 div:nth-child(2),
        #DataList1 div:nth-child(3),
        #DataList1 div:nth-child(4) {
            margin-bottom: 8px;
            font-weight: 500;
        }

        #DataList1 div:nth-child(2) {
            font-size: 1.2rem;
            font-weight: 700;
            color: #222;
        }

        #DataList1 div:last-child {
            font-weight: bold;
            color: #bf4b44;
            font-size: 1.1rem;
            margin-top: 6px;
        }

        @media (max-width: 600px) {
            #DataList1 > div {
                flex-direction: column;
                align-items: center;
                text-align: center;
                padding: 15px;
            }

            #DataList1 img {
                width: 100%;
                max-width: 280px;
                height: auto;
            }

            #DataList1 div {
                text-align: center;
            }
        }
        /* ------------------------------------------------------- */

        footer {
            background: #374152;
            color: #ddd;
            padding: 20px;
            text-align: center;
            margin-top: 40px;
        }

        @media (max-width:600px) {
            nav ul {
                flex-direction: column;
                gap: 10px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Victory</h1>
            <asp:Label ID="Label4" runat="server" Text="Welcome"></asp:Label>
        </header>

        <nav>
            <ul>
                <li><a href="index.aspx">Home</a></li>
                <li><a class="active" href="menu.aspx">Our Menus</a></li>
                <li><a href="blog.aspx">Blog</a></li>
                <li><a href="contact.aspx">Contact Us</a></li>
            </ul>
        </nav>

        <main>
            <h2>OUR SPECIAL MENU</h2>
            <p>Browse by cuisine – authentic flavors just for you!</p>

            <div class="categories">
                <button type="button" class="active" onclick="filterMenu('all')">All</button>
                <button type="button" onclick="filterMenu('South Indian')">South Indian</button>
                <button type="button" onclick="filterMenu('Punjabi')">Punjabi</button>
                <button type="button" onclick="filterMenu('Chinese')">Chinese</button>
                <button type="button" onclick="filterMenu('Gujarati')">Gujarati</button>
                <button type="button" onclick="filterMenu('Rajasthani')">Rajasthani</button>
                <button type="button" onclick="filterMenu('Italian')">Italian</button>
            </div>

            <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div>
                        <asp:Image ID="Image1" runat="server" Height="196px" ImageUrl='<%# Eval("Image") %>' Width="227px" />
                    </div>
                    <div>Name:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("F_name") %>'></asp:Label>
                    </div>
                    <div>Configuration:
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("F_config") %>'></asp:Label>
                    </div>
                    <div>Price:
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("F_price") %>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </main>

        <footer>
            <div>Copyright © 2020 Victory Template</div>
            <div class="social-icons">
                <a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="#" title="Twitter"><i class="fab fa-twitter"></i></a>
                <a href="#" title="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                <a href="#" title="RSS"><i class="fas fa-rss"></i></a>
                <a href="#" title="Dribbble"><i class="fab fa-dribbble"></i></a>
            </div>
            <div>Design: TemplateMo</div>
        </footer>
    </form>

    <script>
        function filterMenu(category) {
            const items = document.querySelectorAll(".menu-item");
            items.forEach(item => {
                if (category === "all" || item.getAttribute("data-category") === category) {
                    item.style.display = "block";
                } else {
                    item.style.display = "none";
                }
            });

            document.querySelectorAll(".categories button").forEach(btn => btn.classList.remove("active"));
            event.target.classList.add("active");
        }

    </script>
</body>
</html>
