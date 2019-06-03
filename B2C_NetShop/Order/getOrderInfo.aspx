<%@ Page Title="提交订单" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="getOrderInfo.aspx.cs" Inherits="B2C_NetShop.Order.getOrderInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link href="css/getOrderInfo.css" rel="stylesheet" />
	<div id="content_main" runat="server">
		<div id="div_title">
			填写并核对订单信息
		</div>
		<div id="order_info">
			<div id="info1">
				<div>
					<div id="info1_1">
						收货人信息：
					</div>
					<div id="info1_2"></div>
					<div class="clear"></div>
				</div>
				<div id="info1_detail">
					<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="90%">
						<ItemTemplate>
							&nbsp;<asp:Label ID="RealNameLabel" runat="server" Text='<%# Eval("RealName") %>' />
							&nbsp;&nbsp;
					<asp:Label ID="PostCodeLabel" runat="server" Text='<%# Eval("PostCode") %>' />
							&nbsp;
					<asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
							&nbsp;
					<asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
						</ItemTemplate>
					</asp:DataList>
					<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
						SelectCommand="SELECT [RealName], [PostCode], [Address], [PhoneNumber] FROM [User_Address] WHERE
					([UID] = @UID)">
						<SelectParameters>
							<asp:SessionParameter Name="UID" SessionField="UID" Type="String" />
						</SelectParameters>
					</asp:SqlDataSource>
				</div>
			</div>
			<div id="info2">
				<div>
					<div id="info2_1">
						支付方式：
					</div>
				</div>
				<div id="info2_detail">
					<asp:RadioButton ID="RadioButton1" runat="server" Text="余额支付" Font-Names="Tahoma"
						Font-Size="12px" />
				</div>
			</div>
			<div id="info3">
				<div>
					<div id="info3_1">
						送货清单：
					</div>
				</div>
				<div id="info3_detail">
					<asp:RadioButton ID="RadioButton2" runat="server" Font-Names="Tahoma" Font-Size="12px"
						Text="EMS经济快递" />
				</div>
				<div>
					<div id="Gcart_previwe" runat="server">
						<asp:GridView ID="gvShopCart" DataKeyNames="BookID" runat="server" AutoGenerateColumns="False"
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
				</div>
			</div>
			<div id="info4">
				<div>
					<div id="info4_1">
						发票信息：
					</div>
				</div>
				<div id="info4_detail">
					<asp:RadioButton ID="RadioButton3" runat="server" Font-Names="Tahoma" Font-Size="12px"
						Text="纸质普通发票" />
				</div>
			</div>
		</div>
		<div id="order_money">
			<div style="text-align: right; margin-top: 10px; margin-bottom: 10px;">
				<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>件商品，总额：<asp:Label ID="Label1"
					runat="server" Text="Label"></asp:Label>
			</div>
			<div style="">
				<div style="text-align: right; margin-top: 10px; margin-bottom: 10px;">
					应付总额：<asp:Label ID="Label3"
						runat="server" Text="Label" Font-Size="18px" ForeColor="Red"></asp:Label>
				</div>
				<div>
					<div style="text-align: right; margin-top: 10px; margin-bottom: 10px; display: block; float: right">
						<asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1">
							<ItemTemplate>
								寄送至：<asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
								&nbsp; 收货人：
						<asp:Label ID="RealNameLabel" runat="server" Text='<%# Eval("RealName") %>' />
								&nbsp;
						<asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
							</ItemTemplate>
						</asp:DataList>
					</div>
					<div style="float: left"><a href="../Goods/cart.aspx">返回购物车查看</a></div>
					<div style="clear: both"></div>
				</div>
				<div style="margin: 10px; padding: 10px; text-align: right;">
					<asp:Button ID="Button1" runat="server" CssClass="settltment_btn" Text="结算"
						OnClick="Button1_Click" />
				</div>
			</div>
		</div>
	</div>
</asp:Content>
