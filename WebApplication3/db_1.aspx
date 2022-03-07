<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="db_1.aspx.cs" Inherits="WebApplication3.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="UrunID" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="UrunID" HeaderText="UrunID" InsertVisible="False" ReadOnly="True" SortExpression="UrunID" />
                <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
                <asp:HyperLinkField HeaderText="Link" DataNavigateUrlFields="UrunID" DataNavigateUrlFormatString="detay.aspx?id={0}" DataTextField="UrunAdi" />
                <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" SortExpression="KategoriID" />
                <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
                <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                <asp:ImageField DataImageUrlField="Resim" NullDisplayText="Resimler Yükleniyor...">
                    <ControlStyle Height="110px" Width="150px" />
                </asp:ImageField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="detay.aspx?id=<%# Eval("UrunID") %>"><img src="<%# Eval("Resim") %>" width="150px" height="110px"/></a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT [UrunID], [UrunAdi], [KategoriID], [Fiyat], [Resim] FROM [tbl_Urunler]"></asp:SqlDataSource>
    </form>
</body>
</html>
