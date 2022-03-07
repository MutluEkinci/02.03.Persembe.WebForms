<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="WebApplication3.Session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Session Yaz" OnClick="Button1_Click" />
        </div>
        
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Session Oku" />
        <br />
        <br />
        <asp:TextBox ID="txtUyeAdi" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Giriş" />
        
    </form>
</body>
</html>
