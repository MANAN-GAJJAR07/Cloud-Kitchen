<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBookTable.aspx.cs" Inherits="CloudKitchen.AdminBookTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    /* Background Style - same as AddFoodDishes */
    body {
        background: linear-gradient(135deg, #b8c6db 0%, #f5f7fa 100%);
        min-height: 100vh;
        margin: 0;
        font-family: 'Segoe UI', 'Arial', sans-serif;
    }

    /* Grid Container Box */
    .grid-box {
        max-width: 900px;
        margin: 80px auto;
        padding: 30px;
        background: rgba(255, 255, 255, 0.18);
        border-radius: 20px;
        box-shadow: 0 8px 28px rgba(20,55,90,0.18), 0 4px 12px rgba(140,180,255,0.14);
        backdrop-filter: blur(8px);
        border: 1.5px solid rgba(185, 195, 255, 0.20);
        transition: box-shadow 0.28s;
        text-align: center;
    }

    .grid-box:hover {
        box-shadow: 0 16px 48px rgba(20,55,90,0.28), 0 4px 24px rgba(140,180,255,0.22);
    }

    /* Header Title */
    .grid-box h1 {
        font-size: 2rem;
        font-weight: 700;
        color: #2260a8;
        margin-bottom: 28px;
        letter-spacing: 0.04em;
    }

    /* GridView Styling */
    #GridView1 {
        width: 100%;
        border-collapse: collapse;
        border-radius: 12px;
        overflow: hidden;
        background: rgba(255, 255, 255, 0.55);
        box-shadow: 0 4px 16px rgba(46,139,255,0.12);
    }

    #GridView1 th {
        background: linear-gradient(120deg, #473af4 0%, #50fded 99%);
        color: #fff;
        font-weight: 600;
        font-size: 1.1rem;
        text-align: center;
        padding: 14px 10px;
        letter-spacing: 0.03em;
    }

    #GridView1 td {
        padding: 13px 10px;
        text-align: center;
        font-size: 1rem;
        color: #19223b;
        border-bottom: 1px solid rgba(0,0,0,0.06);
        background: rgba(255, 255, 255, 0.75);
    }

    /* Alternate Row Effect */
    #GridView1 tr:nth-child(even) td {
        background: rgba(240, 247, 255, 0.65);
    }

    /* Hover Effect */
    #GridView1 tr:hover td {
        background: rgba(80,253,237,0.13);
        transition: background 0.3s ease;
    }

    /* Delete Button */
    #GridView1 a {
        background: linear-gradient(120deg, #ff4d4d 0%, #ff7575 99%);
        color: white;
        text-decoration: none;
        padding: 7px 16px;
        border-radius: 25px;
        font-weight: 600;
        letter-spacing: 0.02em;
        box-shadow: 0 3px 10px rgba(255,77,77,0.25);
        transition: all 0.25s ease-in-out;
        display: inline-block;
    }

    #GridView1 a:hover {
        background: linear-gradient(120deg, #ff7575 0%, #ff4d4d 99%);
        transform: scale(1.08);
        box-shadow: 0 6px 16px rgba(255,77,77,0.35);
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid-box">
        <h1><i class="fa fa-table"></i> Table Bookings</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Number">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Day">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Day") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Persons">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Persons") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_del">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
