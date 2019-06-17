<%@ Page Title="" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="B2C_NetShop.Manage.main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link href="style/main-style.css" rel="stylesheet" />
	<h2 style="display: none;">欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label></h2>
	<div id="div_content" class="auto-style1">
		<div id="left-sidebar">
			<ul>
				<li>
					<asp:HyperLink ID="hylIconPersonalInfo" runat="server" CssClass="icon-a">
						<asp:Image ID="imgIcon" runat="server"  ImageAlign="Middle" ImageUrl="~/Account/UserImg/DefaultUserImg.png" CssClass="icon" />
					</asp:HyperLink></li>
				<li>
					<asp:Button ID="Button_Default" runat="server" Text="欢迎" CssClass="btn-link" OnClick="Button_Default_Click" />
					<i class="glyphicon glyphicon-user"></i>
				</li>
				<li>
					<asp:Button ID="Button_RootUser" runat="server" Text="管理员管理" CssClass="btn-link" OnClick="Button_RootUser_Click" />
					<i class="glyphicon glyphicon-eye-open"></i>
				</li>
				<li>
					<asp:Button ID="Button1" runat="server" Text="用户管理" CssClass="btn-link" OnClick="Button1_Click" />

					<i class="glyphicon glyphicon-barcode"></i>

				</li>
				<li>
					<asp:Button ID="Button_Goods" runat="server" Text="图书管理" CssClass="btn-link" OnClick="Button_Goods_Click" />
					<i class="glyphicon glyphicon-eye-open"></i>
				</li>
				<li>
					<asp:Button ID="Button_Exit" runat="server" Text="退出" CssClass="btn-link" />
					<i class="glyphicon glyphicon-home"></i>
				</li>

			</ul>
		</div>
		<div id="right-content">
			<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
				<asp:View ID="View_Main" runat="server">
					<div style="text-align: center; width: 100%; height: 400px; display: block">
						欢迎页面
					</div>
				</asp:View>
				<asp:View ID="View_RootUser" runat="server">
					<div style="width: 100%;">
						<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="100%">
							<AlternatingRowStyle BackColor="#F7F7F7" />
							<Columns>
								<asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID" />
								<asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
								<asp:BoundField DataField="Money" HeaderText="Money" SortExpression="Money" />
								<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
								<asp:TemplateField>
									<ItemTemplate>
										<asp:Button ID="level_user" runat="server" Text="降权" Visible="true" OnClick="level_user_Click"
											CommandArgument="<%# Container.DataItemIndex %>" />
									</ItemTemplate>
								</asp:TemplateField>
							</Columns>
							<FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
							<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
							<PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
							<RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
							<SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
							<SortedAscendingCellStyle BackColor="#F4F4FD" />
							<SortedAscendingHeaderStyle BackColor="#5A4C9D" />
							<SortedDescendingCellStyle BackColor="#D8D8F0" />
							<SortedDescendingHeaderStyle BackColor="#3E3277" />
						</asp:GridView>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
							DeleteCommand="DELETE FROM [User_Info] WHERE [UID] = @UID"
							InsertCommand="INSERT INTO [User_Info] ([UID], [NickName], [Money], [UserType]) VALUES (@UID, @NickName, @Money, @UserType)"
							SelectCommand="SELECT * FROM [User_Info] WHERE ([UserType] &gt;= @UserType)"
							UpdateCommand="UPDATE [User_Info] SET [NickName] = @NickName, [Money] = @Money WHERE [UID] = @UID">
							<DeleteParameters>
								<asp:Parameter Name="UID" Type="String" />
							</DeleteParameters>
							<InsertParameters>
								<asp:Parameter Name="UID" Type="String" />
								<asp:Parameter Name="NickName" Type="String" />
								<asp:Parameter Name="Money" Type="Decimal" />
								<asp:Parameter Name="UserType" Type="Int32" />
							</InsertParameters>
							<SelectParameters>
								<asp:Parameter DefaultValue="2" Name="UserType" Type="Int32" />
							</SelectParameters>
							<UpdateParameters>
								<asp:Parameter Name="ID" Type="Int32" />
								<asp:Parameter Name="NickName" Type="String" />
								<asp:Parameter Name="Money" Type="Decimal" />
								<asp:Parameter Name="UserType" Type="Int32" />
								<asp:Parameter Name="UID" Type="String" />
							</UpdateParameters>
						</asp:SqlDataSource>
					</div>
				</asp:View>
				<asp:View ID="View_User" runat="server">
					<div style="width: 100%;">
						<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UID" DataSourceID="SqlDataSource2" GridLines="Horizontal" Width="100%">
							<AlternatingRowStyle BackColor="#F7F7F7" />
							<Columns>
								<asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID" />
								<asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
								<asp:BoundField DataField="Money" HeaderText="Money" SortExpression="Money" />
								<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
								<asp:TemplateField>
									<ItemTemplate>
										<asp:Button ID="level_root" runat="server" Text="提权" Visible="true" OnClick="level_root_Click"
											CommandArgument="<%# Container.DataItemIndex %>" />
									</ItemTemplate>
								</asp:TemplateField>
							</Columns>
							<FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
							<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
							<PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
							<RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
							<SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
							<SortedAscendingCellStyle BackColor="#F4F4FD" />
							<SortedAscendingHeaderStyle BackColor="#5A4C9D" />
							<SortedDescendingCellStyle BackColor="#D8D8F0" />
							<SortedDescendingHeaderStyle BackColor="#3E3277" />
						</asp:GridView>
						<asp:SqlDataSource ID="SqlDataSource2" runat="server"
							ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
							DeleteCommand="DELETE FROM [User_Info] WHERE [UID] = @UID"
							InsertCommand="INSERT INTO [User_Info] ([UID], [NickName], [Money], [UserType]) VALUES (@UID, @NickName, @Money, @UserType)"
							SelectCommand="SELECT * FROM [User_Info] WHERE ([UserType] = @UserType)"
							UpdateCommand="UPDATE [User_Info] SET [NickName] = @NickName, [Money] = @Money WHERE [UID] = @UID">
							<DeleteParameters>
								<asp:Parameter Name="UID" Type="String" />
							</DeleteParameters>
							<InsertParameters>
								<asp:Parameter Name="UID" Type="String" />
								<asp:Parameter Name="NickName" Type="String" />
								<asp:Parameter Name="Money" Type="Decimal" />
								<asp:Parameter Name="UserType" Type="Int32" />
							</InsertParameters>
							<SelectParameters>
								<asp:Parameter DefaultValue="1" Name="UserType" Type="Int32" />
							</SelectParameters>
							<UpdateParameters>
								<asp:Parameter Name="ID" Type="Int32" />
								<asp:Parameter Name="NickName" Type="String" />
								<asp:Parameter Name="Money" Type="Decimal" />
								<asp:Parameter Name="UserType" Type="Int32" />
								<asp:Parameter Name="UID" Type="String" />
							</UpdateParameters>
						</asp:SqlDataSource>
					</div>
				</asp:View>
				<asp:View ID="View_Goods" runat="server">
					<div style="width: 100%;">
						<asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="100%" PageSize="8">
							<AlternatingRowStyle BackColor="White" />
							<Columns>
								<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
								<asp:BoundField DataField="ClassID" HeaderText="ClassID" SortExpression="ClassID" />
								<asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
								<asp:BoundField DataField="BookIntroduce" HeaderText="BookIntroduce" SortExpression="BookIntroduce" />
								<asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
								<asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
								<asp:BoundField DataField="MarketPrice" HeaderText="MarketPrice" SortExpression="MarketPrice" />
							</Columns>
							<EditRowStyle BackColor="#2461BF" />
							<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
							<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
							<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
							<RowStyle BackColor="#EFF3FB" />
							<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
							<SortedAscendingCellStyle BackColor="#F5F7FB" />
							<SortedAscendingHeaderStyle BackColor="#6D95E1" />
							<SortedDescendingCellStyle BackColor="#E9EBEF" />
							<SortedDescendingHeaderStyle BackColor="#4870BE" />
						</asp:GridView>
						<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
							DeleteCommand="DELETE FROM [Goods_Info] WHERE [BookID] = @BookID"
							SelectCommand="SELECT * FROM [Goods_Info] ORDER BY [ClassID], [BookID]"
							UpdateCommand="UPDATE [Goods_Info] SET [ClassID] = @ClassID, [BookName] = @BookName, [BookIntroduce] = @BookIntroduce, 
                                [Author] = @Author, [Company] = @Company, [MarketPrice] = @MarketPrice, [HotPrice] = @MarketPrice, [Isrefinement] = 0, 
                                [IsHot] = 0, [IsDiscount] = 0 WHERE [BookID] = @BookID">
							<DeleteParameters>
								<asp:Parameter Name="BookID" Type="Int32" />
							</DeleteParameters>
							<InsertParameters>
								<asp:Parameter Name="ClassID" Type="Int32" />
								<asp:Parameter Name="BookName" Type="String" />
								<asp:Parameter Name="BookIntroduce" Type="String" />
								<asp:Parameter Name="Author" Type="String" />
								<asp:Parameter Name="Company" Type="String" />
								<asp:Parameter Name="MarketPrice" Type="Double" />
								<asp:Parameter Name="HotPrice" Type="Double" />
								<asp:Parameter Name="Isrefinement" Type="Boolean" />
								<asp:Parameter Name="IsHot" Type="Boolean" />
								<asp:Parameter Name="IsDiscount" Type="Boolean" />
								<asp:Parameter Name="LoadDate" Type="DateTime" />
							</InsertParameters>
							<UpdateParameters>
								<asp:Parameter Name="ClassID" Type="Int32" />
								<asp:Parameter Name="BookName" Type="String" />
								<asp:Parameter Name="BookIntroduce" Type="String" />
								<asp:Parameter Name="Author" Type="String" />
								<asp:Parameter Name="Company" Type="String" />
								<asp:Parameter Name="MarketPrice" Type="Double" />
								<asp:Parameter Name="HotPrice" Type="Double" />
								<asp:Parameter Name="Isrefinement" Type="Boolean" />
								<asp:Parameter Name="IsHot" Type="Boolean" />
								<asp:Parameter Name="IsDiscount" Type="Boolean" />
								<asp:Parameter Name="LoadDate" Type="DateTime" />
								<asp:Parameter Name="BookID" Type="Int32" />
							</UpdateParameters>
						</asp:SqlDataSource>
					</div>
					<div style="text-align: right"><a href="AddGoods.aspx">新增图书信息点此</a></div>
				</asp:View>
			</asp:MultiView>
		</div>
		<div class="clear" id="div_clr"></div>
	</div>
</asp:Content>
