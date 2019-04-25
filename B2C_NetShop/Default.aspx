﻿<%@ Page Title="首页_B2CDemo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B2C_NetShop._Default" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HalfPageContentPlaceHolder" runat="server">
    <style>

        body{
            background:#F4F4F4;
        }

        form{
            width:1180px;
            margin:0 auto;
        }

		#myCarousel {
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
			
            background:url(/img/DefaultImg/login_bc.png) no-repeat;
        }

		#user_img { /*用户头像容器*/
			/*border: 1px red solid;*/
			margin: 20px 0px 0px 0px;
			height: 50px;
            width:200px;
			text-align: center;
		}

		#user_info_container > #user_info { /*用户信息容器*/
			/*border: 1px red solid;*/
			height: 50px;
			width: 200px;
			text-align: center;
			font-size: 15px;
		}

        #user_info_btn{
            height:50px;
            text-align:center;
            margin-top:20px;
        }
            .user_info_btn_a{
                background:#FF0000;
                color:#fff;
                width:50px;
                -webkit-transition-duration: .25s;
	            -moz-transition-duration: .25s;
	            -o-transition-duration: .25s;
	            transition-duration: .25s;
                margin-left:5px;
                padding:3px 10px;
               

                border-radius:5px;
            }

            .user_info_btn_a:hover {
                background:#FF0000;
                color:#fff;
                width:50px;
                background-color: #444;
	            color: white;
	            box-shadow: 5px 5px 5px 5px rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.17);
            }

		.clear {
			clear: both;
		}
	</style>
	<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="../Content/Default/keleyiimagebox.css" type="text/css" rel="Stylesheet" />
	<script src="../Content/Default/keleyiimagebox.js" type="text/javascript"></script>
        
    




	       <div>
		        <div id="myCarousel" class="carousel slide">
	            <!-- 轮播（Carousel）指标 -->
	            <ol class="carousel-indicators">
		            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		            <li data-target="#myCarousel" data-slide-to="1"></li>
		            <li data-target="#myCarousel" data-slide-to="2"></li>
	            </ol>   
	            <!-- 轮播（Carousel）项目 -->
	            <div class="carousel-inner">
		            <div class="item active">
			            <img src="/img/DefaultImg/1.png" alt="First slide">
		            </div>
		            <div class="item">
			            <img src="/img/DefaultImg/2.png" alt="Second slide">
		            </div>
		            <div class="item">
			            <img src="/img/DefaultImg/3.png" alt="Third slide">
		            </div>
	            </div>
	            <!-- 轮播（Carousel）导航 -->
	            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		            <span class="sr-only">Previous</span>
	            </a>
	            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		            <span class="sr-only">Next</span>
	            </a>
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
							<asp:HyperLink ID="HyperLink1" runat="server" CssClass="user_info_btn_a">HL1</asp:HyperLink>
							<asp:HyperLink ID="HyperLink2" runat="server" CssClass="user_info_btn_a">HL2</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="user_info_btn_a">开店</asp:HyperLink>
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
