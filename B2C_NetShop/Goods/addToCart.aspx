<%@ Page Title="商品已成功加入购物车" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addToCart.aspx.cs" Inherits="B2C_NetShop.Goods.addToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HalfPageContentPlaceHolder" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<style>
 		#Master_content{
			display:none;
		}
	</style>
	<div id="addSuccess_frame">
		商品已成功加入购物车！
		<asp:DataList ID="current_info" runat="server">
				<ItemTemplate>
					<div id="current_info_frame">
						<div id="current_img">
							<img src="<%# Eval("picUrl") %>" class="bookImg" />
						</div>
						<div id="current_bookname">
							<asp:Label ID="Label2" runat="server" Text='<%# Eval("BookName") %>'></asp:Label><%--bookname--%>
						</div>
						<div id="cart_detile_num">
							<asp:Label ID="Label3" runat="server" Text='<%# Eval("Num") %>'></asp:Label><%--数量--%>
						</div>
						<div class="clear"></div>
					</div>
				</ItemTemplate>
			</asp:DataList>
	</div>
</asp:Content>
