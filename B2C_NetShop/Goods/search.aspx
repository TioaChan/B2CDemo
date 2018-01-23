<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="B2C_NetShop.Goods.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_main" style="height: 400px; display: block;" runat="server">
        <div id="div_title" style="width: 100%; height: 40px; display: block; padding-top: 10px; padding-left: 10px; margin-top: 10px; margin-left: 10px; font-size: 16px; font-family: '微软雅黑 Light';">
            关键字“<asp:Label ID="Keywords" runat="server" Text="Label"></asp:Label>
            ”的搜索结果
        </div>
        <hr />
        <div id="order_info" style="width: 90%; height: auto; display: block; padding: 10px 10px 30px 10px; margin: 10px 10px 10px 10px;">
            <div id="info1">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource1" Width="100%" HorizontalAlign="Left" RepeatColumns="3">
                    <ItemTemplate>
                        <div id="goods_info" style='width: 25%' runat="server">
                            <div id="goods_image">
                                <a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picUrl") %>' Height="200px" Width="200px" /></a>
                            </div>
                            <br />
                            <div id="goods_detail" style="text-align: left">
                                <div id="goods_price" style="text-align: left; color: red; font-size: large">￥<asp:Label ID="MarketPriceLabel" runat="server" Text='<%# Eval("MarketPrice") %>' /></div>
                                <a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
                                    <asp:Label ID="Label1" Text='<%# Eval("BookName") %>' Font-Size="16px" runat="server"></asp:Label></a>
                                <br />
                                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;著<br />
                                <br />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
                SelectCommand="SELECT [BookID], [BookName], [Author], [MarketPrice], [picUrl] FROM [Goods_Info] WHERE ([BookName] LIKE '%'+@BookName+'%')">
                <SelectParameters>
                    <asp:QueryStringParameter Name="BookName" QueryStringField="keywords" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
