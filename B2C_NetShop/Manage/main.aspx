<%@ Page Title="" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="B2C_NetShop.Manage.main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link href="style/main-style.css" rel="stylesheet" />
	<script src="http://code.highcharts.com/highcharts.js"></script>
	<h2 style="display: none;">欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label></h2>
	<div id="div_content" class="auto-style1">
		<div id="left-sidebar">
			<ul>
				<li>
					<asp:HyperLink ID="hylIconPersonalInfo" runat="server" CssClass="icon-a">
						<asp:Image ID="imgIcon" runat="server" ImageAlign="Middle" ImageUrl="~/Account/UserImg/DefaultUserImg.png" CssClass="icon" />
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
					<asp:Button ID="Button_Order" runat="server" Text="订单管理" CssClass="btn-link" OnClick="Button_Order_Click" />
					<i class="glyphicon glyphicon glyphicon-barcode"></i>
				</li>
				<li>
					<asp:Button ID="Button2" runat="server" Text="公告管理" CssClass="btn-link" />
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
				<div class="content-wrapper">
									<div class="row">
										<div class="col-md-4 stretch-card grid-margin">
											<div class="card bg-gradient-warning text-white">
												<div class="card-body">
													<h4 class="font-weight-normal mb-3">欢迎你！</h4>
													<h2 class="font-weight-normal mb-5">
														<asp:Label ID="Label_UID2" runat="server" Text="Label_UID"></asp:Label></h2>
													<p class="card-text">用户类型：<asp:Label ID="Label_UserType" runat="server" Text="Label_UserType">管理员</asp:Label></p>
												</div>
											</div>
										</div>
										<div class="col-md-4 stretch-card grid-margin">
											<div class="card bg-gradient-info text-white">
												<div class="card-body">
													<h4 class="font-weight-normal mb-3">今日销售</h4>
													<h2 class="font-weight-normal mb-5"><asp:Label ID="Label_Money" runat="server" Text="已成交 50 单"></asp:Label></h2>
													<p class="card-text">Increased by 10%</p>
												</div>
											</div>
										</div>
										<div class="col-md-4 stretch-card grid-margin">
											<div class="card bg-gradient-success text-white">
												<div class="card-body">
													<h4 class="font-weight-normal mb-3">今日访问量</h4>
													<h2 class="font-weight-normal mb-5">2333</h2>
													<p class="card-text">Increased by 5%</p>
												</div>
											</div>
										</div>
									</div>
									
								</div>
					<div id="chart">
						<div id="chart-line" style="width: 550px; height: 400px; margin: 0 auto"></div>
						<script>
							$(document).ready(function () {
								var chart = {
									type: 'bar'
								};
								var title = {
									text: '销量反向图'
								};
								var xAxis = {
									categories: ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
								};
								var credits = {
									enabled: false
								};
								var series = [{
									name: 'John',
									data: [5, 3, 4, 7, 2]
								}, {
									name: 'Jane',
									data: [2, -2, -3, 2, 1]
								}, {
									name: 'Joe',
									data: [3, 4, 4, -2, 5]
								}
								];

								var json = {};
								json.chart = chart;
								json.title = title;
								json.xAxis = xAxis;
								json.credits = credits;
								json.series = series;
								$('#chart-line').highcharts(json);

							});
						</script>
						<div id="chart-column" style="width: 550px; height: 400px; margin: 0 auto"></div>
						<script>
							$(document).ready(function () {
								var chart = {
									type: 'column'
								};
								var title = {
									text: '销量柱状图'
								};
								var subtitle = {
									text: 'Source: runoob.com'
								};
								var xAxis = {
									categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
									crosshair: true
								};
								var yAxis = {
									min: 0,
									title: {
										text: '降雨量 (mm)'
									}
								};
								var tooltip = {
									headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
									pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
										'<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
									footerFormat: '</table>',
									shared: true,
									useHTML: true
								};
								var plotOptions = {
									column: {
										pointPadding: 0.2,
										borderWidth: 0
									}
								};
								var credits = {
									enabled: false
								};

								var series = [{
									name: 'Tokyo',
									data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
								}, {
									name: 'New York',
									data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]
								}, {
									name: 'London',
									data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]
								}, {
									name: 'Berlin',
									data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]
								}];

								var json = {};
								json.chart = chart;
								json.title = title;
								json.subtitle = subtitle;
								json.tooltip = tooltip;
								json.xAxis = xAxis;
								json.yAxis = yAxis;
								json.series = series;
								json.plotOptions = plotOptions;
								json.credits = credits;
								$('#chart-column').highcharts(json);

							});
						</script>
						<div id="chart-quxian" style="width: 550px; height: 400px; margin: 0 auto"></div>
<script >
$(document).ready(function() {
   var title = {
      text: '销量曲线图'   
   };
   var subtitle = {
      text: 'Source: '
   };
   var xAxis = {
      categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
         'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
   };
   var yAxis = {
      title: {
         text: 'Temperature (\xB0C)'
      },
      plotLines: [{
         value: 0,
         width: 1,
         color: '#808080'
      }]
   };   

   var tooltip = {
      valueSuffix: '\xB0C'
   }

   var legend = {
      layout: 'vertical',
      align: 'right',
      verticalAlign: 'middle',
      borderWidth: 0
   };

   var series =  [
      {
         name: 'Tokyo',
         data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2,
            26.5, 23.3, 18.3, 13.9, 9.6]
      }, 
      {
         name: 'New York',
         data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8,
            24.1, 20.1, 14.1, 8.6, 2.5]
      },
      {
         name: 'London',
         data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 
            16.6, 14.2, 10.3, 6.6, 4.8]
      }
   ];

   var json = {};

   json.title = title;
   json.subtitle = subtitle;
   json.xAxis = xAxis;
   json.yAxis = yAxis;
   json.tooltip = tooltip;
   json.legend = legend;
   json.series = series;

   $('#chart-quxian').highcharts(json);
});
</script>
					</div>



				</asp:View>
				<asp:View ID="View_RootUser" runat="server">
					<div style="width: 100%;">
						<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="admin-table" DataKeyNames="UID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="100%">
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
						<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="admin-table" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UID" DataSourceID="SqlDataSource2" GridLines="Horizontal" Width="100%">
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
						<asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookID" DataSourceID="SqlDataSource3" GridLines="None" Width="100%" PageSize="25" CssClass="admin-table">
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
				<asp:View ID="View_Order" runat="server">
					<asp:DataList ID="DataList_Order" runat="server" OnUpdateCommand="DataList_Order_UpdateCommand" CssClass="admin-table" Width="100%">
						<ItemTemplate>
							<table>
								<tr>
									<td><asp:Label ID="Label_Order_ID" runat="server" Text='<%# Eval("order_id") %>'></asp:Label></td>
									<td>
										<asp:Label ID="Label_Order_UID" runat="server" Text='<%# Eval("UID") %>'></asp:Label>
									</td>
									<td>
										<asp:Label ID="Label_Order_RealName" runat="server" Text='<%# Eval("RealName") %>'></asp:Label>
									</td>
									<td>
										<asp:Label ID="Label_Order_PostCode" runat="server" Text='<%# Eval("PostCode") %>'></asp:Label>
									</td>
									<td>
										<asp:Label ID="Label_Order_Address" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
									</td>	
									<td>
										<asp:Label ID="Label_Order_PhoneNumber" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
									</td>
									<td>
										<asp:Label ID="Label_Order_Price" runat="server" Text='<%# Eval("order_price") %>'></asp:Label>
									</td>
									<td>
										
										
										<asp:Label ID="Label_Order_isSend" runat="server" Text='<%# Convert.ToString(Eval("isSend")) == "False" ? "未发货":"已发货" %>'></asp:Label>
									</td>
									<td>
										<asp:Label ID="Label_Order_isPay" runat="server" Text='<%# Convert.ToString(Eval("isPay")) == "False" ? "未支付":"已支付" %>'></asp:Label>
									</td>
									<td>
										<asp:Button ID="Button_Order_SetSend" runat="server" Text="设为已发货" CommandArgument='<%# Eval("order_id") %>' CommandName="Update" />
									</td>
								</tr>

							</table>
							
							
						</ItemTemplate>
					</asp:DataList>
				</asp:View>
			</asp:MultiView>
		</div>
		<div class="clear" id="div_clr"></div>
	</div>
</asp:Content>
