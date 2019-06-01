<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="B2C_NetShop.Goods.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link href="Style/Detail.css" rel="stylesheet" />
	<div id="content_main">
		<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
			<ItemTemplate>
				<div id="datalist_main">
					<div id="pic_frame">
						<asp:Image ID="Image1" CssClass="asp-book-img" runat="server" ImageUrl='<%# Eval("picUrl") %>' />
					</div>
					<div id="detail_frame">
						<div id="detail_book_name">
							<asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' Font-Bold="True" Font-Names="微软雅黑" Font-Size="X-Large" />
						</div>
						<div id="detail_book_introduce">
							<asp:Label ID="BookIntroduceLabel" runat="server" Text='<%# Eval("BookIntroduce") %>' />
						</div>
						<div id="detail_book_author">
							作者：<asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
						</div>
						<div id="detail_book_company">
							出版社：<asp:Label ID="CompanyLabel" runat="server" Text='<%# Eval("Company") %>' />
						</div>
						<div id="detail_book_LoadDate">
							上架时间：<asp:Label ID="LoadDateLabel" runat="server" Text='<%# Eval("LoadDate") %>' />
						</div>
						<div class="clear"></div>
						<div id="detail_book_price">
							<div id="detail_book_marketPrice">
								定价：<asp:Label ID="MarketPriceLabel" runat="server" Text='<%# Eval("MarketPrice") %>' />&nbsp;CNY
							</div>
							<div id="detail_book_hotPrice">
								商城价：<asp:Label ID="HotPriceLabel" runat="server" Text='<%# Eval("HotPrice") %>' Font-Bold="True" Font-Size="Large" ForeColor="Red" />&nbsp;CNY
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</ItemTemplate>
		</asp:DataList>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
			SelectCommand="SELECT [ClassID], [BookName], [BookIntroduce], [Company], [Author], [MarketPrice], [HotPrice], [Isrefinement], [IsHot], [IsDiscount], [LoadDate], [picUrl] FROM [Goods_Info] WHERE ([BookID] = @BookID)">
			<SelectParameters>
				<asp:QueryStringParameter DefaultValue="1" Name="BookID" QueryStringField="id" Type="Int32" />
			</SelectParameters>
		</asp:SqlDataSource>
		<div id="addtocart_frame">
			<div id="addtocart_addnum">
				<asp:UpdatePanel ID="UpdatePanel1" runat="server">
					<ContentTemplate>
						<asp:TextBox ID="TextBox_booknum" runat="server" CssClass="addtocart_addnum_num">1</asp:TextBox>
						<div id="addtocart_addnum_btn">
							<asp:Button ID="btn_plus" runat="server" Text="+" OnClick="btn_plus_Click" />
							<asp:Button ID="btn_minus" runat="server" Text="-" OnClick="btn_minus_Click" />
						</div>
					</ContentTemplate>
					<Triggers>
						<asp:AsyncPostBackTrigger ControlID="btn_plus" EventName="Click" />
						<asp:AsyncPostBackTrigger ControlID="btn_minus" EventName="Click" />
					</Triggers>
				</asp:UpdatePanel>
				<div class="clear"></div>
			</div>
			<asp:Button ID="btn_AddtoCart" CssClass="addtocart_addbtn" runat="server" Text="加入购物车" CommandName="Add" OnClick="btn_AddtoCart_Click" />
			<div class="clear"></div>
		</div>
	</div>
	<!-- 模态框 -->
	<script>
		$(function () {
			var uid = '<%=Session["uid"]%>';
			if (uid == "") {
				$("#MainContent_btn_AddtoCart").click(function () {
					modalshow();
					return false;
				});
			}
		});
		function modalshow() {
			$('#myModal').css("display", "flex");
			$('#myModal').modal('show');
		}
	</script>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active">
							<a href="#home" data-toggle="tab">登陆
							</a>
						</li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="home">
							<div class="input-group">
								<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="请输入你的账号"></asp:TextBox>
							</div>
							<div class="input-group">
								<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="请输入你的密码"></asp:TextBox>
							</div>
							<%--<button type="button" class="btn btn-primary" id="btn_Login"></button>--%>
							<asp:Button ID="btnLogin" runat="server" Text="登陆" CssClass="btn btn-primary" OnClick="btnLogin_Click"/>
						</div>
					</div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</asp:Content>

