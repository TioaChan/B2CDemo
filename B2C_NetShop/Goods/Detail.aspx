<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="B2C_NetShop.Goods.Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<style>
		#Master_content {
			display: none;
		}

		#content_main {
			position: relative;
			/*border:1px red solid;*/
		}

		#datalist_main {
			/*border:1px red solid;*/
		}

		#pic_frame { /*图书图片容器*/
			width: 320px;
			height: 450px;
			float: left;
			padding: 20px;
			/*border:1px red solid;*/
			margin-left: 40px;
		}

		#detail_frame { /*图书信息容器*/
			height: 450px;
			width: 700px;
			float: left;
			margin-left: 40px;
			padding: 20px;
			/*border:1px red solid;*/
			position: relative;
		}

			#detail_frame > #detail_book_name { /*图书名称*/
			}

			#detail_frame > #detail_book_introduce { /*图书简介*/
				margin-top: 10px;
				font-size: 18px;
				padding-bottom: 10px;
				border-bottom: 1px #eaeaea solid;
			}

			#detail_frame > #detail_book_author { /*图书作者*/
				float: left;
				font-size: 12px;
				margin-top: 10px;
			}

			#detail_frame > #detail_book_company { /*图书出版社*/
				margin-left: 10px;
				float: left;
				font-size: 12px;
				margin-top: 10px;
			}

			#detail_frame > #detail_book_LoadDate { /*上架时间*/
				float: right;
				font-size: 12px;
				margin-top: 10px;
				margin-right: 30px;
			}

			#detail_frame > #detail_book_price { /*价格时间*/
				background-color: #eaeaea;
				margin: 20px 0;
				height: 60px;
				padding-top: 10px;
			}

				#detail_frame > #detail_book_price > #detail_book_marketPrice { /*图书定价*/
					text-decoration: line-through;
				}

				#detail_frame > #detail_book_price > #detail_book_hotPrice { /*图书商城价*/
				}

		#addtocart_frame { /*加入购物车容器*/
			width: 660px;
			height: 50px;
			position: absolute;
			bottom: 35px;
			/*border:1px red solid;*/
			border-top: 1px #eaeaea solid;
			padding-top: 15px;
			right: 100px;
		}

			#addtocart_frame > #addtocart_addnum { /*加入购物车数量容器*/
				float: left;
				text-align: left;
				height: 40px;
				width: 60px;
				/*border:1px #eaeaea solid;*/
			}

				#addtocart_frame > #addtocart_addnum > .addtocart_addnum_num { /*加入购物车数量input CssClass*/
					float: left;
					width: 40px;
					height: 40px;
					border: none;
					text-align: center;
					border-top: 1px #eaeaea solid;
					border-bottom: 1px #eaeaea solid;
					border-left: 1px #eaeaea solid;
				}

				#addtocart_frame > #addtocart_addnum > #addtocart_addnum_btn { /*数量控制按钮容器*/
					float: left;
				}

					#addtocart_frame > #addtocart_addnum > #addtocart_addnum_btn > input { /*数量控制按钮*/
						width: 20px;
						height: 20px;
						display: block;
						background: none;
						border: 1px #eaeaea solid;
						padding: 0;
					}

			#addtocart_frame > .addtocart_addbtn { /*加入购物车按钮*/
				display: block;
				float: left;
				background: none;
				border: none;
				text-align: center;
				background-color: red;
				color: white;
				width: 140px;
				height: 40px;
			}
		/*.addtocart_addtips{
		display:block;
		text-align:center;
		padding-top:10px;
		color:red;
		margin-left:30px;
		position:absolute;
		right:320px;
		bottom:40px;
	}*/
		.clear {
			clear: both;
		}

		.asp-book-img {
			width: 280px;
		}
	</style>
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
				<asp:TextBox ID="TextBox_booknum" runat="server" CssClass="addtocart_addnum_num">1</asp:TextBox>
				<div id="addtocart_addnum_btn">
					<asp:Button ID="btn_plus" runat="server" Text="+" />
					<asp:Button ID="btn_minus" runat="server" Text="-" />
				</div>
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
	<style>
		#myModal {
			display: none;
			/* 设置flex布局 */
			flex-direction: row;
			/* 设置主轴 */
			height: 100vh;
			/* 相对视口高度 */
			justify-content: center;
			/* 设置主轴的对其方式 =>水平居中 */
			align-items: center;
			/* 设置交叉轴的对其方式 =>垂直居中 */
			-webkit-transition-duration: .25s;
			-moz-transition-duration: .25s;
			-o-transition-duration: .25s;
			transition-duration: .25s;
		}

		.modal-dialog {
			width: 300px;
		}

		.modal-content {
		}

		.input-group input {
			width: 100%;
			max-width: 502px;
			height: 50px;
			margin-top: 20px;
		}

		.input-group {
			width: 100%;
		}

		.btn-primary {
			width: 209px;
			height: 32px;
			margin-top: 20px;
		}

		.nav-tabs {
			border-bottom: none;
		}

		#myTab {
			width: 300px;
		}

			#myTab li a {
				font-family: 微软雅黑;
				width: 100px;
				display: block;
				color: #000;
				border: 0px;
				border-radius: 0px;
				line-height: 25px;
				border: 1px solid #000;
				text-align: center;
				font-size: 15px;
				-webkit-transition-duration: .25s;
				-moz-transition-duration: .25s;
				-o-transition-duration: .25s;
				transition-duration: .25s;
			}

				#myTab li a:hover {
					width: 100px;
					background: #E41818;
					color: #fff;
				}

				#myTab li a:focus {
					width: 100px;
					background: #E41818;
					color: #fff;
				}

			#myTab li.active a {
				background: #E41818;
				color: #fff;
			}

		.btn-primary {
			background: #333;
			border-radius: 0px;
			height: 40px;
			-webkit-transition-duration: .25s;
			-moz-transition-duration: .25s;
			-o-transition-duration: .25s;
			transition-duration: .25s;
		}

			.btn-primary:hover {
				background: #E41818;
			}
	</style>
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

