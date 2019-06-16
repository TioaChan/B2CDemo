<%@ Page Title="提交订单" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="getOrderInfo.aspx.cs" Inherits="B2C_NetShop.Order.getOrderInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link href="css/getOrderInfo.css" rel="stylesheet" />
	<div class="orderinfo-container">
		<div class="orderinfo-frame-title">
			填写并核对订单信息
		</div>

		<script>
			$(document).ready(function () {
				$("#MainContent_DataList_AddressList > span").hover(
					function () {
						$(this).css("background-color", "#eaeaea")
					},
					function () {
						$(this).css("background-color", "white")
					}
				)
			})
		</script>

		<div class="orderinfo-content">
			<div class="orderinfo-address-frame orderinfo-frame">
				<div class="frame-title">收货人信息：</div>
				<div class="orderinfo-address-default frame-content">
					<asp:DataList ID="DataList_AddressList" runat="server" RepeatLayout="Flow"
						RepeatDirection="Horizontal" OnUpdateCommand="DataList_AddressList_UpdateCommand">
						<ItemTemplate>
							<asp:Button ID="DataList_AddressList_Name" runat="server"
								Text='<%# Eval("RealName") %>' CommandArgument='<%# Eval("id") %>'
								CommandName="Update" Width="120px" BorderColor="#FAFAFA" BorderStyle="Solid" BackColor="White" BorderWidth="2px" Font-Size="12px" />
							<span class="DataList_Address">
								<asp:Label ID="DataList_AddressList_Address_Name" CssClass="AddressInfo" runat="server"
									Text='<%# Eval	("RealName") %>' Width="60px" />
								<asp:Label ID="DataList_AddressList_Address_Address" CssClass="AddressInfo"
									runat="server" Text='<%# Eval	("Address") %>' />
								<asp:Label ID="DataList_AddressList_Address_Phone" CssClass="AddressInfo" runat="server"
									Text='<%# Eval("PhoneNumber") %>' />
							</span>
						</ItemTemplate>
					</asp:DataList>
				</div>
			</div>
			<div class="orderinfo-payment-frame orderinfo-frame">
				<div class="frame-title">支付方式：</div>
				<div class="orderinfo-payment frame-content">
					<asp:RadioButton ID="RadioButton1" runat="server" Text="余额支付" Font-Names="Tahoma"
						Font-Size="12px" />
				</div>
			</div>
			<div class="orderinfo-deliverymethod-frame orderinfo-frame">
				<div class="frame-title">配送方式：</div>
				<div class="orderinfo-deliverymethod frame-content">
					<asp:RadioButton ID="RadioButton2" runat="server" Font-Names="Tahoma" Font-Size="12px"
						Text="EMS经济快递" />
				</div>
			</div>
			<div class="orderinfo-goods-frame orderinfo-frame">
				<div class="frame-title">送货清单：</div>
				<div class="orderinfo-goods">
<%--					<asp:GridView ID="gvShopCart" DataKeyNames="BookID" runat="server" AutoGenerateColumns="False"
						AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
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
									<asp:TextBox ID="txtNum" runat="server" Text='<%#Eval("Num") %>' Width="60px"
										ReadOnly="true"></asp:TextBox>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="MarketPrice">
								<HeaderStyle HorizontalAlign="Center" />
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
									￥<%#Eval("MarketPrice")%>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="HotPrice">
								<HeaderStyle HorizontalAlign="Center" />
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
									￥<%#Eval("HotPrice")%>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="总价">
								<HeaderStyle HorizontalAlign="Center" />
								<ItemStyle HorizontalAlign="Center" />
								<ItemTemplate>
									￥<%#Eval("totalPrice")%>
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
					</asp:GridView>--%>
					<div id="order_head_frame">
						<div class="order_head head_name">名称</div>
						<div class="order_head head_MarketPrice">MarketPrice（元）</div>
						<div class="order_head head_HotPrice">HotPrice（元）</div>
						<div class="order_head head_num">num</div>
						<div class="order_head head_totalPrice">金额（元）</div>
						<div class="clear"></div>
					</div>
					<asp:DataList ID="DataList_Order" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
						<ItemTemplate>
							<span class="order_frame">
								<span class="order_book_img">
									<img src="<%# Eval("picUrl") %>" class="bookImg" />
								</span>
								<span class="order order_book_name">
									<a href='<%# Eval("BookUrl") %>' runat="server">
										<asp:Label ID="Label2" runat="server" Text='<%# Eval("BookName") %>' Width="200px" ></asp:Label>
									</a>
								</span>
								<span class="order order_book_MarketPrice">
									<asp:Label ID="Label4" runat="server" Text='<%# Eval("MarketPrice") %>' Width="150px" ></asp:Label>
								</span>
								<span class="order order_book_HotPrice">
									<asp:Label ID="Label6" runat="server" Text='<%# Eval("HotPrice") %>' Width="150px" ></asp:Label>
								</span>
								<span class="order order_book_num">
									<asp:Label ID="Label3" runat="server" Text='<%# Eval("Num") %>' Width="150px" ></asp:Label>
								</span>
								<span class="order order_book_totalPrice">
									<asp:Label ID="Label5" runat="server" Text='<%# Eval("totalPrice") %>' Width="150px" ></asp:Label>
								</span>
								<span class="clear"></span>
							</span>
						</ItemTemplate>
					</asp:DataList>

				</div>
			</div>
			<div class="orderinfo-invoice-frame orderinfo-frame">
				<div class="frame-title">
					发票信息：
				</div>
				<div class="orderinfo-invoice frame-content">
					<asp:RadioButton ID="RadioButton3" runat="server" Font-Names="Tahoma" Font-Size="12px"
						Text="纸质普通发票" />
				</div>
			</div>
		</div>
		<div class="orderinfo-controlpanel-frame">
			<div class="orderinfo-controlpanel-amont">
				<div class="orderinfo-overview-goodscount">
					<span class="orderinfo-overview-mark">
						<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>件商品，总额：
					</span>
					<asp:Label ID="Label1" runat="server" Text="Label" CssClass="orderinfo-overview-mark-right">
					</asp:Label>
					<div class="clear"></div>
				</div>
				<div class="orderinfo-overview-goodsfreight">
					<span class="orderinfo-overview-mark">运费：</span>
					<asp:Label ID="Label4" runat="server" Text="Label" CssClass="orderinfo-overview-mark-right">
					</asp:Label>
					<div class="clear"></div>
				</div>
				<div class="orderinfo-overview-goodsoffer">
					<span class="orderinfo-overview-mark">优惠：</span>
					<asp:Label ID="Label5" runat="server" Text="Label" CssClass="orderinfo-overview-mark-right">
					</asp:Label>
					<div class="clear"></div>
				</div>
			</div>
			<div class="orderinfo-overview">
				<div class="orderinfo-overview-price">
					<span class="orderinfo-overview-mark">应付总额：</span>
					<asp:Label ID="Label3" runat="server" Text="Label" Font-Size="18px" ForeColor="Red"
						CssClass="orderinfo-overview-mark-right"></asp:Label>
					<div class="clear"></div>
				</div>
				<div>
					<asp:DataList ID="DataList_Address_Selected" runat="server" RepeatLayout="Flow"
						RepeatDirection="Horizontal" RepeatColumns="1">
						<ItemTemplate>
							<asp:Label ID="DataList_Address_Selected_Address_Name" CssClass="AddressInfo" runat="server"
								Text='<%# Eval("RealName") %>' />
							<asp:Label ID="DataList_Address_Selected_Address_Address" CssClass="AddressInfo"
								runat="server" Text='<%# Eval("Address") %>' />
							<asp:Label ID="DataList_Address_Selected_Address_Phone" CssClass="AddressInfo"
								runat="server" Text='<%# Eval("PhoneNumber") %>' />
						</ItemTemplate>
					</asp:DataList>
				</div>
			</div>
			<asp:Button ID="Button1" runat="server" CssClass="settltment_btn" Text="结算" OnClick="Button1_Click" />
			<div class="clear"></div>
		</div>
	</div>
</asp:Content>
