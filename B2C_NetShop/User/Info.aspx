<%@ Page Title="个人信息" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="B2C_NetShop.User.Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<link href="css/info-style.css" rel="stylesheet" />
	<script src="http://code.highcharts.com/highcharts.js"></script>
	<h2 style="background: red; display: none; color: white; padding: 10px;">欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label></h2>
	<div id="main-container">

		<div class="main-content">
			<div id="side-bar">
				<ul>
					<li>
						<asp:HyperLink ID="hylIconPersonalInfo" runat="server" CssClass="icon-a">
							<asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="~/Account/UserImg/DefaultUserImg.png" CssClass="icon" />
						</asp:HyperLink>
					</li>

					<li>
						<asp:Button ID="Button_TotalView" runat="server" Text="账户总览" CssClass="btn-link" OnClick="Button_TotalView_Click" />
						<i class="glyphicon glyphicon-user"></i>
					</li>
					<li>
						<asp:Button ID="Button_UserInfo" runat="server" Text="个人信息" CssClass="btn-link" OnClick="Button_UserInfo_Click" />
						<i class="glyphicon glyphicon-eye-open"></i>
					</li>
					<li>
						<asp:Button ID="Btn_Order" CssClass="btn-link" runat="server" Text="订单管理" OnClick="Btn_Order_Click" />
						<i class="glyphicon glyphicon-barcode"></i>
					</li>
					<li>
						<asp:Button ID="Button_UserImage" runat="server" Text="头像修改" CssClass="btn-link" OnClick="Button_UserImage_Click" />
						<i class="glyphicon glyphicon-eye-open"></i>
					</li>
					<li>
						<asp:Button ID="Button_Address" runat="server" Text="收货地址" CssClass="btn-link" OnClick="Button_Address_Click" />
						<i class="glyphicon glyphicon-home"></i>
					</li>
					<li>
						<asp:Button ID="Button_Security" runat="server" Text="安全设置" CssClass="btn-link" OnClick="Button_Security_Click" />
						<i class="glyphicon glyphicon-lock"></i>
					</li>
					<li>
						<asp:Button ID="Button_Analyze" runat="server" Text="表格分析" CssClass="btn-link" OnClick="Button_Analyze_Click" />
						<i class="glyphicon glyphicon-lock"></i>
					</li>
					<li>
						<div class="progress progress-striped active" style="height: 10px; margin-top: 30px;">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 40%;">
								<span class="sr-only">40% 完成</span>
							</div>
						</div>
						<p>当前已销售10</p>
					</li>
				</ul>
			</div>
			<div id="right-content">
				<asp:UpdatePanel ID="UpdatePanel1" runat="server">
					<ContentTemplate>
						<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
							<asp:View ID="View_TotalView" runat="server">
								<div class="content-wrapper">
									<div class="row">
										<div class="col-md-4 stretch-card grid-margin">
											<div class="card bg-gradient-warning text-white">
												<div class="card-body">
													<h4 class="font-weight-normal mb-3">欢迎你！</h4>
													<h2 class="font-weight-normal mb-5">
														<asp:Label ID="Label_UID2" runat="server" Text="Label_UID"></asp:Label></h2>
													<p class="card-text">用户类型：<asp:Label ID="Label_UserType" runat="server" Text="Label_UserType"></asp:Label></p>
												</div>
											</div>
										</div>
										<div class="col-md-4 stretch-card grid-margin">
											<div class="card bg-gradient-info text-white">
												<div class="card-body">
													<h4 class="font-weight-normal mb-3">账户余额</h4>
													<h2 class="font-weight-normal mb-5">￥<asp:Label ID="Label_Money" runat="server" Text="Label_Money"></asp:Label></h2>
													<p class="card-text">Decreased by 10%</p>
												</div>
											</div>
										</div>
										<div class="col-md-4 stretch-card grid-margin">
											<div class="card bg-gradient-success text-white">
												<div class="card-body">
													<h4 class="font-weight-normal mb-3">账户积分</h4>
													<h2 class="font-weight-normal mb-5">955741235</h2>
													<p class="card-text">Increased by 5%</p>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="userinfo-wrapper">
											<asp:DataList ID="DataList2" runat="server" CssClass="asp_datalist_om">
												<HeaderTemplate>
													<table class="table table-hover">
														<tr>

															<th>订单ID</th>
															<th>产品图片</th>
															<th>产品名称</th>
															<th>订购时间</th>
															<th>订购价格</th>
															<th>订购状态</th>
														</tr>
													</table>
												</HeaderTemplate>
												<ItemTemplate>
													<table class="table table-hover">
														<tr>
															<td><a href="#"><%# Eval("order_id") %></a></td>
															<td><a href="<%# Eval("BookUrl") %>">
																<img width="100px" src="<%# Eval("picUrl") %>" alt="Alternate Text" />
															</a></td>
															<td><a href="#"><%# Eval("BookName") %></a></td>
															<td><span><%# Eval("order_date") %></span></td>
															<td><span><%# Eval("order_price") %></span></td>
															<td>
																<span>
																	<%# Eval("isPay") %>
																</span>
															</td>
														</tr>
													</table>
												</ItemTemplate>
											</asp:DataList>
										</div>
									</div>
								</div>
							</asp:View>
							<asp:View ID="View_UserInfo" runat="server">
								<div>
									<div class="card-body-new">
										<h4>修改信息</h4>
										<div class="form-group">
											<label>输入新昵称:</label>
											<br />
											<asp:TextBox ID="TextBox_NewNickName" runat="server" Width="250px"></asp:TextBox>
										</div>
										<asp:Button ID="Button_SetNewNickName" runat="server" Text=" 修 改 " CssClass="asp_button" OnClick="Button_SetNewNickName_Click" />
									</div>
								</div>
							</asp:View>
							<asp:View ID="View_Address" runat="server">
								<div class="card-body-new">
									<h4>收货地址管理</h4>
									<div>
										<p>已有收货地址</p>
										<div id="div_address">
											<asp:DataList ID="DataList_Address" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" OnUpdateCommand="DataList_Address_UpdateCommand" OnDeleteCommand="DataList_Address_DeleteCommand" OnEditCommand="DataList_Address_EditCommand">
												<ItemTemplate>
													<p class="receiver_name">
														<%# Eval("RealName") %>
													</p>
													<p class="receiver_address">
														<%# Eval("Address") %>
													</p>
													<p class="receiver_number">
														电话：<%# Eval("PhoneNumber") %></p>
													<p class="receiver_postcode">
														邮编：<%# Eval("PostCode") %></p>
													<span id="address-ctrl-panel">
														<asp:Button ID="Button1" runat="server" Text='<%# Eval("IsSelected").ToString()=="True"?"已设为默认":"设为默认" %>' CssClass="btn-ctrl" CommandArgument='<%# Eval("id") %>' CommandName="Update" Enabled='<%# Eval("IsSelected").ToString()=="True"? false:true %> ' />
														<asp:Button ID="Button2" runat="server" Text="修改" CssClass="btn-ctrl" CommandArgument='<%# Eval("id") %>' CommandName="Edit" />
														<asp:Button ID="Button3" runat="server" Text="删除" CssClass="btn-ctrl" CommandArgument='<%# Eval("id") %>' CommandName="Delete" />
													</span>
												</ItemTemplate>
											</asp:DataList>
											<span id="newaddress">
												<asp:Button ID="Button_SetNewAddress" CssClass="asp_button" runat="server" Text=" 添 加 " OnClick="Button_SetNewAddress_Click" />
											</span>
											<div class="clear"></div>
										</div>
									</div>
								</div>
							</asp:View>
							<asp:View ID="View_UpdateAddress" runat="server">
								<div class="card-body-new">
									<h4>
										<asp:Button ID="Button4" runat="server" Text="收货地址管理" OnClick="Button4_Click" CssClass="btn-ctrl" ForeColor="#0066FF" />&nbsp;>&nbsp;<asp:Label ID="AddressModalTitle" runat="server" Text="添加新地址"></asp:Label></h4>
									<div>
										<div>
											<asp:TextBox ID="TextBox_RealName" placeholder="真实姓名" runat="server"></asp:TextBox>
											<asp:TextBox ID="TextBox_PostCode" placeholder="邮政编码" runat="server"></asp:TextBox>
											<asp:TextBox ID="TextBox_PhoneNum" placeholder="电话号码" runat="server"></asp:TextBox>
											<asp:TextBox ID="TextBox_Address" placeholder="收货地址" runat="server" Height="80px" TextMode="MultiLine" Width="480px"></asp:TextBox>
											<asp:Button ID="AddressSubmitBtn" runat="server" Text="提交" CssClass="btn asp_button" OnClick="AddressSubmitBtn_Click" />
										</div>
									</div>
								</div>
							</asp:View>
							<asp:View ID="View_Security" runat="server">
								<div>
									<div>
										<div class="card-body-new">
											<h4>密码修改</h4>
											<div class="form-group">
												<label>原密码</label>
												<br />
												<asp:TextBox ID="TextBox_OldPwd" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
											</div>
											<div class="form-group">
												<label>密码</label>
												<br />
												<asp:TextBox ID="TextBox_NewPwd1" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
											</div>
											<div class="form-group">
												<label>确认密码</label>
												<br />
												<asp:TextBox ID="TextBox_NewPwd2" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
												<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次密码不一致" ForeColor="Red" ControlToCompare="TextBox_NewPwd1" ControlToValidate="TextBox_NewPwd2" Display="Dynamic"></asp:CompareValidator>
											</div>
											<asp:Button ID="Button_SetNewPWD" runat="server" Text=" 修 改 " CssClass="asp_button" OnClick="Button_SetNewPWD_Click" />
										</div>
									</div>
								</div>
								<br />
								<br />
								<br />
							</asp:View>
							<asp:View ID="View_UserImage" runat="server">
								<div class="card-body-new">
									<table border="0" style="width: 800px;">
										<tr>
											<td style="font-size: 18px;">头像修改</td>
										</tr>
										<tr>
											<td style="height: 20px;"></td>
										</tr>
										<tr>
											<td>
												<div>
													<asp:FileUpload ID="FileUpload1" runat="server" onchange="onFileChange(this);" accept=".png,.jpg,.jpeg" />

													<div class="clear"></div>
													<p style="padding-top: 10px; font-size: 12px;">仅支持JPG、PNG、JPEG、BMP格式，文件小于4M</p>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<asp:Image ID="Image2" runat="server" Height="320px" Width="320px" ImageUrl="~/User/ImagesUpload/DefaultImage.png" />
											</td>

										</tr>
										<tr>
											<td style="height: 20px;"></td>
										</tr>
										<tr>
											<td>
												<asp:Button ID="btn_setNewUserImg" runat="server" Text="保存" OnClick="setNewUserImg" CssClass="asp_button" />
												<%--									<asp:Button ID="setNewUserImg" runat="server" Text="保存" Width="100px" CssClass="asp_button" OnClick="setNewUserImg_Click" />--%>
											</td>
										</tr>
									</table>
								</div>
							</asp:View>
							<asp:View ID="View_Order" runat="server">
								<div class="content-wrapper">
									<div class="userinfo-wrapper">
										<asp:DataList ID="DataList1" runat="server" CssClass="asp_datalist_om">
											<HeaderTemplate>
												<table class="table table-hover">
													<tr>
														<th>订单ID</th>
														<th>订单时间</th>
														<th>订单价格</th>
														<th>付款状态</th>
													</tr>
												</table>
											</HeaderTemplate>
											<ItemTemplate>
												<table class="table table-hover">
													<tr>
														<td><a href="<%# Eval("order_url") %>"><%# Eval("order_id") %></a></td>
														<td><span><%# Eval("order_date") %></span></td>
														<td><span><%# Eval("order_price") %></span></td>
														<td>
															<span>
																<%# Eval("isPay") %>
															</span>
														</td>
													</tr>
												</table>
											</ItemTemplate>
										</asp:DataList>
									</div>
								</div>
							</asp:View>
							<asp:View ID="View_Analyze" runat="server">
								<div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div>
							</asp:View>
						</asp:MultiView>
					</ContentTemplate>
					<Triggers>
						<asp:AsyncPostBackTrigger ControlID="Button_Address" EventName="Click" />
						<asp:AsyncPostBackTrigger ControlID="Button_Security" EventName="Click" />
						<asp:AsyncPostBackTrigger ControlID="Button_UserInfo" EventName="Click" />
						<asp:AsyncPostBackTrigger ControlID="Button_TotalView" EventName="Click" />
						<asp:AsyncPostBackTrigger ControlID="Btn_Order" EventName="Click" />
						<asp:AsyncPostBackTrigger ControlID="Button_Analyze" EventName="Click" />
						<asp:PostBackTrigger ControlID="Button_UserImage" />
						<asp:PostBackTrigger ControlID="Button_SetNewNickName" />
						<asp:PostBackTrigger ControlID="btn_setNewUserImg" />
						<asp:PostBackTrigger ControlID="Button_SetNewPWD" />
						<asp:PostBackTrigger ControlID="DataList_Address" />
						<asp:PostBackTrigger ControlID="Button_SetNewAddress" />
						<asp:PostBackTrigger ControlID="AddressSubmitBtn" />
					</Triggers>
				</asp:UpdatePanel>
				<script type="text/javascript"> 

					function onFileChange(sender) {
						document.getElementById("MainContent_Image2").src = window.URL.createObjectURL(sender.files[0]);
					}
				</script>

			</div>
		</div>
		<div class="clear" id="div_clr">
		</div>
		<script>
			Sys.WebForms.PageRequestManager.getInstance().add_endRequest(init);
			function init() {
				var chart = {
					plotBackgroundColor: null,
					plotBorderWidth: null,
					plotShadow: false
				};
				var title = {
					text: '2014 年各浏览器市场占有比例'
				};
				var tooltip = {
					pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
				};
				var plotOptions = {
					pie: {
						allowPointSelect: true,
						cursor: 'pointer',
						dataLabels: {
							enabled: true,
							format: '<b>{point.name}%</b>: {point.percentage:.1f} %',
							style: {
								color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
							}
						}
					}
				};
				var series = [{
					type: 'pie',
					name: 'Browser share',
					data: [
						['Firefox', 45.0],
						['IE', 26.8],
						{
							name: 'Chrome',
							y: 12.8,
							sliced: true,
							selected: true
						},
						['Safari', 8.5],
						['Opera', 6.2],
						['Others', 0.7]
					]
				}];

				var json = {};
				json.chart = chart;
				json.title = title;
				json.tooltip = tooltip;
				json.series = series;
				json.plotOptions = plotOptions;
				$('#container').highcharts(json);
			}
		</script>
	</div>
</asp:Content>
