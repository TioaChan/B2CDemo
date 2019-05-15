<%@ Page Title="首页_B2CDemo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B2C_NetShop._Default" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HalfPageContentPlaceHolder" runat="server">
	<script>
		$(function () {
			$("#banner-left-arrow,#banner-right-arrow,#banner-small-left-arrow,#banner-small-right-arrow").css("display", "none");
			$("#banner-modal").hover(function () {
				$("#banner-left-arrow,#banner-right-arrow").css("display", "block");
			}, function () {
				$("#banner-left-arrow,#banner-right-arrow").css("display", "none");
			});

			$("#banner-small-modal").hover(function () {
				$("#banner-small-left-arrow,#banner-small-right-arrow").css("display", "block");
			}, function () {
				$("#banner-small-left-arrow,#banner-small-right-arrow").css("display", "none");
			});


			$(".footer_goods_detail").hover(function () {
				console.log($(this).is(":visible"));
				$(this).find(".book_price").slideDown();
			}, function () {
				$(this).find(".book_price").stop(true, false).slideUp();
			});

		});
	</script>
	<style>
		#div_right { /*右侧功能区*/
			width: 202px;
			height: 475px;
			float: left;
			background: #fff;
		}

		#user_info_container { /*用户容器*/
			/*border: 1px red solid;*/
			background: url(/img/DefaultImg/login_bc.png) no-repeat;
			height:154px;
		}

		#user_img { /*用户头像容器*/
			/*border: 1px red solid;*/
			height: 50px;
			width: 200px;
			text-align: center;
		}

		#user_info_container > #user_info { /*用户信息容器*/
			/*border: 1px red solid;*/
			height: 50px;
			width: 200px;
			text-align: center;
			font-size: 15px;
		}

		#user_info_btn {
			height: 50px;
			text-align: center;
			
		}

		.user_info_btn_a {
			background: #FF0000;
			color: #fff;
			width: 50px;
			-webkit-transition-duration: .25s;
			-moz-transition-duration: .25s;
			-o-transition-duration: .25s;
			transition-duration: .25s;
			margin-left: 5px;
			padding: 3px 10px;
			border-radius: 5px;
		}

			.user_info_btn_a:hover {
				background: #FF0000;
				color: #fff;
				width: 50px;
				background-color: #444;
				color: white;
				box-shadow: 5px 5px 5px 5px rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.17);
				text-decoration: none;
			}



		#myCarousel {
			float: left;
			height: 315px;
			/*border: 1px red solid;*/
		}

		.carousel-control.left, .carousel-control.right {
			background-image: none;
		}

		.clear {
			clear: both;
		}

		/*banner-ad*/
		#banner {
			float: left;
		}


		#banner-modal {
			width: 750px;
			height: 160px;
			clear: both;
			position: relative;
		}

			#banner-modal .item {
				width: 796px;
				height: 160px;
			}

			#banner-modal .product-ad {
				width: 187.5px;
				height: 160px;
				border-left: 1px gainsboro solid;
			}

			#banner-modal .cover {
				position: absolute;
				top: 0px;
				left: 0px;
				width: 199px;
				height: 160px;
				opacity: 0.15;
			}

				#banner-modal .cover:hover {
					background: gray;
				}

			#banner-modal .carousel-inner a {
				width: 187.5px;
				height: 160px;
				float: left;
				position: relative;
				display: block;
			}

			/*=============左箭头=============*/
			#banner-modal .carousel-control {
				position: absolute;
				width: 30px;
				height: 60px;
				margin: auto;
			}

		#banner-left-arrow {
			background: #000000;
			opacity: .2;
		}

			#banner-left-arrow:hover {
				opacity: .8;
			}

			#banner-left-arrow span {
				left: 0px;
				top: 15px;
				margin: auto;
			}

		/*=============右箭头=============*/
		#banner-right-arrow {
			background: #000000;
			opacity: .2;
		}

			#banner-right-arrow:hover {
				opacity: .8;
			}

			#banner-right-arrow span {
				right: 0px;
				top: 15px;
				margin: auto;
			}

		/*=======================*/
		.cover, #banner-modal .carousel-control {
			-webkit-transition-duration: .25s;
			-moz-transition-duration: .25s;
			-o-transition-duration: .25s;
			transition-duration: .25s;
		}


		/*banner-ad-small*/

		#banner-small-modal {
		}

		.product-ad-small {
		}
		/*=============左箭头=============*/
		#banner-small-modal .carousel-control {
			width: 30px;
			height: 60px;
			margin: auto;
		}

		#banner-small-left-arrow {
			background: #000000;
			opacity: .2;
		}

			#banner-small-left-arrow:hover {
				opacity: .8;
			}

			#banner-small-left-arrow span {
				left: 0px;
				top: 15px;
				margin: auto;
			}

		/*=============右箭头=============*/
		#banner-small-right-arrow {
			background: #000000;
			opacity: .2;
		}

			#banner-small-right-arrow:hover {
				opacity: .8;
			}

			#banner-small-right-arrow span {
				right: 0px;
				top: 15px;
				margin: auto;
			}
	</style>
	<div>
		<div>

			<div id="banner">
				<div id="myCarousel" class="carousel slide">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="img/DefaultImg/4.jpg" alt="First slide">
						</div>
						<div class="item">
							<img src="img/DefaultImg/5.jpg" alt="Second slide">
						</div>
						<div class="item">
							<img src="img/DefaultImg/6.jpg" alt="Third slide">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				<div id="banner-modal" class="carousel slide">
					<!-- 轮播（Carousel）指标 -->
					<!-- <ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active">1</li>
				<li data-target="#myCarousel" data-slide-to="1">2</li>
			</ol> -->
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/02.jpg" alt="First slide">
								<span class="cover"></span>
							</a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/02.jpg" alt="First slide">
								<span class="cover"></span></a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/03.jpg" alt="First slide">
								<span class="cover"></span></a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/04.jpg" alt="First slide">
								<span class="cover"></span></a>
						</div>
						<div class="item">
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/05.jpg" alt="Second slide">
								<span class="cover"></span>
							</a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/06.jpg" alt="Second slide">
								<span class="cover"></span></a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/07.jpg" alt="Second slide">
								<span class="cover"></span></a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/08.jpg" alt="Second slide">
								<span class="cover"></span></a>
						</div>
					</div>
					<a id="banner-left-arrow" class="left carousel-control" href="#banner-modal" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a id="banner-right-arrow" class="right carousel-control" href="#banner-modal" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div id="div_right">
				<div id="user_info_container">
					<div id="user_img">
						<a href="User/Info.aspx" target="_blank">
							<%--<img id="" src="Account/UserImg/DefaultUserImg.png" style="width: 50px; height: 50px">--%>
							<asp:Image ID="Image1" runat="server" Style="width: 50px; height: 50px" ImageUrl="~/User/ImagesUpload/DefaultImage.png" /></a>
					</div>
					<div id="user_info">
						<div id="user_info_name">
							<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						</div>
						<div id="user_info_btn">
							<asp:HyperLink ID="HyperLink1" runat="server" CssClass="user_info_btn_a">HL1</asp:HyperLink>
							<asp:HyperLink ID="HyperLink2" runat="server" CssClass="user_info_btn_a">HL2</asp:HyperLink>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<a href="#">
					<img src="img/product-ad-img/sponsor.jpg" alt="Alternate Text" /></a>
				
				<div id="banner-small-modal" class="carousel slide">

					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<a href="#">
								<img class="product-ad-small" src="img/product-ad-img/a.jpg" alt="First slide"></a>
						</div>
						<div class="item">
							<a href="#">
								<img class="product-ad-small" src="img/product-ad-img/b.jpg" alt="Second slide"></a>
						</div>
						<div class="item">
							<a href="#">
								<img class="product-ad-small" src="img/product-ad-img/c.jpg" alt="Third slide"></a>
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a id="banner-small-left-arrow" class="left carousel-control" href="#banner-small-modal" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a id="banner-small-right-arrow" class="right carousel-control" href="#banner-small-modal" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>




		</div>
	</div>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<style>
		body {
			background: #f6f6f6;
		}

		#footer .footer_goods_frame {
			height: 400px;
		}

		#footer #MainContent_DataList_RefinementGoods {
			height: 234px;
		}

		.footer_type h2 {
			margin: 0px;
		}

		#footer_1st, #footer_2nd, #footer_3rd { /*三个推荐栏目容器*/
			height: auto;
			border-bottom: 1px #eaeaea solid;
		}

		.footer_type { /*推荐栏目说明和按钮容器*/
			float: left;
		}

		.footer_goods_frame {
			height: 234px;
		}

		.footer_goods_detail {
			/*float:left;*/
			background: #fff;
			width: 220px;
			height: 400px;
			margin: 0px 8px;
			display: flex;
			text-align: center;
			flex-direction: row;
			justify-content: center;
			align-items: center;
			height: 280px;
			margin-bottom: 10px;
			-webkit-transition-duration: .25s;
			-moz-transition-duration: .25s;
			-o-transition-duration: .25s;
			transition-duration: .25s;
		}

			.footer_goods_detail:hover {
				-webkit-box-shadow: 3px 3px 3px;
				-moz-box-shadow: 3px 3px 3px;
				box-shadow: 5px 5px 5px;
			}

		.bookImg {
			height: 171px;
			display: block;
			margin: 7px auto;
		}

		.footer_type {
			margin: 20px;
		}


		.book_name, .book_author, .book_price {
			display: block;
		}

		.book_name {
			font-family: Times New Roman;
			color: #000;
		}

		.book_author {
			color: rgba(0, 0, 0, 0.5);
		}


		.book_price {
			color: #fff;
			background: #ff6700;
			width: 100%;
			display: none;
			margin: 0 auto;
		}

		.footer_btn {
			float: right;
			margin-top: 30px;
		}

			.footer_btn > a { /*推荐位按钮样式，使用a代替按钮*/
				padding-top: 10px;
				height: 40px;
				width: 100px;
				text-align: center;
			}

		a:hover {
			text-decoration: none;
		}

		.product-card {
			width: 230px;
		}

		.btn-default {
			-webkit-transition-duration: .25s;
			-moz-transition-duration: .25s;
			-o-transition-duration: .25s;
			transition-duration: .25s;
		}
	</style>
	<div id="footer">
		<div id="footer_1st">
			<div class="footer_type">
				<h2>商城精选</h2>
				<p>精选图书，值得一看</p>
			</div>
			<div class="footer_btn"><a  target="_blank" class="btn btn-default" href="Goods/refinement.aspx">查看更多 &raquo;</a></div>
			<div class="footer_goods_frame">
				<%--datalist test start--%>
				<asp:DataList ID="DataList_RefinementGoods" runat="server" RepeatDirection="Horizontal">
					<ItemTemplate>

						<div class="footer_goods_detail">
							<a style="display: block;" href="<%# Eval("BookUrl") %>"><%--bookurl--%>
								<%--bookimg--%>
								<div class="product-card">
									<img src="<%# Eval("picUrl") %>" alt="Alternate Text" class="bookImg" />
									<span class="book_name"><%# Eval("BookName") %></span> <%--bookname--%>
									<span class="book_author"><%# Eval("Author") %>&nbsp;著</span> <%--bookauthor--%>
									<div class="book_price">售价：<%# Eval("HotPrice") %>&nbsp;元</div>
									<%--hotprice--%>
							</a>
						</div>

					</ItemTemplate>
				</asp:DataList>
				<%--datalist test end--%>
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer_2nd">
			<div class="footer_type">
				<h2>商城热卖</h2>
				<p>人气图书，每天更新</p>
			</div>
			<div class="footer_btn"><a target="_blank" class="btn btn-default" href="Goods/hot.aspx">查看更多 &raquo;</a></div>
			<div class="footer_goods_frame">
				<%--datalist test start--%>
				<asp:DataList ID="DataList_HotGoods" runat="server" RepeatDirection="Horizontal">
					<ItemTemplate>
						<%--bookimg--%>
						<div class="footer_goods_detail">
							<div class="product-card">
								<a href="<%# Eval("BookUrl") %>"><%--bookurl--%>
									<img src="<%# Eval("picUrl") %>" alt="Alternate Text" class="bookImg" />
									<%--bookimg--%>
									<span class="book_name"><%# Eval("BookName") %></span> <%--bookname--%>
									<span class="book_author"><%# Eval("Author") %>&nbsp;著</span> <%--bookauthor--%>
									<div class="book_price">售价：<%# Eval("HotPrice") %>&nbsp;元</div>
									<%--hotprice--%></a>
							</div>
						</div>
					</ItemTemplate>
				</asp:DataList>
				<%--datalist test end--%>
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer_3rd">
			<div class="footer_type">
				<h2>商城折扣</h2>
				<p>折扣图书，低至一折</p>
			</div>
			<div class="footer_btn"><a target="_blank" class="btn btn-default" href="Goods/discount.aspx">查看更多 &raquo;</a></div>
			<div class="footer_goods_frame">
				<%--datalist test start--%>
				<asp:DataList ID="DataList_DiscountGoods" runat="server" RepeatDirection="Horizontal">
					<ItemTemplate>
						<div class="footer_goods_detail">
							<a href="<%# Eval("BookUrl") %>"><%--bookurl--%>
								<%--bookimg--%>
								<div class="product-card">
									<a href="#">
										<img src="<%# Eval("picUrl") %>" alt="Alternate Text" class="bookImg" />
									</a>
									<span class="book_name"><%# Eval("BookName") %></span> <%--bookname--%>
									<span class="book_author"><%# Eval("Author") %>&nbsp;著</span> <%--bookauthor--%>
									<div class="book_price">售价：<%# Eval("HotPrice") %>&nbsp;元</div>
									<%--hotprice--%>
							</a>
						</div>
						</div>
					</ItemTemplate>
				</asp:DataList>
				<%--datalist test end--%>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<br />
</asp:Content>
