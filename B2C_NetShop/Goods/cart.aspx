<%@ Page Title="我的购物车" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="B2C_NetShop.Goods.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link href="Style/cart.css" rel="stylesheet" />
	<div id="main_content">
		<div id="welcome" style="" runat="server">
			<p style="font-size: xx-large; font-family: 微软雅黑;">欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label>。</p>
		</div>
		<div id="head_nav" runat="server">当前位置：<a href="../Default.aspx">首页</a> > 购物车</div>
		<div id="cart1" runat="server">
			<div id="cart_detile_frame">
			<div id="cart_head">
				<div id="cart_head_info">商品信息</div>
				<div id="cart_head_price">单价（元）</div>
				<div id="cart_head_num">数量</div>
				<div id="cart_head_totalPrice">金额（元）</div>
				<div id="cart_head_operate">操作</div>
				<div class="clear"></div>
			</div>
			<asp:DataList ID="dlShopcart" runat="server" OnUpdateCommand="dlShopcart_UpdateCommand" OnDeleteCommand="dlShopcart_DeleteCommand">
				<ItemTemplate>
					<div id="cart_detile">
						<asp:Label ID="Label_BookID" runat="server" Text='<%# Eval("BookID") %>' Visible="False"></asp:Label>
						<div id="cart_detile_img">
							<img src="<%# Eval("picUrl") %>" class="bookImg" />
						</div>
						<div id="cart_detile_bookname">
							<asp:Label ID="Label2" runat="server" Text='<%# Eval("BookName") %>'></asp:Label><%--bookname--%>
						</div>
						<div id="cart_detile_price">
							<asp:Label ID="Label4" runat="server" Text='<%# Eval("MarketPrice") %>'></asp:Label><%--单价--%>
						</div>
						<div id="cart_detile_num">
							<asp:Button ID="Button_Num_Plus" CssClass="NumControl" runat="server" Text="+" CommandArgument="NumPlus" CommandName="Update" />
							<asp:TextBox ID="TextBox_Booknum" runat="server" Text='<%# Eval("Num") %>' Width="28px" MaxLength="2"></asp:TextBox>
							<asp:Button ID="Button_Num_Minus" CssClass="NumControl" runat="server" Text="-" CommandArgument="NumMinus" CommandName="Update" />
						</div>
						<div id="cart_detile_totalPrice">
							<asp:Label ID="Label5" runat="server" Text='<%# Eval("totalPrice") %>'></asp:Label><%--总价--%>
						</div>
						<div id="cart_detail_delete">
							<asp:Button ID="Button_Goods_Delete" CssClass="btn-lablelike" runat="server" Text="删除" CommandName="Delete" />
						</div>
						<div class="clear"></div>
					</div>
				</ItemTemplate>
			</asp:DataList>
		</div>
			<div id="cart_feature_frame">
			<div id="cart_feature_left">
				<asp:Button ID="btn_cart_clear" CssClass="btn-lablelike cart_feature_btn" runat="server" Text="清空购物车" OnClick="btn_cart_clear_Click" />
				<asp:Button ID="btn_cart_continue" CssClass="btn-lablelike cart_feature_btn" runat="server" Text="继续购物" OnClick="btn_cart_continue_Click" />
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
		</div>
		</div>
		<div id="cart_ifEmpty" runat="server">
			<a href="../Default.aspx">您还没有购物,去购物吧。</a>
		</div>
	</div>
	<div class="clear"></div>
</asp:Content>
