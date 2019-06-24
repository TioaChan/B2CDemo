<%@ Page Title="搜索结果" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="B2C_NetShop.Goods.search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	m<style>
		#Master_content{/*继承母版页的图书分类*/
			display:none;
		}
		#content_main{/*本页面容器*/
			/*border:1px red solid;*/
		}
		#search_title{/*搜索标题*/
			height: 40px;
			padding-top: 10px;
			padding-left: 10px;
			margin-top: 10px;
			margin-left: 10px;
			font-size: 16px;
			font-family: '微软雅黑 Light';
		}
		#search_result{/*搜索结果*/
			padding: 10px 10px 30px 10px;
			margin: 10px 10px 10px 10px;
		}
		#goods_info{/*搜索结果信息容器*/
			width: 200px;
			height:340px;
			/*border:1px red solid;*/
			margin:0px 10px 20px 10px;
			padding:5px;
		}
			#goods_info>a{
				display:block;
			}
		#goods_image{/*搜索结果图片*/
			padding-left:5px;
		}
		#goods_detail{/*搜索结果价格&名称&出版社容器*/
			text-align: left;
			margin-top:10px;
			padding-left:8px;
		}
			#goods_detail>#goods_price{
				text-align: left;
				color: red;
				font-size: large;
			}
		.clear{
			clear:both;
		}
	</style><div id="content_main" >
		<div id="search_title">
			关键字“<asp:Label ID="Keywords" runat="server" Text="Label"></asp:Label>”的搜索结果
		</div>
		<div id="search_result">
				<asp:DataList ID="DataList1" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource1" HorizontalAlign="left" RepeatColumns="5">
					<ItemTemplate>
						<div id="goods_info">
							<div id="goods_image">
								<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
									<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picUrl") %>' Height="250px" Width="180px" /></a>
							</div>
							<div id="goods_detail">
								<div id="goods_price">￥<asp:Label ID="MarketPriceLabel" runat="server" Text='<%# Eval("MarketPrice") %>' /></div>
								<a href='<%# Eval("BookID","Detail.aspx?id={0}") %>'>
									<asp:Label ID="Label1" Text='<%# Eval("BookName") %>' runat="server"></asp:Label></a>
								<br />
								<asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />&nbsp;&nbsp;著<br />
								<br />
							</div>
						</div>
					</ItemTemplate>
				</asp:DataList>
			<div class="clear"></div>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
				SelectCommand="SELECT [BookID], [BookName], [Author], [MarketPrice], [picUrl] FROM [Goods_Info] WHERE ([BookName] LIKE '%'+@BookName+'%')">
				<SelectParameters>
					<asp:QueryStringParameter Name="BookName" QueryStringField="keywords" Type="String" />
				</SelectParameters>
			</asp:SqlDataSource>
		</div>
	</div>
	<div class="clear"></div>
</asp:Content>
