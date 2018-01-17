<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="B2C_NetShop.Goods.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_main" style="height: 800px; display: block; background-color: aliceblue;" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="1210px">
            <ItemTemplate>
                <div id="datalist_main" runat="server" style="background-color:antiquewhite;" >
                    <div id="pic_frame" style="width: 35%; height: auto; display: block; float: left;background-color:bisque;padding:20px;" runat="server">
                        <div id="pic_book" style="width: 400px; height: 400px;display:block; text-align: center;background-color:aqua">假装这里有图片</div>
                    </div>
                    <div id="book_detail" style="width: 60%; height: auto; display: block; float: left;background-color:beige;padding:20px" runat="server">
                        <!--
		                ClassID:
                        <asp:Label ID="ClassIDLabel" runat="server" Text='<%# Eval("ClassID") %>' />
                        <br />
		                -->
                        <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' Font-Bold="True" Font-Names="微软雅黑" Font-Size="X-Large" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="AuthorLabel" runat="server" Font-Bold="True" Text='<%# Eval("Author") %>' />
                        &nbsp;著<br />
                        
                        本图书由<asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
                        出版<br /> <br />
                        <asp:Label ID="BookIntroduceLabel" runat="server" Text='<%# Eval("BookIntroduce") %>' Font-Size="Large" ForeColor="Red" />
                        <br />
                        <br />
                        <br />
                        定价：<asp:Label ID="MarketPriceLabel" runat="server" Text='<%# Eval("MarketPrice") %>' />
                        <br />
                        商城价：<asp:Label ID="HotPriceLabel" runat="server" Text='<%# Eval("HotPrice") %>' Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                        <br />
                        <!--
                        Isrefinement:
                        <asp:Label ID="IsrefinementLabel" runat="server" Text='<%# Eval("Isrefinement") %>' />
                        <br />
                        IsHot:
                        <asp:Label ID="IsHotLabel" runat="server" Text='<%# Eval("IsHot") %>' />
                        <br />
                        IsDiscount:
                        <asp:Label ID="IsDiscountLabel" runat="server" Text='<%# Eval("IsDiscount") %>' />
                        <br />
                        LoadDate:
                        <asp:Label ID="LoadDateLabel" runat="server" Text='<%# Eval("LoadDate") %>' />
                        <br />
                        -->
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">加入购物车 &raquo;</a></p>
                    </div>
                    <div id="div_clear" style="clear: both"></div>
                    <br />
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>" SelectCommand="SELECT [ClassID], [BookName], [BookIntroduce], [Company], [Author], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate] FROM [Goods_Info] WHERE ([BookID] = @BookID)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="BookID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

