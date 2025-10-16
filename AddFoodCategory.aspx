<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddFoodCategory.aspx.cs" Inherits="CloudKitchen.AddFoodCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="text-center mb-4">
            <i class="fa fa-list-alt"></i>Add Food Category
        </h2>
        <div class="table-container">
            <table class="custom-table">
                <tr>
                    <td class="label-cell">Name:</td>
                    <td>
                        <asp:TextBox ID="txtnm" runat="server" CssClass="input-text"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="text-center">
                        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn-submit" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <style>
        body {
            background: linear-gradient(135deg, #b8c6db 0%, #f5f7fa 100%);
            min-height: 100vh;
            margin: 0;
        }
        .table-container {
            max-width: 480px;
            margin: 40px auto;
            padding: 30px 22px;
            background: rgba(255, 255, 255, 0.18);
            border-radius: 20px;
            box-shadow: 0 8px 28px rgba(20,55,90,0.18), 0 4px 12px rgba(140,180,255,0.14);
            backdrop-filter: blur(8px);
            border: 1.5px solid rgba(185, 195, 255, 0.20);
            transition: box-shadow 0.28s;
        }

            .table-container:hover {
                box-shadow: 0 16px 48px rgba(20,55,90,0.28), 0 4px 24px rgba(140,180,255,0.22);
            }
        .custom-table {
            width: 100%;
            border-spacing: 0;
        }

            .custom-table td {
                padding: 16px 9px;
                font-size: 1.06rem;
                vertical-align: middle;
            }

        .label-cell {
            font-weight: 700;
            text-align: right;
            color: #2260a8;
            letter-spacing: .03em;
            width: 32%;
        }
        .input-text {
            width: 100%;
            padding: 11px 12px;
            border: 2px solid #90caf9;
            border-radius: 11px;
            background: rgba(245,245,255,0.65);
            color: #19223b;
            font-size: 1rem;
            box-shadow: 0 2px 12px rgba(46,139,255,0.06);
            transition: border 0.26s, box-shadow 0.26s;
        }

            .input-text:focus {
                border-color: #1976d2;
                box-shadow: 0 0 0 3px rgba(25,118,210,0.13);
            }
        .btn-submit {
            background: linear-gradient(120deg, #473af4 0%, #50fded 99%);
            border: none;
            color: #fff;
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 700;
            font-size: 1.13rem;
            letter-spacing: 0.04em;
            box-shadow: 0 2px 15px rgba(80,253,237,0.19);
            cursor: pointer;
            transition: background 0.22s, transform 0.13s, box-shadow 0.17s;
        }

            .btn-submit:hover {
                background: linear-gradient(120deg, #50fded 0%, #473af4 99%);
                transform: scale(1.08);
                box-shadow: 0 6px 24px rgba(71,58,244,0.18);
            }
        .text-center {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
