<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="B2C_NetShop.Goods.list" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_main" style="display: block">
        <div id="list_detail" style="height: 500px; width: 900px; text-align: center; margin-left: 60px; margin-right: 60px; margin-top: 20px; padding-top: 10px; padding-right: 25px; padding-left: 25px;">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource1" Width="100%" HorizontalAlign="Left" RepeatColumns="3">
                <ItemTemplate>
                    <div id="goods_info" style='width: 25%' runat="server">
                        <div id="goods_image">
                            <a  href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
                                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" /></a>
                        </div>
                        <br />
                        <div id="goods_detail" style="text-align: left">
                            <div id="goods_price" style="text-align: left; color: red; font-size: large">￥<asp:Label ID="MarketPriceLabel" runat="server" Text='<%# Eval("MarketPrice") %>' /></div>
                            <a  href='<%# Eval("BookID","Detail.aspx?id={0}") %>'><asp:Label ID="Label1" Text='<%# Eval("BookName") %>' Font-Size="16px" runat="server"></asp:Label></a>
                            <br />
                            <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;著<br />
                            <br />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>" SelectCommand="SELECT [BookID], [BookName], [Author], [MarketPrice] FROM [Goods_Info] WHERE ([ClassID] = @ClassID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="ClassID" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
