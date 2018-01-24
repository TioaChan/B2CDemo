<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hot.aspx.cs" Inherits="B2C_NetShop.Goods.hot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        热卖图书</p>
        <div id="content_main" style="display: block">
        <div id="list_detail" style="width: 100%; text-align: center; margin-left: 10px; margin-right: 10px; margin-top: 20px; padding-top: 10px; padding-right: 10px; padding-left: 10px;">
            <div style="text-align: left; font-family: Tahoma; font-size: 20px;">小说类：</div>
            <hr />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource1" Width="100%" HorizontalAlign="Left" RepeatColumns="5">
                <ItemTemplate>
                    <div id="goods_info" style='width: 25%' runat="server">
                        <div id="goods_image">
                            <a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
                                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" /></a>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>" 
                SelectCommand="SELECT TOP 4 [ClassID], [BookID], [BookName], [Author], [MarketPrice] FROM [Goods_Info] WHERE (([ClassID] = @ClassID)
                AND ([IsHot] = @IsHot))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="ClassID" Type="Int32" />
                    <asp:Parameter DefaultValue="1" Name="IsHot" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <div style="text-align: left;font-family: Tahoma; font-size: 20px;">文艺类：</div>
            <hr />
            <asp:DataList ID="DataList2" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource2" Width="100%" HorizontalAlign="Left" RepeatColumns="5">
                <ItemTemplate>
                    <div id="goods_info" style='width: 25%' runat="server">
                        <div id="goods_image">
                            <a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
                                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" /></a>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>" 
                SelectCommand="SELECT TOP 4 [ClassID], [BookID], [BookName], [Author], [MarketPrice] FROM [Goods_Info] WHERE (([ClassID] = @ClassID) 
                AND ([IsHot] = @IsHot))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="ClassID" Type="Int32" />
                    <asp:Parameter DefaultValue="1" Name="IsHot" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <div style="text-align: left;font-family: Tahoma; font-size: 20px;">生活类：</div>
            <hr />
            <asp:DataList ID="DataList3" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource3" Width="100%" HorizontalAlign="Left" RepeatColumns="5">
                <ItemTemplate>
                    <div id="goods_info" style='width: 25%' runat="server">
                        <div id="goods_image">
                            <a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
                                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" /></a>
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>" 
                SelectCommand="SELECT TOP 4 [ClassID], [BookID], [BookName], [Author], [MarketPrice] FROM [Goods_Info] WHERE (([ClassID] = @ClassID) 
                AND ([IsHot] = @IsHot))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="3" Name="ClassID" Type="Int32" />
                    <asp:Parameter DefaultValue="1" Name="IsHot" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <div style="text-align: left;font-family: Tahoma; font-size: 20px;">励志类：</div>
            <hr />
            <asp:DataList ID="DataList4" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource4" Width="100%" HorizontalAlign="Left" RepeatColumns="5">
                <ItemTemplate>
                    <div id="goods_info" style='width: 25%' runat="server">
                        <div id="goods_image">
                            <a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
                                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" /></a>
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>" 
                SelectCommand="SELECT TOP 4 [ClassID], [BookID], [BookName], [Author], [MarketPrice] FROM [Goods_Info] WHERE (([ClassID] = @ClassID) 
                AND ([IsHot] = @IsHot))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="4" Name="ClassID" Type="Int32" />
                    <asp:Parameter DefaultValue="1" Name="IsHot" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <div style="text-align: left;font-family: Tahoma; font-size: 20px;">测试类：</div>
            <hr />
            <asp:DataList ID="DataList5" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource5" Width="100%" HorizontalAlign="Left" RepeatColumns="5">
                <ItemTemplate>
                    <div id="goods_info" style='width: 25%' runat="server">
                        <div id="goods_image">
                            <a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
                                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" /></a>
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
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>" 
                SelectCommand="SELECT TOP 4 [ClassID], [BookID], [BookName], [Author], [MarketPrice] FROM [Goods_Info] WHERE (([ClassID] = @ClassID) 
                AND ([IsHot] = @IsHot))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="5" Name="ClassID" Type="Int32" />
                    <asp:Parameter DefaultValue="1" Name="IsHot" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
