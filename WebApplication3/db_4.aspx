<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="db_4.aspx.cs" Inherits="WebApplication3.db_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 18%;
        }
        .auto-style2 {
            width: 191px;
        }
        .auto-style3 {
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Üye Adı</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtUyeAdi" runat="server" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Şifre</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" Width="152px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="BtnGiris" runat="server" OnClick="BtnGiris_Click" Text="Giris" />
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
