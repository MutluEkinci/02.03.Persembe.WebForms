<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="db_3.aspx.cs" Inherits="WebApplication3.db_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UrunNOLabel" runat="server" Text='<%# Eval("UrunNO") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RenkLabel" runat="server" Text='<%# Eval("Renk") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="UrunIDLabel1" runat="server" Text='<%# Eval("UrunID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UrunNOTextBox" runat="server" Text='<%# Bind("UrunNO") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UrunAdiTextBox" runat="server" Text='<%# Bind("UrunAdi") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RenkTextBox" runat="server" Text='<%# Bind("Renk") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FiyatTextBox" runat="server" Text='<%# Bind("Fiyat") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="UrunNOTextBox" runat="server" Text='<%# Bind("UrunNO") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UrunAdiTextBox" runat="server" Text='<%# Bind("UrunAdi") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RenkTextBox" runat="server" Text='<%# Bind("Renk") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FiyatTextBox" runat="server" Text='<%# Bind("Fiyat") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UrunNOLabel" runat="server" Text='<%# Eval("UrunNO") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RenkLabel" runat="server" Text='<%# Eval("Renk") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">UrunID</th>
                                    <th runat="server">UrunNO</th>
                                    <th runat="server">UrunAdi</th>
                                    <th runat="server">Renk</th>
                                    <th runat="server">Fiyat</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UrunNOLabel" runat="server" Text='<%# Eval("UrunNO") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RenkLabel" runat="server" Text='<%# Eval("Renk") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" SelectCommand="SELECT * FROM [AdvUrunler]"></asp:SqlDataSource>
    </form>
</body>
</html>
