<%@ Page Title="商品已成功加入购物车" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addToCart.aspx.cs" Inherits="B2C_NetShop.Goods.addToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HalfPageContentPlaceHolder" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<style>
 		#Master_content{
			display:none;
		}
		#addSuccess_frame{
			background-color:#eaeaea;
		}
		#current_img{
			width:100px;
			height:100px;
			background-color:white;
			float:left;
			padding:7px 20px;
		}
		#current_img>img{
			width:60px;

		}
		#current_bookinfo{
			float:left;
		}
	</style>
	<div id="addSuccess_frame">
		<p>商品已成功加入购物车！</p>
		<asp:DataList ID="current_info" runat="server">
				<ItemTemplate>
					<div id="current_info_frame">
						<div id="current_img">
							<img src="<%# Eval("picUrl") %>" class="bookImg" />
						</div>
						<div id="current_bookinfo">
							<div id="current_bookname">
								<asp:Label ID="Label2" runat="server" Text='<%# Eval("BookName") %>'></asp:Label><%--bookname--%>
							</div>
							<div id="cart_detile_num">
								数量：<asp:Label ID="Label3" runat="server" Text='<%# Eval("Num") %>'></asp:Label><%--数量--%>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</ItemTemplate>
			</asp:DataList>
	</div>
</asp:Content>
