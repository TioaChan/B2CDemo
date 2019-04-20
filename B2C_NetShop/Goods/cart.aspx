<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="B2C_NetShop.Goods.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<style>
		#Master_content{
			display:none;
		}
		#main_content{
			margin:30px auto;
			/*border:1px red solid;*/
		}
		#Gcart{/*购物车容器*/
			text-align: center;
			margin:10px 0;
		}
		#cart_feature_frame{/*购物车功能区容器*/
			height: 60px;
			
		}
		#MainContent_cart_feature_ifEmpty{/*空购物车提示容器*/  /*MainContent_是因为runat="server"*/
			height:100px;
			background-color:#eaeaea;
			text-align:center;
			font-size:20px;
			padding-top:35px;
		}
		#MainContent_cart_feature_ifNotEmpty{/*购物车功能容器*/
			background-color:#eaeaea;
		}
			#cart_feature_left{/*更新 清空 继续购物*/
				margin-left:20px;
				float: left;
			}
				.cart_feature_btn{
				height:25px;
				border:none;
				background:none;
				margin:10px 10px;
				}

			#cart_feature_right{/*提交订单*/
				text-align: right;
				float: right;
				margin-right:20px;
			}
				#div_prince{
					margin-top:10px;
					float:left;
					margin-right:10px;
				}
				.cart_feature_btn_pay{
					width:140px;
					height:45px;
					border:none;
					background-color:red;
					color:white;
					display:block;
					float:left;
				}
		.clear{
			clear:both;
		}
	</style>
	<div id="main_content">
		<div id="welcome" style="" runat="server">
			<p style="font-size: xx-large; font-family: 微软雅黑;">欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label>。</p>
		</div>
		<div id="head_nav" runat="server">当前位置：<a href="../Default.aspx">首页</a> > 购物车</div>
		<div id="Gcart">
			<asp:GridView ID="gvShopCart" DataKeyNames="BookID" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1180px">
				<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
				<Columns>
					<asp:BoundField DataField="No" HeaderText="序号" ReadOnly="True">
						<ItemStyle HorizontalAlign="Center" />
						<HeaderStyle HorizontalAlign="Center" />
					</asp:BoundField>
					<asp:BoundField DataField="BookID" HeaderText="书籍ID" ReadOnly="True">
						<ItemStyle HorizontalAlign="Center" />
						<HeaderStyle HorizontalAlign="Center" />
					</asp:BoundField>
					<asp:BoundField DataField="BookName" HeaderText="书籍名称" ReadOnly="True">
						<ItemStyle HorizontalAlign="Center" />
						<HeaderStyle HorizontalAlign="Center" />
					</asp:BoundField>
					<asp:TemplateField HeaderText="数量">
						<ItemTemplate>
							<asp:TextBox ID="txtNum" runat="server" Text='<%#Eval("Num") %>' Width="60px"></asp:TextBox>
							<asp:RegularExpressionValidator
								ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNum"
								ErrorMessage="×" ValidationExpression="^\+?[1-9][0-9]*$"></asp:RegularExpressionValidator>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField HeaderText="单价">
						<HeaderStyle HorizontalAlign="Center" />
						<ItemStyle HorizontalAlign="Center" />
						<ItemTemplate>
							￥<%#Eval("price")%>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField HeaderText="总价">
						<HeaderStyle HorizontalAlign="Center" />
						<ItemStyle HorizontalAlign="Center" />
						<ItemTemplate>
							￥<%#Eval("totalPrice")%>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField>
						<HeaderStyle HorizontalAlign="Center" />
						<ItemStyle HorizontalAlign="Center" />
						<ItemTemplate>
							<asp:LinkButton ID="lnkbtnDelete" runat="server" CommandArgument='<%#Eval("BookID") %>' OnCommand="lnkbtnDelete_Command">删除</asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateField>
				</Columns>
				<EditRowStyle BackColor="#999999" />
				<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
				<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
				<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
				<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
				<SortedAscendingCellStyle BackColor="#E9E7E2" />
				<SortedAscendingHeaderStyle BackColor="#506C8C" />
				<SortedDescendingCellStyle BackColor="#FFFDF8" />
				<SortedDescendingHeaderStyle BackColor="#6F8DAE" />
			</asp:GridView>
		</div>
		<div id="cart_feature_frame">
				<div id="cart_feature_ifEmpty" runat="server"><a href="../Default.aspx">您还没有购物,去购物吧。</a></div>
				<div class="clear"></div>
				<div id="cart_feature_ifNotEmpty" runat="server">
					<div id="cart_feature_left">
						<asp:Button ID="btn_cart_update" CssClass="cart_feature_btn" runat="server" Text="更新购物车" OnClick="btn_cart_update_Click" />
						<asp:Button ID="btn_cart_clear" CssClass="cart_feature_btn" runat="server" Text="清空购物车" OnClick="btn_cart_clear_Click" />
						<asp:Button ID="btn_cart_continue" CssClass="cart_feature_btn" runat="server" Text="继续购物" OnClick="btn_cart_continue_Click" />
					</div>
					<div id="cart_feature_right">
						<div id="div_prince">
							总价：
							<asp:Label ID="labTotalPrice" runat="server" Text="0.00 " Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
						</div>
						<asp:Button ID="btn_pay" CssClass="cart_feature_btn_pay" runat="server" Text="提交订单" OnClick="btn_pay_Click" />
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
	</div>
	<div class="clear"></div>
</asp:Content>