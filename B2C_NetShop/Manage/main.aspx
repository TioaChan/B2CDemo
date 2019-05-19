<%@ Page Title="" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="B2C_NetShop.Manage.main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<style>
		body {
			padding: 0px;
		}

		footer, hr {
			display: none;
		}

		.container {
			width: 100%;
		}

		.navbar, .aspNetHidden, .aspNetHidden {
			display: none;
		}

		#div_content {
			margin: 0px;
		}

		#div_left {
			float: left;
			display: block;
			width: 15%;
			height: 800px;
			text-align: center;
		}

		#div_left {
			float: left;
			display: block;
			width: 247px;
			min-height: 100%;
			font-size: 15px;
		}

			#div_left ul { /* 左导航条 */
				padding: 0px 13px;
				margin: 0px;
				list-style: none;
				min-height: 1380px;
				background: -webkit-linear-gradient(0deg, #690089, #F70054); /* Safari 5.1 - 6.0 */
				background: -o-linear-gradient(0deg, #690089, #F70054); /* Opera 11.1 - 12.0 */
				background: -moz-linear-gradient(0deg, #690089, #F70054); /* Firefox 3.6 - 15 */
				background: linear-gradient(0deg, #690089, #F70054); /* 标准的语法（必须放在最后） */
			}

				#div_left ul li {
					padding: 10px;
					width: 100%;
					-webkit-transition-duration: .25s;
					-moz-transition-duration: .25s;
					-o-transition-duration: .25s;
					transition-duration: .25s;
					border-bottom: 1px solid rgba(255, 255, 255, .4);
				}

					#div_left ul li:hover {
						border-bottom: 1px solid #fff;
						background: rgba(255,255,255,0.2);
					}

					#div_left ul li input {
						font-size: 13px;
						text-align: left;
						width: 92%;
						color: rgba(255,255,255,0.7);
						outline:none;
					}

			#div_left p {
				margin: 0px;
				font-size: 13px;
				text-align: center;
				color: rgba(255,255,255,0.7);
			}

				#div_left ul li input:hover, #div_left p:hover {
					text-decoration: none;
					color: #fff;
				}

			#div_left ul li i {
				height: 19px;
				line-height: 19px;
				color: #fff;
				float: right;
			}


		#div_right {
			display: block;
			float: left;
			width: calc(100% - 247px);
			height: auto;
			text-align: center;
		}

		.clear {
			clear: both;
		}

		.auto-style1 {
			margin: 0 auto;
			text-align: center;
			width: 100%;
			height: auto;
		}

		.div_button {
			text-align: center;
		}


		.mynav-bar {
			display: block !important;
			margin: 0px;
			background: #fff;
			-webkit-box-shadow: 0px 8px 74px rgba(0, 0, 0, 0.15);
			-moz-box-shadow: 0px 8px 74px rgba(0, 0, 0, 0.15);
			box-shadow: 0px 8px 74px rgba(0, 0, 0, 0.15);
		}

			.mynav-bar span {
				margin-right: 15px;
			}

			.mynav-bar a {
				color: #000 !important;
			}


			.mynav-bar li:hover {
				-webkit-transition-duration: .25s;
				-moz-transition-duration: .25s;
				-o-transition-duration: .25s;
				transition-duration: .25s;
				background: #e7e7e7;
			}


			.mynav-bar .dropdown-menu {
				-webkit-transition-duration: .25s !important;
				-moz-transition-duration: .25s !important;
				-o-transition-duration: .25s !important;
				transition-duration: .25s !important;
			}

		.icon {
			border-radius: 100%;
			vertical-align: middle;
			margin-right: 1rem;
		}

		.icon-a {
			padding: 0px !important;
		}
	</style>
	<h2 style="display: none;" >欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label></h2>
	<div id="div_content" class="auto-style1">
		<nav class="navbar navbar-default mynav-bar" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="../Default.aspx">B2CDemo</a>
				</div>
				<div>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<asp:HyperLink ID="hylIconPersonalInfo" runat="server" CssClass="icon-a">
								<asp:Image ID="imgIcon" runat="server" Height="50px" Width="50px" ImageAlign="Middle" ImageUrl="~/Account/UserImg/DefaultUserImg.png" CssClass="icon" />
							</asp:HyperLink></li>
						<li class="active">
							<a href="../Default.aspx"><span class="glyphicon glyphicon-home"></span>主页</a>
						</li>
						<li><a href="../Contact.aspx"><span class="glyphicon glyphicon-phone-alt"></span>联系方式</a></li>
						<li>
							<asp:HyperLink ID="hylAdmin" runat="server"><span class="glyphicon glyphicon-lock"></span>后台管理</asp:HyperLink>
						</li>
						<li class="dropdown mydropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">设置
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu mymenu">
								<li>
									<asp:HyperLink ID="hylPersonalInfo" runat="server"><span class="glyphicon glyphicon-user"></span>个人信息</asp:HyperLink></li>
								<li class="divider"></li>
								<li><a href="#">退出</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>


		<div id="div_left">
			<ul>
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
		<div id="div_right">
			<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
				<asp:View ID="View_Main" runat="server">
					<br />
					<div style="text-align: center; width: 100%; height: 400px; display: block">
						欢迎页面
					</div>
				</asp:View>
				<asp:View ID="View_RootUser" runat="server">
					<br />
					<div style="width: 100%; margin-left: 30px; margin-right: 20px;">
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
					<br />
					<div style="width: 100%; margin-left: 30px; margin-right: 20px;">
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
					<br />
					<div style="width: 100%; margin-left: 30px; margin-right: 20px;">
						<div style="text-align: right"><a href="AddGoods.aspx">新增图书信息点此</a></div>
						<br />
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
					</div>

				</asp:View>
			</asp:MultiView>
		</div>
		<div class="clear" id="div_clr"></div>
	</div>
</asp:Content>
