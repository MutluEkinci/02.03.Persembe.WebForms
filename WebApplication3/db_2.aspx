<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="db_2.aspx.cs" Inherits="WebApplication3.db_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="UrunID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="Black" GridLines="Vertical" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="UrunID" HeaderText="UrunID" InsertVisible="False" ReadOnly="True" SortExpression="UrunID" />
                    <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
                    <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" SortExpression="KategoriID" />
                    <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
                    <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                    <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
            <br />
            <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="UrunID" DataSourceID="SqlDataSource1" ForeColor="#333333">
                <EditItemTemplate>
                    UrunID:
                    <asp:Label ID="UrunIDLabel1" runat="server" Text='<%# Eval("UrunID") %>' />
                    <br />
                    UrunAdi:
                    <asp:TextBox ID="UrunAdiTextBox" runat="server" Text='<%# Bind("UrunAdi") %>' />
                    <br />
                    KategoriID:
                    <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
                    <br />
                    Fiyat:
                    <asp:TextBox ID="FiyatTextBox" runat="server" Text='<%# Bind("Fiyat") %>' />
                    <br />
                    Resim:
                    <asp:TextBox ID="ResimTextBox" runat="server" Text='<%# Bind("Resim") %>' />
                    <br />
                    Aciklama:
                    <asp:TextBox ID="AciklamaTextBox" runat="server" Text='<%# Bind("Aciklama") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    UrunAdi:<asp:TextBox ID="UrunAdiTextBox" runat="server" Text='<%# Bind("UrunAdi") %>' />
&nbsp;<br />KategoriID:
                    <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
                    <br />
                    Fiyat:
                    <asp:TextBox ID="FiyatTextBox" runat="server" Text='<%# Bind("Fiyat") %>' />
                    <br />
                    Resim:
                    <asp:TextBox ID="ResimTextBox" runat="server" Text='<%# Bind("Resim") %>' />
                    <br />
                    Aciklama:
                    <asp:TextBox ID="AciklamaTextBox" runat="server" Text='<%# Bind("Aciklama") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    UrunID:
                    <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
                    <br />
                    UrunAdi:
                    <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Bind("UrunAdi") %>' />
                    <br />
                    KategoriID:
                    <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Bind("KategoriID") %>' />
                    <br />
                    Fiyat:
                    <asp:Label ID="FiyatLabel" runat="server" Text='<%# Bind("Fiyat") %>' />
                    <br />
                    Resim:
                    <asp:Label ID="ResimLabel" runat="server" Text='<%# Bind("Resim") %>' />
                    <br />
                    Aciklama:
                    <asp:Label ID="AciklamaLabel" runat="server" Text='<%# Bind("Aciklama") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="UrunID" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UrunID" HeaderText="UrunID" InsertVisible="False" ReadOnly="True" SortExpression="UrunID" />
                <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
                <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" SortExpression="KategoriID" />
                <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
                <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="UrunID" DataSourceID="SqlDataSource1" InsertItemPosition="FirstItem" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
                    </td>
                    <td>
                        <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ResimLabel" runat="server" Text='<%# Eval("Resim") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AciklamaLabel" runat="server" Text='<%# Eval("Aciklama") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="UrunIDLabel1" runat="server" Text='<%# Eval("UrunID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UrunAdiTextBox" runat="server" Text='<%# Bind("UrunAdi") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FiyatTextBox" runat="server" Text='<%# Bind("Fiyat") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ResimTextBox" runat="server" Text='<%# Bind("Resim") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AciklamaTextBox" runat="server" Text='<%# Bind("Aciklama") %>' />
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
                        <asp:TextBox ID="UrunAdiTextBox" runat="server" Text='<%# Bind("UrunAdi") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FiyatTextBox" runat="server" Text='<%# Bind("Fiyat") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ResimTextBox" runat="server" Text='<%# Bind("Resim") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AciklamaTextBox" runat="server" Text='<%# Bind("Aciklama") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
                    </td>
                    <td>
                        <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ResimLabel" runat="server" Text='<%# Eval("Resim") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AciklamaLabel" runat="server" Text='<%# Eval("Aciklama") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">UrunID</th>
                                    <th runat="server">UrunAdi</th>
                                    <th runat="server">KategoriID</th>
                                    <th runat="server">Fiyat</th>
                                    <th runat="server">Resim</th>
                                    <th runat="server">Aciklama</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
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
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="UrunIDLabel" runat="server" Text='<%# Eval("UrunID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UrunAdiLabel" runat="server" Text='<%# Eval("UrunAdi") %>' />
                    </td>
                    <td>
                        <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FiyatLabel" runat="server" Text='<%# Eval("Fiyat") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ResimLabel" runat="server" Text='<%# Eval("Resim") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AciklamaLabel" runat="server" Text='<%# Eval("Aciklama") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CalısmaConnectionString %>" DeleteCommand="DELETE FROM [tbl_Urunler] WHERE [UrunID] = @UrunID" InsertCommand="INSERT INTO [tbl_Urunler] ([UrunAdi], [KategoriID], [Fiyat], [Resim], [Aciklama]) VALUES (@UrunAdi, @KategoriID, @Fiyat, @Resim, @Aciklama)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [tbl_Urunler]" UpdateCommand="UPDATE [tbl_Urunler] SET [UrunAdi] = @UrunAdi, [KategoriID] = @KategoriID, [Fiyat] = @Fiyat, [Resim] = @Resim, [Aciklama] = @Aciklama WHERE [UrunID] = @UrunID">
            <DeleteParameters>
                <asp:Parameter Name="UrunID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="UrunAdi" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="KategoriID" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox3" Name="Fiyat" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="TextBox4" Name="Resim" PropertyName="Text" Type="String" />
                <asp:Parameter Name="Aciklama" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UrunAdi" Type="String" />
                <asp:Parameter Name="KategoriID" Type="Int32" />
                <asp:Parameter Name="Fiyat" Type="Decimal" />
                <asp:Parameter Name="Resim" Type="String" />
                <asp:Parameter Name="Aciklama" Type="String" />
                <asp:Parameter Name="UrunID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
