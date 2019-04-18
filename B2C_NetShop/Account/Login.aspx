<%@ Page Title="登录" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="B2C_NetShop.Account.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<style>
		div {
			margin: 1px;
		}

		#header {
			margin-top: 10px;
		}

		#container {
			height: 600px;
		}

		#content {
			clear: both;
		}

		#login_frame {
			float: right;
			width: 345px;
			height: 400px;
			border: 1px #A6B1C4 solid;
		}

			#login_frame > #titler {
				text-align: center;
				padding-top: 40px;
			}

		h3 {
			margin: 0px;
			padding: 0px;
		}

		#login_input {
			text-align: center;
		}

		.txt_input,.btn_login {
			margin-bottom: 10px;
			width: 300px;
			height: 40px;
			padding-left: 10px;

		}
		.btn_login{
			background-color:red;
			color:white;
			border:none;
		}
	</style>

	<div id="container">

		<div id="header">
			<p>欢迎登陆</p>
		</div>
		<div id="content">
			<!-- 登录框 -->
			<div id="login_frame">
				<div id="titler">
					<h3>账户登录</h3>
				</div>
				<div id="login_input">
					<br style="clear: both;" />
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_uid" ErrorMessage="*用户名不允许为空" ForeColor="Red"></asp:RequiredFieldValidator>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_pwd" ErrorMessage="*密码不允许为空" ForeColor="Red"></asp:RequiredFieldValidator>
					<div>
						<asp:TextBox CssClass="txt_input" ID="TextBox_uid" runat="server" placeholder="请输入账号"></asp:TextBox>
						<asp:TextBox CssClass="txt_input" ID="TextBox_pwd" runat="server" placeholder="请输入密码" TextMode="Password"></asp:TextBox>
					</div>
					<br />
					<asp:Button CssClass="btn_login" ID="Button1" runat="server" Text=" 登 录 " OnClick="Button1_Click1" BorderStyle="None" />
				</div>
			</div>

		</div>

	</div>
</asp:Content>
