<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="discount.aspx.cs" Inherits="B2C_NetShop.Goods.discount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HalfPageContentPlaceHolder" runat="server">
	<link href="Style/common.css" rel="stylesheet" />
	<h2>折扣图书</h2>
	<div id="list_detail">
		<h5 class="order-class">小说类</h5>
		<hr />
		<asp:DataList ID="DataList1" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource1" Width="100%" HorizontalAlign="Left" RepeatColumns="5">
			<ItemTemplate>
				<div class="goods-info">
					<div class="goods-image">
						<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
							<asp:Image ID="Image1" runat="server" CssClass="book-img" ImageUrl='<%# Eval("picUrl") %>' /></a>
					</div>
					<div class="goods-detail">
						<div class="goods-price">
							<span class="currency-sign">￥</span><asp:Label ID="MarketPriceLabel" CssClass="book-marketprice" runat="server" Text='<%# Eval("MarketPrice") %>' />
						</div>
						<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
							<asp:Label ID="Label1" Text='<%# Eval("BookName") %>' CssClass="book-name" runat="server"></asp:Label></a>
						<asp:Label ID="AuthorLabel" runat="server" CssClass="book-author" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;著<br />
					</div>
				</div>
			</ItemTemplate>
		</asp:DataList>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
			SelectCommand="SELECT * FROM [Goods_Info] WHERE (([IsDiscount] = @IsDiscount) AND ([ClassID] = @ClassID))">
			<SelectParameters>
				<asp:Parameter DefaultValue="1" Name="ClassID" Type="Int32" />
				<asp:Parameter DefaultValue="1" Name="IsDiscount" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>

		<h5 class="order-class">文艺类</h5>
		<hr />
		<asp:DataList ID="DataList2" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource2" Width="100%" HorizontalAlign="Left" RepeatColumns="5">
			<ItemTemplate>
				<div class="goods-info">
					<div class="goods-image">
						<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
							<asp:Image ID="Image1" runat="server" CssClass="book-img" ImageUrl='<%# Eval("picUrl") %>' /></a>
					</div>
					<div class="goods-detail">
						<div class="goods-price">
							<span class="currency-sign">￥</span><asp:Label ID="MarketPriceLabel" CssClass="book-marketprice" runat="server" Text='<%# Eval("MarketPrice") %>' />
						</div>
						<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
							<asp:Label ID="Label1" Text='<%# Eval("BookName") %>' CssClass="book-name" runat="server"></asp:Label></a>
						<asp:Label ID="AuthorLabel" runat="server" CssClass="book-author" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;著<br />
					</div>
				</div>
			</ItemTemplate>
		</asp:DataList>
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
			SelectCommand="SELECT * FROM [Goods_Info] WHERE (([IsDiscount] = @IsDiscount) AND ([ClassID] = @ClassID))">
			<SelectParameters>
				<asp:Parameter DefaultValue="2" Name="ClassID" Type="Int32" />
				<asp:Parameter DefaultValue="1" Name="IsDiscount" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>

		<h5 class="order-class">生活类</h5>
		<hr />
		<asp:DataList ID="DataList3" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource3" Width="100%" HorizontalAlign="Left" RepeatColumns="5">
			<ItemTemplate>
				<div class="goods-info">
					<div class="goods-image">
						<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
							<asp:Image ID="Image1" runat="server" CssClass="book-img" ImageUrl='<%# Eval("picUrl") %>' /></a>
					</div>
					<div class="goods-detail">
						<div class="goods-price">
							<span class="currency-sign">￥</span><asp:Label ID="MarketPriceLabel" CssClass="book-marketprice" runat="server" Text='<%# Eval("MarketPrice") %>' />
						</div>
						<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
							<asp:Label ID="Label1" Text='<%# Eval("BookName") %>' CssClass="book-name" runat="server"></asp:Label></a>
						<asp:Label ID="AuthorLabel" runat="server" CssClass="book-author" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;著<br />
					</div>
				</div>
			</ItemTemplate>
		</asp:DataList>
		<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
			SelectCommand="SELECT * FROM [Goods_Info] WHERE (([IsDiscount] = @IsDiscount) AND ([ClassID] = @ClassID))">
			<SelectParameters>
				<asp:Parameter DefaultValue="3" Name="ClassID" Type="Int32" />
				<asp:Parameter DefaultValue="1" Name="IsDiscount" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>

		<h5 class="order-class">励志类</h5>
		<hr />
		<asp:DataList ID="DataList4" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource4" Width="100%" HorizontalAlign="Left" RepeatColumns="5">
			<ItemTemplate>
				<div class="goods-info">
					<div class="goods-image">
						<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
							<asp:Image ID="Image1" runat="server" CssClass="book-img" ImageUrl='<%# Eval("picUrl") %>' /></a>
					</div>
					<div class="goods-detail">
						<div class="goods-price">
							<span class="currency-sign">￥</span><asp:Label ID="MarketPriceLabel" CssClass="book-marketprice" runat="server" Text='<%# Eval("MarketPrice") %>' />
						</div>
						<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
							<asp:Label ID="Label1" Text='<%# Eval("BookName") %>' CssClass="book-name" runat="server"></asp:Label></a>
						<asp:Label ID="AuthorLabel" runat="server" CssClass="book-author" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;著<br />
					</div>
				</div>
			</ItemTemplate>
		</asp:DataList>
		<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
			SelectCommand="SELECT * FROM [Goods_Info] WHERE (([IsDiscount] = @IsDiscount) AND ([ClassID] = @ClassID))">
			<SelectParameters>
				<asp:Parameter DefaultValue="4" Name="ClassID" Type="Int32" />
				<asp:Parameter DefaultValue="1" Name="IsDiscount" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>

		<h5 class="order-class">测试类</h5>
		<hr />
		<asp:DataList ID="DataList5" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource5" Width="100%" HorizontalAlign="Left" RepeatColumns="5">
			<ItemTemplate>
				<div class="goods-info">
					<div class="goods-image">
						<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
							<asp:Image ID="Image1" runat="server" CssClass="book-img" ImageUrl='<%# Eval("picUrl") %>' /></a>
					</div>
					<div class="goods-detail">
						<div class="goods-price">
							<span class="currency-sign">￥</span><asp:Label ID="MarketPriceLabel" CssClass="book-marketprice" runat="server" Text='<%# Eval("MarketPrice") %>' />
						</div>
						<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
							<asp:Label ID="Label1" Text='<%# Eval("BookName") %>' CssClass="book-name" runat="server"></asp:Label></a>
						<asp:Label ID="AuthorLabel" runat="server" CssClass="book-author" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;著<br />
					</div>
				</div>
			</ItemTemplate>
		</asp:DataList>
		<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
			SelectCommand="SELECT * FROM [Goods_Info] WHERE (([IsDiscount] = @IsDiscount) AND ([ClassID] = @ClassID))">
			<SelectParameters>
				<asp:Parameter DefaultValue="5" Name="ClassID" Type="Int32" />
				<asp:Parameter DefaultValue="1" Name="IsDiscount" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>
	</div>
</asp:Content>
