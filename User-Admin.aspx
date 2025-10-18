<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="User-Admin.aspx.cs" Inherits="CloudKitchen.User_Admin" %>
                  <!-- Admin page of website  -->

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    /* Global Page Background */
    body {
        background: linear-gradient(135deg, #b8c6db 0%, #f5f7fa 100%);
        min-height: 100vh;
        margin: 0;
        font-family: 'Segoe UI', 'Arial', sans-serif;
    }

    /* Container for Grid and Edit Panel */
    .user-box {
        max-width: 1100px;
        margin: 70px auto;
        padding: 35px;
        background: rgba(255, 255, 255, 0.18);
        border-radius: 20px;
        box-shadow: 0 8px 28px rgba(20,55,90,0.18), 0 4px 12px rgba(140,180,255,0.14);
        backdrop-filter: blur(8px);
        border: 1.5px solid rgba(185, 195, 255, 0.20);
        transition: box-shadow 0.28s;
        text-align: center;
    }

    .user-box:hover {
        box-shadow: 0 16px 48px rgba(20,55,90,0.28), 0 4px 24px rgba(140,180,255,0.22);
    }

    .user-box h1 {
        font-size: 2rem;
        font-weight: 700;
        color: #2260a8;
        margin-bottom: 25px;
        letter-spacing: 0.04em;
    }

    /* GridView Styles */
    #GridView1 {
        width: 100%;
        border-collapse: collapse;
        border-radius: 12px;
        overflow: hidden;
        background: rgba(255, 255, 255, 0.55);
        box-shadow: 0 4px 16px rgba(46,139,255,0.12);
        margin-bottom: 35px;
    }

    #GridView1 th {
        background: linear-gradient(120deg, #473af4 0%, #50fded 99%);
        color: #fff;
        font-weight: 600;
        font-size: 1.05rem;
        text-align: center;
        padding: 14px 10px;
        letter-spacing: 0.03em;
    }

    #GridView1 td {
        padding: 12px 10px;
        text-align: center;
        font-size: 0.97rem;
        color: #19223b;
        border-bottom: 1px solid rgba(0,0,0,0.06);
        background: rgba(255, 255, 255, 0.75);
    }

    #GridView1 tr:nth-child(even) td {
        background: rgba(240, 247, 255, 0.65);
    }

    #GridView1 tr:hover td {
        background: rgba(80,253,237,0.13);
        transition: background 0.3s ease;
    }

    #GridView1 img {
        border-radius: 12px;
        border: 2px solid rgba(25,118,210,0.2);
        transition: transform 0.25s ease;
    }

    #GridView1 img:hover {
        transform: scale(1.08);
    }

    /* Edit and Delete Buttons */
    #GridView1 a {
        text-decoration: none;
        padding: 7px 16px;
        border-radius: 25px;
        font-weight: 600;
        letter-spacing: 0.02em;
        transition: all 0.25s ease-in-out;
        display: inline-block;
    }

    #GridView1 a[commandname="cmd_edt"] {
        background: linear-gradient(120deg, #2260a8 0%, #50fded 99%);
        color: white;
        box-shadow: 0 3px 10px rgba(25,118,210,0.25);
    }

    #GridView1 a[commandname="cmd_edt"]:hover {
        background: linear-gradient(120deg, #50fded 0%, #2260a8 99%);
        transform: scale(1.08);
    }

    #GridView1 a[commandname="cmd_dlt"] {
        background: linear-gradient(120deg, #ff4d4d 0%, #ff7575 99%);
        color: white;
        box-shadow: 0 3px 10px rgba(255,77,77,0.25);
    }

    #GridView1 a[commandname="cmd_dlt"]:hover {
        background: linear-gradient(120deg, #ff7575 0%, #ff4d4d 99%);
        transform: scale(1.08);
    }

    /* Edit Panel */
    #Panel1 {
        background: rgba(255, 255, 255, 0.65);
        padding: 25px 35px;
        border-radius: 15px;
        text-align: left;
        box-shadow: 0 4px 14px rgba(46,139,255,0.15);
        max-width: 500px;
        margin: 0 auto;
    }

    #Panel1 p {
        margin-bottom: 15px;
        font-weight: 600;
        color: #2260a8;
    }

    #Panel1 input[type="text"], 
    #Panel1 select {
        width: 100%;
        padding: 10px;
        border-radius: 10px;
        border: 2px solid #90caf9;
        background: rgba(245,245,255,0.65);
        color: #19223b;
        font-size: 1rem;
        box-shadow: 0 2px 12px rgba(46,139,255,0.06);
        transition: border 0.26s, box-shadow 0.26s;
        outline: none;
        box-sizing: border-box;
    }

    #Panel1 input[type="text"]:focus,
    #Panel1 select:focus {
        border-color: #1976d2;
        box-shadow: 0 0 0 3px rgba(25,118,210,0.13);
    }

    #Panel1 .form-check-inline input {
        margin-right: 5px;
    }

    #Panel1 .form-check-inline label {
        margin-right: 15px;
    }

    #Button1 {
        background: linear-gradient(120deg, #473af4 0%, #50fded 99%);
        border: none;
        color: #fff;
        padding: 12px 32px;
        border-radius: 40px;
        font-weight: 700;
        font-size: 1.05rem;
        letter-spacing: 0.04em;
        cursor: pointer;
        transition: all 0.22s;
        margin-top: 10px;
        display: block;
        margin-left: auto;
        margin-right: auto;
        box-shadow: 0 2px 15px rgba(80,253,237,0.19);
    }

    #Button1:hover {
        background: linear-gradient(120deg, #50fded 0%, #473af4 99%);
        transform: scale(1.08);
        box-shadow: 0 6px 24px rgba(71,58,244,0.18);
    }

</style>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="user-box">
        <h1><i class="fa fa-users"></i> Manage Users</h1>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Role">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Role") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" Height="80" Width="80" runat="server" ImageUrl='<%# Eval("Image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt">Edit</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <p>Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p>
            <p>Gender:
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="form-check-inline">
                    <asp:ListItem Text="Male" />
                    <asp:ListItem Text="Female" />
                </asp:RadioButtonList>
            </p>
            <p>Email:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></p>
            <p>City:
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                    <asp:ListItem>--Select City--</asp:ListItem>
                    <asp:ListItem>Surendranagar</asp:ListItem>
                    <asp:ListItem>Rajkot</asp:ListItem>
                    <asp:ListItem>Dwarka</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>Role:
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>---Select Role---</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p><asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" /></p>
        </asp:Panel>
    </div>
</asp:Content>
