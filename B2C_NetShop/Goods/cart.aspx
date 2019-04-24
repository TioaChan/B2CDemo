<%@ Page Title="我的购物车" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="B2C_NetShop.Goods.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<style>
		#Master_content {
			display: none;
		}

		#main_content {
			margin: 30px auto;
		}

		#cart_detile_frame { /*购物车容器*/
			margin-top: 15px;
			padding:10px;
		}

		#cart_head_info,#cart_head_price,#cart_head_num,#cart_head_totalPrice,#cart_head_operate{/*购物车详细信息的标题*/
			float:left;
		}

		#cart_head_info {/*购物车详细信息的标题*/
			margin-left:150px;
			width:400px;
			text-align:center;
		}

		#cart_head_price {/*购物车详细信息的标题*/
			margin-left:60px;
		}
		
		#cart_head_num {/*购物车详细信息的标题*/
			margin-left:88px;
		}

		#cart_head_totalPrice {/*购物车详细信息的标题*/
			margin-left:95px;
		}

		#cart_head_operate {/*购物车详细信息的标题*/
			margin-left:60px;
		}

			#cart_detile{
				width:1070px;
				border:1px #ebebeb solid;
				margin:5px 40px;
				background-color:#FAFAFA;
			}
					#cart_detile_img, #cart_detile_bookname, #cart_detile_num, #cart_detile_price, #cart_detile_totalPrice {
						float: left;
					}
						#cart_detile_img {
							background-color:white;
							width: 100px;
							height:100px;
						}

						.bookImg{
							width:60px;
							display:block;
							margin:7px auto;
						}
							#cart_detile_bookname, #cart_detile_num, #cart_detile_price, #cart_detile_totalPrice {
								/*border:1px red solid;*/
								margin:40px 20px;
								text-align:center;
							}
								#cart_detile_bookname {
									text-align:left;
									width:400px;
								}

								#cart_detile_price {
									width:80px;
								}

								#cart_detile_num {
									width:80px;
									margin:40px 40px;
								}
								#cart_detile_totalPrice {
									width:80px;
								}

		#cart_feature_frame { /*购物车功能区容器*/
			height: 60px;
		}
		/*空购物车提示容器*/ /*MainContent_是因为runat="server"*/
		/*#MainContent_cart_feature_ifEmpty{
			height:100px;
			background-color:#eaeaea;
			text-align:center;
			font-size:20px;
			padding-top:35px;
		}*/
		#cart_feature_ifNotEmpty { /*购物车功能容器*/
			background-color: #eaeaea;
		}

		#cart_feature_left { /*更新 清空 继续购物*/
			margin-left: 20px;
			float: left;
		}

		.cart_feature_btn {
			height: 25px;
			border: none;
			background: none;
			margin: 10px 10px;
		}

		#cart_feature_right { /*提交订单*/
			text-align: right;
			float: right;
			margin-right: 20px;
		}

		#div_price {
			margin-top: 10px;
			float: left;
			margin-right: 10px;
		}

		.cart_feature_btn_pay {
			width: 140px;
			height: 45px;
			border: none;
			background-color: red;
			color: white;
			display: block;
			float: left;
		}

		.clear {
			clear: both;
		}
	</style>
	<div id="main_content">
		<div id="welcome" style="" runat="server">
			<p style="font-size: xx-large; font-family: 微软雅黑;">欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label>。</p>
		</div>
		<div id="head_nav" runat="server">当前位置：<a href="../Default.aspx">首页</a> > 购物车</div>
		<div id="cart_detile_frame">

			<div id="cart_head">
				<div id="cart_head_info">商品信息</div>
				<div id="cart_head_price">单价（元）</div>
				<div id="cart_head_num">数量</div>
				<div id="cart_head_totalPrice">金额（元）</div>
				<div id="cart_head_operate">操作</div>
				<div class="clear"></div>
			</div>
			<asp:DataList ID="dlShopcart" runat="server">
				<ItemTemplate>
					<div id="cart_detile">
						<div id="cart_detile_img">
							<img src="<%# Eval("picUrl") %>" class="bookImg" />
						</div>
						<div id="cart_detile_bookname">
							<asp:Label ID="Label2" runat="server" Text='<%# Eval("BookName") %>'></asp:Label><%--bookname--%>
						</div>
						<div id="cart_detile_price">
							<asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label><%--单价--%>
						</div>
						<div id="cart_detile_num">
							<asp:Label ID="Label3" runat="server" Text='<%# Eval("Num") %>'></asp:Label><%--数量--%>
						</div>
						<div id="cart_detile_totalPrice">
							<asp:Label ID="Label5" runat="server" Text='<%# Eval("totalPrice") %>'></asp:Label><%--总价--%>
						</div>
						<div class="clear"></div>
					</div>
				</ItemTemplate>
			</asp:DataList>
		</div>
		<div id="cart_feature_frame">
			<%--<div id="cart_feature_ifEmpty" runat="server"><a href="../Default.aspx">您还没有购物,去购物吧。</a></div>
				<div class="clear"></div>--%>
			<%--<div id="cart_feature_ifNotEmpty">--%>
			<div id="cart_feature_left">
				<asp:Button ID="btn_cart_update" CssClass="cart_feature_btn" runat="server" Text="更新购物车" OnClick="btn_cart_update_Click" />
				<asp:Button ID="btn_cart_clear" CssClass="cart_feature_btn" runat="server" Text="清空购物车" OnClick="btn_cart_clear_Click" />
				<asp:Button ID="btn_cart_continue" CssClass="cart_feature_btn" runat="server" Text="继续购物" OnClick="btn_cart_continue_Click" />
			</div>
			<div id="cart_feature_right">
				<div id="div_price">
					总价：
							<asp:Label ID="labTotalPrice" runat="server" Text="0.00 " Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
				</div>
				<asp:Button ID="btn_pay" CssClass="cart_feature_btn_pay" runat="server" Text="提交订单" OnClick="btn_pay_Click" />
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<%--</div>--%>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div>
</asp:Content>
