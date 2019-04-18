<%@ Page Title="首页_B2CDemo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B2C_NetShop._Default" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HalfPageContentPlaceHolder" runat="server">
	<style>
		#div_middle {
			float: left;
			width: 760px;
			height: 480px;
			margin: 2px 5px;
			/*border: 1px red solid;*/
		}

		#box-keleyi-com {
			margin: 0 auto;
		}

		#div_right { /*右侧功能区*/
			float: left;
			width: 190px;
			height: 480px;
			margin: 2px;
			/*border: 1px red solid;*/
		}

		#user_info_container { /*用户容器*/
			/*border: 1px red solid;*/
			padding: 0px 15px;
			height: 90px;
			border-top: 1px #eaeaea solid;
			border-bottom: 1px #eaeaea solid;
		}

		#user_img { /*用户头像容器*/
			/*border: 1px red solid;*/
			margin: 20px 0px 0px 0px;
			float: left;
			width: 50px;
			height: 50px;
			text-align: center;
		}

		#user_info_container > #user_info { /*用户信息容器*/
			/*border: 1px red solid;*/
			float: left;
			height: 50px;
			width: 102px;
			margin-top: 20px;
			text-align: center;
			font-size: 15px;
		}

		.clear {
			clear: both;
		}
	</style>
	<link href="../Content/Default/keleyiimagebox.css" type="text/css" rel="Stylesheet" />
	<script src="../Content/Default/keleyiimagebox.js" type="text/javascript"></script>
	<script type="text/javascript">
		window.onload = function () {
			var runimg = new runImg();
			runimg.count = 4;
			runimg.imgurl = [
				"<img src=\"../img/DefaultImg/1.png\"/>",
				"<img src=\"../img/DefaultImg/2.png\"/>",
				"<img src=\"../img/DefaultImg/3.png\"/>",
				"<img src=\"../img/DefaultImg/2.png\"/>"];
			runimg.info("#box-keleyi-com");
			runimg.action("#box-keleyi-com");
		}
	</script>
	<div>
		<div id="div_middle">
				<div id="box-keleyi-com">
					<%--图片轮播展示功能来自：柯乐义 2013 http://keleyi.com--%> 
					<%--图片大小为758*480--%>
				</div>
			</div>
			<div id="div_right">
				<div id="user_info_container">
					<div id="user_img">
						<a href="User/Info.aspx" target="_blank">
							<img id="" src="Account/UserImg/DefaultUserImg.png" style="width: 50px; height: 50px"></a>
					</div>
					<div id="user_info">
						<div id="user_info_name">
							<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						</div>
						<div id="user_info_btn">
							<asp:HyperLink ID="HyperLink1" runat="server">HL1</asp:HyperLink>
							<asp:HyperLink ID="HyperLink2" runat="server">HL2</asp:HyperLink>
						</div>
					</div>
					<div class="div_clear"></div>
				</div>
			</div>
			<div class="div_clear"></div>
	</div>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<style>
		#footer {/*推荐位容器*/
			width: 1170px;
			height: 160px;
			margin: 0 auto;
			margin-top: 20px;
			/*border: 1px red solid;*/
		}
			#footer_1st, #footer_2nd, #footer_3rd {/*三个推荐栏目容器*/
				padding-top:30px;
				padding-left: 90px;
				width: 387px;
				height:157px;
				float: left;
			}
			#footer_1st, #footer_2nd {
				border-right: 1px #eaeaea solid
			}
		.footer_type,.footer_btn{/*推荐栏目说明和按钮容器*/
			float:left;
			height:157px;
			/*border: 1px red solid;*/
		}
		.footer_btn{/*推荐栏目按钮容器*/
			/*border: 1px red solid;*/
			padding-left:40px;
			width:120px;
			height:157px;
		}
		.footer_btn>a{/*推荐位按钮样式，使用a代替按钮*/
			height:60px;
			width:70px;
			margin-top:20px;
			text-align:center;
			padding-top:18px;
		}
	</style>

		<div id="footer">
			<div id="footer_1st">
				<div class="footer_type">
					<h2>商城精选</h2>
					<p>精选图书，值得一看</p>
				</div>
				<div class="footer_btn"><a class="btn btn-default" href="Goods/refinement.aspx">前往 &raquo;</a></div>
				<div class="div_clear"></div>
			</div>
			<div id="footer_2nd">
				<div class="footer_type">
					<h2>商城热卖</h2>
					<p>人气图书，每天更新</p>
				</div>
				<div class="footer_btn"><a class="btn btn-default" href="Goods/hot.aspx">前往 &raquo;</a></div>
				<div class="div_clear"></div>
			</div>
			<div id="footer_3rd">
				<div class="footer_type">
					<h2>商城折扣</h2>
					<p>折扣图书，低至一折</p>
				</div>
				<div class="footer_btn"><a class="btn btn-default" href="Goods/discount.aspx">前往 &raquo;</a></div>
				<div class="div_clear"></div>
			</div>
			<div class="div_clear"></div>
		</div>
</asp:Content>
