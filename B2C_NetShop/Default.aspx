<%@ Page Title="首页_B2CDemo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B2C_NetShop._Default" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HalfPageContentPlaceHolder" runat="server">
	<script src="IndexStyle/default-Content1.js"></script>
	<link href="IndexStyle/default-banner-login-style.css" rel="stylesheet" />
	<div>
		<div>
			<div id="banner">
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
							<img src="img/DefaultImg/4.jpg" alt="First slide">
							<asp:DataList ID="DataList1" runat="server">
							</asp:DataList>
							&nbsp;
						</div>
						<div class="item">
							<img src="img/DefaultImg/5.jpg" alt="Second slide">
						</div>
						<div class="item">
							<img src="img/DefaultImg/6.jpg" alt="Third slide">
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
				<div id="banner-modal" class="carousel slide">
					<!-- 轮播（Carousel）指标 -->
					<!-- <ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active">1</li>
				<li data-target="#myCarousel" data-slide-to="1">2</li>
			</ol> -->
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/02.jpg" alt="First slide">
								<span class="cover"></span>
							</a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/02.jpg" alt="First slide">
								<span class="cover"></span></a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/03.jpg" alt="First slide">
								<span class="cover"></span></a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/04.jpg" alt="First slide">
								<span class="cover"></span></a>
						</div>
						<div class="item">
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/05.jpg" alt="Second slide">
								<span class="cover"></span>
							</a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/06.jpg" alt="Second slide">
								<span class="cover"></span></a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/07.jpg" alt="Second slide">
								<span class="cover"></span></a>
							<a href="#">
								<img class="product-ad" src="img/product-ad-img/08.jpg" alt="Second slide">
								<span class="cover"></span></a>
						</div>
					</div>
					<a id="banner-left-arrow" class="left carousel-control" href="#banner-modal" role="button"
						data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a id="banner-right-arrow" class="right carousel-control" href="#banner-modal" role="button"
						data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div id="div_right">
				<div id="user_info_container" style="display: none">
					<div id="user_img">
						<a href="User/Info.aspx" target="_blank">
							<%--<img id="" src="Account/UserImg/DefaultUserImg.png" style="width: 50px; height: 50px">--%>
							<asp:Image ID="Image1" runat="server" Style="width: 50px; height: 50px"
								ImageUrl="~/User/ImagesUpload/DefaultImage.png" /></a>
					</div>
					<div id="user_info">
						<div id="user_info_name">
							<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						</div>
						<div id="user_info_btn">
							<asp:HyperLink ID="HyperLink1" runat="server" CssClass="user_info_btn_a">HL1</asp:HyperLink>
							<asp:HyperLink ID="HyperLink2" runat="server" CssClass="user_info_btn_a">HL2</asp:HyperLink>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<a href="#">
					<img src="img/product-ad-img/sponsor.jpg" alt="Alternate Text" height="185px" width="202px" /></a>
				<div id="notice">
					<div class="home_notice_gg">
						<div class="head  headhome_notice_gg">
							<ul class="tab_aa">
								<li class="tabh_0  first" type="bar"><span>信息公告</span></li>
								<li class="tabh_1 on" type="bar"><a href="#" target="_blank"><span>服务公告</span></a></li>
							</ul>


						</div>
						<div class="tab_content_aa tab_content_aahome_notice_gg ">
							<div class="content tab_1" type="item">
								<div id="logo_content">
									<ul id="cxgg_content">
										<li>
											<a href="#" target="_blank" title="笛莎大牌日，限时4件2折" dd_name="信息公告1">
												<span>笛莎大牌日，限时4件2折</span>
											</a>
										</li>
										<li>
											<a href="#" target="_blank" title="珀莱雅约惠日 限时3件4折" dd_name="信息公告2">
												<span>珀莱雅约惠日 限时3件4折</span>
											</a>
										</li>
										<li>
											<a href="#" target="_blank" title="百万图书每满100减50" dd_name="信息公告3">
												<span>百万图书每满100减50</span>
											</a>
										</li>
										<li>
											<a href="#" target="_blank" title="飞利浦儿童节350减40" dd_name="信息公告4">
												<span>飞利浦儿童节350减40</span>
											</a>
										</li>
										<li>
											<a href="#" target="_blank" title="礼品童书每满100减50" dd_name="信息公告5">
												<span>礼品童书每满100减50</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="content tab_2" type="item" style="display: block;">
								<div id="logo_content">
									<ul id="cxgg_content">
										<li>
											<a href="#" target="_blank" title="快钱网“光大银行”支付关闭通知">
												<span>快钱网“光大银行”支付关闭通知</span>
											</a>
										</li>
										<li>
											<a href="#" target="_blank" title="当当阅读器 海量电子书随时读">
												<span>当当阅读器 海量电子书随时读</span>
											</a>
										</li>
										<li>
											<a href="#" target="_blank" title="话费卡兑换当当礼品卡">
												<span>话费卡兑换当当礼品卡</span>
											</a>
										</li>
										<li>
											<a href="#" target="_blank" title="多种商品，礼品卡支付更优惠！">
												<span>多种商品，礼品卡支付更优惠！</span>
											</a>
										</li>
										<li>
											<a href="#" target="_blank" title="关于假冒客服诈骗的声明">
												<span style="color: #ff2832">关于假冒客服诈骗的声明</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="banner-small-modal" class="carousel slide">

					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<a href="#">
								<img class="product-ad-small" src="img/product-ad-img/a.jpg" alt="First slide"></a>
						</div>
						<div class="item">
							<a href="#">
								<img class="product-ad-small" src="img/product-ad-img/b.jpg" alt="Second slide"></a>
						</div>
						<div class="item">
							<a href="#">
								<img class="product-ad-small" src="img/product-ad-img/c.jpg" alt="Third slide"></a>
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a id="banner-small-left-arrow" class="left carousel-control" href="#banner-small-modal"
						role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a id="banner-small-right-arrow" class="right carousel-control" href="#banner-small-modal"
						role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<link href="IndexStyle/default-bookup2.css" rel="stylesheet" />
	<link href="IndexStyle/default-BodyContent.css" rel="stylesheet" />
	<link href="IndexStyle/default-product-list.css" rel="stylesheet" />
	<link href="IndexStyle/default-outer.css" rel="stylesheet" />
	<script src="IndexStyle/default-bodycontent.js"></script>
	<div id="outer">
		<div id="product-body">
			<div class="book_new ">
				<!-- use cache-->
				<div id="component_3208542"></div>
				<div class="home_screen_head clearfix" id="f_title">
					<a href="http://book.dangdang.com/" target="_blank" dd_name="图书">图书</a>

					<span>.</span>
					<a href="http://e.dangdang.com/" target="_blank" dd_name="电子书">电子书</a>
					<span>.</span>
					<a href="http://e.dangdang.com/new_original_index_page.html" target="_blank" dd_name="">网络文学</a>
				</div>
				<div class="tab_box_aa ">
					<div class="head  head">
						<ul class="tab_aa">
							<li class="tabh_0  first" type="bar"><span>最新上架</span></li>
							<li class="tabh_1" type="bar"><span>独家畅品</span></li>
							<li class="tabh_2 on" type="bar"><span>重点推荐</span></li>
							<li class="tabh_3" type="bar"><span>电子书</span></li>
							<li class="tabh_4" type="bar"><span>网络文学</span></li>
						</ul>
					</div>
					<div class="tab_content_aa tab_content_aa ">
						<div class="content left-tab_1" type="item" style="display: none;">
							<div class=" ">
								<div class="con">
									<a class="book_left_pic book_left_pic_1  pic" ddt-area="9341"
										href="http://baby.dangdang.com/20190430_ln31" title="礼品童书 每满100减50"
										target="_blank" nname="mixpage-317715-15640_8_1"
										dd_src="lcdt238x441-1558317845_d37f59646f4883cc">
										<img src="http://img62.ddimg.cn/upload_img/00678/zsts/lcdt238x441-1558317845.jpg"
											title="礼品童书 每满100减50" alt="礼品童书 每满100减50" ddt-pit="1"
											ddt-src="lcdt238x441-1558317845_d37f59646f4883cc"></a>
									<ul class="book_tab_img">
										<li class="line line1 on" ddt-pit="1">
											<a href="http://book.dangdang.com/children?ref=book-01-A" target="_blank"
												class="" title="童书">童书</a> </li>
										<li class="line line2 " ddt-pit="2">
											<a href="http://book.dangdang.com/study" target="_blank" class=""
												title="中小学教辅">中小学教辅</a>
										</li>
										<li nname="mixpage-317715-15640_8_3" class="line line3 " ddt-pit="3">
											<a href="http://book.dangdang.com/language" target="_blank" class=""
												title="外语">外语</a>
										</li>
										<li nname="mixpage-317715-15640_8_4" class="line line4 " ddt-pit="4">
											<a href="http://book.dangdang.com/exam" target="_blank" class=""
												title="考试">考试</a>
										</li>
										<li nname="mixpage-317715-15640_8_5" class="line line5 " ddt-pit="5">
											<a href="http://book.dangdang.com/01.03.htm" target="_blank" class=""
												title="小说">小说</a> </li>
										<li nname="mixpage-317715-15640_8_6" class="line line6 " ddt-pit="6">
											<a href="http://book.dangdang.com/01.05.htm" target="_blank" class=""
												title="文学">文学</a> </li>
										<li nname="mixpage-317715-15640_8_7" class="line line7 " ddt-pit="7">
											<a href="http://book.dangdang.com/01.01.htm" target="_blank" class=""
												title="青春文学">青春文学</a> </li>
										<li nname="mixpage-317715-15640_8_8" class="line line8 " ddt-pit="8">
											<a href="http://book.dangdang.com/01.21.htm" target="_blank" class=""
												title="成功/励志">成功/励志</a> </li>
										<li nname="mixpage-317715-15640_8_9" class="line line9 " ddt-pit="9">
											<a href="http://book.dangdang.com/01.22.htm" target="_blank" class=""
												title="管理">管理</a> </li>
										<li class="line line10 " ddt-pit="10">
											<a href="http://book.dangdang.com/01.36.htm" target="_blank" class=""
												title="历史">历史</a> </li>
										<li nname="mixpage-317715-15640_8_11" class="line line11 " ddt-pit="11">
											<a href="http://book.dangdang.com/01.15.htm" target="_blank" class=""
												title="亲子/家教">亲子/家教</a> </li>
										<li nname="mixpage-317715-15640_8_12" class="line line12 " ddt-pit="12">
											<a href="http://category.dangdang.com/cp01.00.00.00.00.00.html"
												target="_blank" class="" title="全部分类>">全部分类&gt;</a> </li>
									</ul>
									<div class="roll_aa " id="mapid_3208542_parent_9370_9354_9345_part_9345"
										marquee="true" name="m3208542_pid9370_9354_9345_p9345" js="true"
										action="newclickroll" delay="500" prevnoneclass="btn_prev_none"
										nextnoneclass="btn_next_none" page="0" speed="5000" display_count="1"
										is_display_tab="1" noend="1" ddt-area="9345">



										<div class="btn_brand_prev" type="rollpre" style="display: none;"></div>
										<div class="btn_brand_next" type="rollnext" style="display: none;"></div>
										<ul class="mix_marquee_tab" style="margin-left: -12px;">
											<li class="current">1</li>
											<li class="">2</li>
										</ul>
										<div class="over">

											<ul class="" style="left: 0px;">
												<li class="_li_1" nname="mixpage-317715-15640_8_1" ddt-pit="1"
													dd_name="图书A版_轮播banner区_TAB1"><a
														href="http://book.dangdang.com/20190214_kfqo" target="_blank"
														class="pic" title="豆瓣读书榜单"
														dd_src="lou-1558507603_4c3eab7be5d5d6b4"
														dd_name="图书A版_轮播banner区_TAB1">
														<img src="http://img63.ddimg.cn/upload_img/00779/xmj/lou-1558507603.jpg"
															alt="豆瓣读书榜单" ddt-src="lou-1558507603_4c3eab7be5d5d6b4"></a>
												</li>
												<li class="_li_2" nname="mixpage-317715-15640_8_2" ddt-pit="2"
													dd_name="图书A版_轮播banner区_TAB1"><a
														href="http://baby.dangdang.com/2019new5" target="_blank"
														class="pic" title="童书5月新书速递"
														dd_src="lcbanner-1556618423_b9a441d70e1f9f79"
														dd_name="图书A版_轮播banner区_TAB1">
														<img src="http://img60.ddimg.cn/upload_img/00678/zsts/lcbanner-1556618423.jpg"
															alt="童书5月新书速递"
															ddt-src="lcbanner-1556618423_b9a441d70e1f9f79"></a></li>
											</ul>
										</div>
									</div>
									<div class="book_upper2">
										<style>
											.m-left-tab ul,
											li {
												padding: 0px;
												margin: 0px;
											}

											.m-left-tab .list_aa {
												float: left;
												width: 166px;
												height: 220px;
												font-size: 12px;
												border-right: 1px solid #e6e6e6;
												border-bottom: 1px solid #e6e6e6;
												position: relative;
												list-style: none;
											}

											.m-left-tab span {
												display: block;
												float: left;
											}

											.m-left-tab .tab-book-img {
												display: block;
												width: 150px;
												height: 150px;
												overflow: hidden;
												text-align: center;
												margin: 7px auto 0;
											}

											.m-left-tab .name {
												height: 16px;
												line-height: 16px;
												width: 150px;
												margin: 5px auto 0;
												overflow: hidden;
											}

											.m-left-tab .list_aa a {
												text-decoration: none;
												color: #666;
											}






											.m-left-tab .price_r {
												text-decoration: line-through;
											}

											.m-left-tab .rob {
												color: #ff2832;
												font: 14px Arial;
												margin: 0px 10px;
											}
										</style>
										<div class="m-left-tab">
											<div id="list2">
												<asp:DataList ID="dl_tab1" runat="server" RepeatDirection="Horizontal"
													RepeatLayout="Flow">
													<ItemTemplate>
														<ul class="list_aa ">
															<li class="line1 on"><a href='<%# Eval("BookUrl") %>'>
																	<img class="tab-book-img"
																		src='<%# Eval("picUrl") %>'>
																	<p class="name">
																		<span
																			class="goods-detail-name"><%# Eval("BookName") %></span>
																	</p>
																	<p class="price">
																		<span
																			class="rob"><%# "¥"+Eval("MarketPrice") %></span>&nbsp;
																		<span
																			class="price_r"><%# "¥"+Eval("OriginalPrice") %></span>
																	</p>
																</a></li>
														</ul>
													</ItemTemplate>
												</asp:DataList>
											</div>
										</div>
									</div>
									<div class="book_lower4">
										<div class="m-left-tab">
											<div id="list1">
												<asp:DataList ID="dl_tab2" runat="server" RepeatDirection="Horizontal"
													RepeatLayout="Flow">
													<ItemTemplate>
														<ul class="list_aa ">
															<li class="line1 on"><a href='<%# Eval("BookUrl") %>'>
																	<img class="tab-book-img"
																		src='<%# Eval("picUrl") %>'>
																	<p class="name">
																		<span
																			class="goods-detail-name"><%# Eval("BookName") %></span>
																	</p>
																	<p class="price">
																		<span
																			class="rob"><%# "¥"+Eval("MarketPrice") %></span>&nbsp;
																		<span
																			class="price_r"><%#  "¥"+Eval("OriginalPrice") %></span>
																	</p>
																</a>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
														</ul>

													</ItemTemplate>
												</asp:DataList>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="content left-tab_2" type="item" style="display: display;" ddt-area="9356">
							<div>
								<div class="con " name="m3208542_pid9370_9356_t15679">
									<a class="book_left_pic book_left_pic_1  pic" ddt-area="9341"
										href="http://baby.dangdang.com/20190430_ln31" title="童书 每满100减50"
										target="_blank" nname="mixpage-317715-15640_8_1"
										dd_src="lcdt238x441-1558317845_ce24e7ee86e3385a">
										<img src="http://img62.ddimg.cn/upload_img/00678/zsts/lcdt238x441-1558317845.jpg"
											title="童书 每满100减50" alt="童书 每满100减50" ddt-pit="1"
											ddt-src="lcdt238x441-1558317845_ce24e7ee86e3385a"></a>
									<ul class="book_tab_img">
										<li class="line line1 on" ddt-pit="1">
											<a href="http://book.dangdang.com/children?ref=book-01-A" target="_blank"
												class="" title="童书">童书</a> </li>
										<li class="line line2 " ddt-pit="2">
											<a href="http://book.dangdang.com/study" target="_blank" class=""
												title="中小学教辅">中小学教辅</a>
										</li>
										<li class="line line3 " ddt-pit="3">
											<a href="http://book.dangdang.com/language" target="_blank" class=""
												title="外语">外语</a>
										</li>
										<li class="line line4 " ddt-pit="4">
											<a href="http://book.dangdang.com/exam" target="_blank" class=""
												title="考试">考试</a>
										</li>
										<li class="line line5 " ddt-pit="5">
											<a href="http://book.dangdang.com/01.03.htm" target="_blank" class=""
												title="小说">小说</a> </li>
										<li class="line line6 " ddt-pit="6">
											<a href="http://book.dangdang.com/01.05.htm" target="_blank" class=""
												title="文学">文学</a> </li>
										<li class="line line7 " ddt-pit="7">
											<a href="http://book.dangdang.com/01.01.htm" target="_blank" class=""
												title="青春文学">青春文学</a> </li>
										<li class="line line8 " ddt-pit="8">
											<a href="http://book.dangdang.com/01.21.htm" target="_blank" class=""
												title="成功/励志">成功/励志</a> </li>
										<li class="line line9 " ddt-pit="9">
											<a href="http://book.dangdang.com/01.22.htm" target="_blank" class=""
												title="管理">管理</a> </li>
										<li class="line line10 " ddt-pit="10">
											<a href="http://book.dangdang.com/01.36.htm" target="_blank" class=""
												title="历史">历史</a> </li>
										<li class="line line11 " ddt-pit="11">
											<a href="http://book.dangdang.com/01.15.htm" target="_blank" class=""
												title="亲子/家教">亲子/家教</a> </li>
										<li class="line line12 " ddt-pit="12">
											<a href="http://category.dangdang.com/cp01.00.00.00.00.00.html"
												target="_blank" class="" title="全部分类>">全部分类&gt;</a> </li>
									</ul>
									<div class="roll_aa " id="mapid_3208542_parent_9370_9356_9345_part_9345"
										marquee="true" name="m3208542_pid9370_9356_9345_p9345" js="true"
										action="newclickroll" delay="500" prevnoneclass="btn_prev_none"
										nextnoneclass="btn_next_none" page="0" speed="5000" display_count="1"
										is_display_tab="1" noend="1" ddt-area="9345">



										<div class="btn_brand_prev" type="rollpre" style="display: none;"></div>
										<div class="btn_brand_next" type="rollnext" style="display: none;"></div>
										<ul class="mix_marquee_tab" style="margin-left: -12px;">
											<li class="">1</li>
											<li class="current">2</li>
										</ul>
										<div class="over">

											<ul class="" style="left: 0px;">
												<li class="_li_2" nname="mixpage-317715-15640_8_2" ddt-pit="2"
													dd_name="图书A版_轮播banner区_TAB2"><a
														href="http://baby.dangdang.com/20190514_haei-3-6"
														target="_blank" class="pic" title="3-6岁童书每满100减50"
														dd_src="lcbanner3-6-1558317845_7cb5135139aa9989"
														dd_name="图书A版_轮播banner区_TAB2">
														<img src="http://img60.ddimg.cn/upload_img/00678/zsts/lcbanner3-6-1558317845.jpg"
															alt="3-6岁童书每满100减50"
															ddt-src="lcbanner3-6-1558317845_7cb5135139aa9989"></a></li>
												<li class="_li_1" nname="mixpage-317715-15640_8_1" ddt-pit="1"
													dd_name="图书A版_轮播banner区_TAB2"><a
														href="http://book.dangdang.com/20180731_0hu0" target="_blank"
														class="pic" title="生活49元5件"
														dd_src="bannerdangshou0107-1546838986_98df333a48e28b3e"
														dd_name="图书A版_轮播banner区_TAB2">
														<img src="http://img63.ddimg.cn/upload_img/00727/wangsiyu/bannerdangshou0107-1546838986.jpg"
															alt="生活49元5件"
															ddt-src="bannerdangshou0107-1546838986_98df333a48e28b3e"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="book_upper2 " name="m3208542_pid9370_9356_9348_t15680">
										<div class="m-left-tab">

											<div id="list3">
												<asp:DataList ID="dl_tab3" runat="server" RepeatDirection="Horizontal"
													RepeatLayout="Flow">
													<ItemTemplate>
														<ul class="list_aa ">
															<li class="line1 on"><a href='<%# Eval("BookUrl") %>'>
																	<img class="tab-book-img"
																		src='<%# Eval("picUrl") %>'>
																	<p class="name">
																		<span
																			class="goods-detail-name"><%# Eval("BookName") %></span>
																	</p>
																	<p class="price">
																		<span
																			class="rob"><%# "¥"+Eval("MarketPrice") %></span>&nbsp;
																		<span
																			class="price_r"><%# "¥"+Eval("OriginalPrice") %></span>
																	</p>
																</a></li>
														</ul>
													</ItemTemplate>
												</asp:DataList>
											</div>
										</div>

									</div>
									<div class="book_lower4 " name="m3208542_pid9370_9356_9353_t15681">
										<div class="m-left-tab">
											<div id="list4">
												<asp:DataList ID="dl_tab4" runat="server" RepeatDirection="Horizontal"
													RepeatLayout="Flow">
													<ItemTemplate>
														<ul class="list_aa ">
															<li class="line1 on"><a href='<%# Eval("BookUrl") %>'>
																	<img class="tab-book-img"
																		src='<%# Eval("picUrl") %>'>
																	<p class="name">
																		<span
																			class="goods-detail-name"><%# Eval("BookName") %></span>
																	</p>
																	<p class="price">
																		<span
																			class="rob"><%# "¥"+Eval("MarketPrice") %></span>&nbsp;
																		<span
																			class="price_r"><%# "¥"+Eval("OriginalPrice") %></span>
																	</p>
																</a></li>
														</ul>
													</ItemTemplate>
												</asp:DataList>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="content left-tab_3" type="item" style="display: none;" ddt-area="9358"
							dd_name="重点推荐">
							<div class=" " name="m3208542_pid9370_9358_t15678">
								<div class="con " name="m3208542_pid9370_9358_t15679">
									<a class="book_left_pic book_left_pic_1  pic" ddt-area="9341"
										href="http://book.dangdang.com/20190522_fayt" title="自出版" target="_blank"
										nname="mixpage-317715-15640_8_1" dd_src="9001320089129550_f5dd85b333601c06"
										dd_name="图书A版_左_专题_TAB3">
										<img src="http://img50.ddimg.cn/9001320089129550.jpg" title="自出版" alt="自出版"
											ddt-pit="1" ddt-src="9001320089129550_f5dd85b333601c06"></a>
									<ul class="book_tab_img">
										<li nname="mixpage-317715-15640_8_1" class="line line1 on" ddt-pit="1">
											<a dd_name="图书A版_左_分类_TAB3"
												href="http://book.dangdang.com/children?ref=book-01-A" target="_blank"
												class="" title="童书">童书</a> </li>
										<li nname="mixpage-317715-15640_8_2" class="line line2 " ddt-pit="2">
											<a dd_name="图书A版_左_分类_TAB3" href="http://book.dangdang.com/study"
												target="_blank" class="" title="中小学教辅">中小学教辅</a>
										</li>
										<li nname="mixpage-317715-15640_8_3" class="line line3 " ddt-pit="3">
											<a dd_name="图书A版_左_分类_TAB3" href="http://book.dangdang.com/language"
												target="_blank" class="" title="外语">外语</a>
										</li>
										<li nname="mixpage-317715-15640_8_4" class="line line4 " ddt-pit="4">
											<a dd_name="图书A版_左_分类_TAB3" href="http://book.dangdang.com/exam"
												target="_blank" class="" title="考试">考试</a>
										</li>
										<li nname="mixpage-317715-15640_8_5" class="line line5 " ddt-pit="5">
											<a dd_name="图书A版_左_分类_TAB3" href="http://book.dangdang.com/01.03.htm"
												target="_blank" class="" title="小说">小说</a> </li>
										<li nname="mixpage-317715-15640_8_6" class="line line6 " ddt-pit="6">
											<a dd_name="图书A版_左_分类_TAB3" href="http://book.dangdang.com/01.05.htm"
												target="_blank" class="" title="文学">文学</a> </li>
										<li nname="mixpage-317715-15640_8_7" class="line line7 " ddt-pit="7">
											<a dd_name="图书A版_左_分类_TAB3" href="http://book.dangdang.com/01.01.htm"
												target="_blank" class="" title="青春文学">青春文学</a> </li>
										<li nname="mixpage-317715-15640_8_8" class="line line8 " ddt-pit="8">
											<a dd_name="图书A版_左_分类_TAB3" href="http://book.dangdang.com/01.21.htm"
												target="_blank" class="" title="成功/励志">成功/励志</a> </li>
										<li nname="mixpage-317715-15640_8_9" class="line line9 " ddt-pit="9">
											<a dd_name="图书A版_左_分类_TAB3" href="http://book.dangdang.com/01.22.htm"
												target="_blank" class="" title="管理">管理</a> </li>
										<li class="line line10 " ddt-pit="10">
											<a dd_name="图书A版_左_分类_TAB3" href="http://book.dangdang.com/01.36.htm"
												target="_blank" class="" title="历史">历史</a> </li>
										<li nname="mixpage-317715-15640_8_11" class="line line11 " ddt-pit="11">
											<a dd_name="图书A版_左_分类_TAB3" href="http://book.dangdang.com/01.15.htm"
												target="_blank" class="" title="亲子/家教">亲子/家教</a> </li>
										<li nname="mixpage-317715-15640_8_12" class="line line12 " ddt-pit="12">
											<a dd_name="图书A版_左_分类_TAB3"
												href="http://category.dangdang.com/cp01.00.00.00.00.00.html"
												target="_blank" class="" title="全部分类>">全部分类&gt;</a> </li>
									</ul>
									<div class="roll_aa " id="mapid_3208542_parent_9370_9358_9345_part_9345"
										marquee="true" name="m3208542_pid9370_9358_9345_p9345" js="true"
										action="newclickroll" delay="500" prevnoneclass="btn_prev_none"
										nextnoneclass="btn_next_none" page="0" speed="5000" display_count="1"
										is_display_tab="1" noend="1" ddt-area="9345">



										<div class="btn_brand_prev" type="rollpre" style="display: none;"></div>
										<div class="btn_brand_next" type="rollnext" style="display: none;"></div>
										<ul class="mix_marquee_tab" style="margin-left: -12px;">
											<li class="current">1</li>
											<li class="">2</li>
										</ul>
										<div class="over">

											<ul class="" style="left: 0px;">
												<li class="_li_1" nname="mixpage-317715-15640_8_1" ddt-pit="1"
													dd_name="图书A版_轮播banner区_TAB3"><a
														href="http://book.dangdang.com/20190522_ojjv" target="_blank"
														class="pic" title="艺术传记"
														dd_src="335x220_0519-1558275199_8ba7a41b45e2c834"
														dd_name="图书A版_轮播banner区_TAB3">
														<img src="http://img62.ddimg.cn/upload_img/00726/0122/335x220_0519-1558275199.jpg"
															alt="艺术传记"
															ddt-src="335x220_0519-1558275199_8ba7a41b45e2c834"></a></li>
												<li class="_li_2" nname="mixpage-317715-15640_8_2" ddt-pit="2"
													dd_name="图书A版_轮播banner区_TAB3"><a
														href="http://baby.dangdang.com/20190514_haei-7-10"
														target="_blank" class="pic" title="7-10岁童书每满100减50"
														dd_src="lcbanner7-10-1558317845_f527f4ee58661389"
														dd_name="图书A版_轮播banner区_TAB3">
														<img src="http://img60.ddimg.cn/upload_img/00678/zsts/lcbanner7-10-1558317845.jpg"
															alt="7-10岁童书每满100减50"
															ddt-src="lcbanner7-10-1558317845_f527f4ee58661389"></a></li>
											</ul>
										</div>
									</div>
									<div class="book_upper2 " name="m3208542_pid9370_9358_9348_t15680">
										<div class="m-left-tab">
											<div id="list5">
												<asp:DataList ID="dl_tab5" runat="server" RepeatDirection="Horizontal"
													RepeatLayout="Flow">
													<ItemTemplate>
														<ul class="list_aa ">
															<li class="line1 on"><a href='<%# Eval("BookUrl") %>'>
																	<img class="tab-book-img"
																		src='<%# Eval("picUrl") %>'>
																	<p class="name">
																		<span
																			class="goods-detail-name"><%# Eval("BookName") %></span>
																	</p>
																	<p class="price">
																		<span
																			class="rob"><%# "¥"+Eval("MarketPrice") %></span>&nbsp;
																		<span
																			class="price_r"><%#  "¥"+Eval("OriginalPrice") %></span>
																	</p>
																</a>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
														</ul>

													</ItemTemplate>
												</asp:DataList>
											</div>
										</div>
									</div>
									<div class="book_lower4 " name="m3208542_pid9370_9358_9353_t15681">
										<div class="m-left-tab">
											<div id="list6">
												<asp:DataList ID="dl_tab6" runat="server" RepeatDirection="Horizontal"
													RepeatLayout="Flow">
													<ItemTemplate>
														<ul class="list_aa ">
															<li class="line1 on"><a href='<%# Eval("BookUrl") %>'>
																	<img class="tab-book-img"
																		src='<%# Eval("picUrl") %>'>
																	<p class="name">
																		<span
																			class="goods-detail-name"><%# Eval("BookName") %></span>
																	</p>
																	<p class="price">
																		<span
																			class="rob"><%# "¥"+Eval("MarketPrice") %></span>&nbsp;
																		<span
																			class="price_r"><%#  "¥"+Eval("OriginalPrice") %></span>
																	</p>
																</a>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
														</ul>

													</ItemTemplate>
												</asp:DataList>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="content left-tab_4" type="item" style="display: none;" ddt-area="10020"
							dd_name="电子书">
							<div class=" " name="m3208542_pid9370_10020_t15678">
								<div class="con " name="m3208542_pid9370_10020_t15679">
									<a class="book_left_pic book_left_pic_1  pic" ddt-area="9341"
										href="http://book.dangdang.com/20190521_kbiz" title="电子书" target="_blank"
										nname="mixpage-317715-15640_8_1" dd_src="left_logo-74_ce136bd855fc8630"
										dd_name="图书A版_左_专题_TAB4">
										<img src="http://img62.ddimg.cn/ddreader/dangebook/left_logo-74.jpg" title="电子书"
											alt="电子书" ddt-pit="1" ddt-src="left_logo-74_ce136bd855fc8630"></a>
									<ul class="book_tab_img">
										<li nname="mixpage-317715-15640_8_1" class="line line1 on" ddt-pit="1">
											<a dd_name="图书A版_左_分类_TAB4"
												href="http://e.dangdang.com/new_original_index_page.html"
												target="_blank" class="" title="网文">网文</a> </li>
										<li nname="mixpage-317715-15640_8_2" class="line line2 " ddt-pit="2">
											<a dd_name="图书A版_左_分类_TAB4"
												href="http://e.dangdang.com/classification_list_page.html?category=XS2&amp;dimension=dd_sale&amp;order=0"
												target="_blank" class="" title="小说">小说</a> </li>
										<li nname="mixpage-317715-15640_8_3" class="line line3 " ddt-pit="3">
											<a dd_name="图书A版_左_分类_TAB4"
												href="http://e.dangdang.com/classification_list_page.html?category=JG&amp;dimension=dd_sale&amp;order=0"
												target="_blank" class="" title="经管励志">经管励志</a> </li>
										<li nname="mixpage-317715-15640_8_4" class="line line4 " ddt-pit="4">
											<a dd_name="图书A版_左_分类_TAB4"
												href="http://e.dangdang.com/classification_list_page.html?category=WY1&amp;dimension=dd_sale&amp;order=0"
												target="_blank" class="" title="文艺">文艺</a> </li>
										<li nname="mixpage-317715-15640_8_5" class="line line5 " ddt-pit="5">
											<a dd_name="图书A版_左_分类_TAB4"
												href="http://e.dangdang.com/classification_list_page.html?category=SK&amp;dimension=dd_sale&amp;order=0"
												target="_blank" class="" title="社科">社科</a> </li>
										<li nname="mixpage-317715-15640_8_6" class="line line6 " ddt-pit="6">
											<a dd_name="图书A版_左_分类_TAB4"
												href="http://e.dangdang.com/classification_list_page.html?category=SH&amp;dimension=dd_sale&amp;order=0"
												target="_blank" class="" title="生活">生活</a> </li>
										<li nname="mixpage-317715-15640_8_7" class="line line7 " ddt-pit="7">
											<a dd_name="图书A版_左_分类_TAB4"
												href="http://e.dangdang.com/rank_detail_page.html?listType=ddds_sale&amp;channelType=all"
												target="_blank" class="" title="新书榜">新书榜</a> </li>
										<li nname="mixpage-317715-15640_8_8" class="line line8 " ddt-pit="8">
											<a dd_name="图书A版_左_分类_TAB4"
												href="http://e.dangdang.com/rank_detail_page.html?listType=ddds_sale&amp;channelType=all"
												target="_blank" class="" title="畅销榜">畅销榜</a> </li>
										<li nname="mixpage-317715-15640_8_9" class="line line9 " ddt-pit="9">
											<a dd_name="图书A版_左_分类_TAB4" href="http://e.dangdang.com/index_page.html"
												target="_blank" class="" title="查看所有">查看所有</a> </li>
									</ul>
									<div class="roll_aa " id="mapid_3208542_parent_9370_10020_9345_part_9345"
										marquee="true" name="m3208542_pid9370_10020_9345_p9345" js="true"
										action="newclickroll" delay="500" prevnoneclass="btn_prev_none"
										nextnoneclass="btn_next_none" page="0" speed="5000" display_count="1"
										is_display_tab="1" noend="1" ddt-area="9345">



										<div class="btn_brand_prev" type="rollpre" style="display: none;"></div>
										<div class="btn_brand_next" type="rollnext" style="display: none;"></div>
										<ul class="mix_marquee_tab" style="margin-left: -19px;">
											<li class="">1</li>
											<li class="">2</li>
											<li class="current">3</li>
										</ul>
										<div class="over">

											<ul class="" style="left: 0px;">
												<li class="_li_3" nname="mixpage-317715-15640_8_3" ddt-pit="3"
													dd_name="图书A版_轮播banner区_TAB4"><a
														href="http://category.dangdang.com/cp98.01.00.00.00.00-lp-hp5.html"
														target="_blank" class="pic" title="轮播3"
														dd_src="dslc-lz-3_0b8e76e88b220223"
														dd_name="图书A版_轮播banner区_TAB4">
														<img src="http://img63.ddimg.cn/ebook/201709/dslc-lz-3.jpg"
															alt="轮播3" ddt-src="dslc-lz-3_0b8e76e88b220223"></a></li>
												<li class="_li_1" nname="mixpage-317715-15640_8_1" ddt-pit="1"
													dd_name="图书A版_轮播banner区_TAB4"><a
														href="http://book.dangdang.com/20161128_zl3t" target="_blank"
														class="pic" title="轮播1" dd_src="0616ydq_4f5e11a3ea80e2b4"
														dd_name="图书A版_轮播banner区_TAB4">
														<img src="http://img60.ddimg.cn/ddreader/dangebook/0616ydq.jpg"
															alt="轮播1" ddt-src="0616ydq_4f5e11a3ea80e2b4"></a></li>
												<li class="_li_2" nname="mixpage-317715-15640_8_2" ddt-pit="2"
													dd_name="图书A版_轮播banner区_TAB4"><a
														href="http://e.dangdang.com/rank_detail_page.html?listType=ddds_sale&amp;channelType=all&amp;timeDimension=1"
														target="_blank" class="pic" title="轮播2"
														dd_src="dslc-lz-2_5cecfed482cacfa9"
														dd_name="图书A版_轮播banner区_TAB4">
														<img src="http://img60.ddimg.cn/ebook/201709/dslc-lz-2.jpg"
															alt="轮播2" ddt-src="dslc-lz-2_5cecfed482cacfa9"></a></li>
											</ul>
										</div>
									</div>
									<div class="book_upper2 " name="m3208542_pid9370_10020_9348_t15680">
										<div class="m-left-tab">
											<div id="list7">
												<asp:DataList ID="dl_tab7" runat="server" RepeatDirection="Horizontal"
													RepeatLayout="Flow">
													<ItemTemplate>
														<ul class="list_aa ">
															<li class="line1 on"><a href='<%# Eval("BookUrl") %>'>
																	<img class="tab-book-img"
																		src='<%# Eval("picUrl") %>'>
																	<p class="name">
																		<span
																			class="goods-detail-name"><%# Eval("BookName") %></span>
																	</p>
																	<p class="price">
																		<span
																			class="rob"><%# "¥"+Eval("MarketPrice") %></span>&nbsp;
																		<span
																			class="price_r"><%#  "¥"+Eval("OriginalPrice") %></span>
																	</p>
																</a>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
														</ul>

													</ItemTemplate>
												</asp:DataList>
											</div>
										</div>
									</div>
									<div class="book_lower4 " name="m3208542_pid9370_10020_9353_t15681">
										<div class="m-left-tab">
											<div id="list8">
												<asp:DataList ID="dl_tab8" runat="server" RepeatDirection="Horizontal"
													RepeatLayout="Flow">
													<ItemTemplate>
														<ul class="list_aa ">
															<li class="line1 on"><a href='<%# Eval("BookUrl") %>'>
																	<img class="tab-book-img"
																		src='<%# Eval("picUrl") %>'>
																	<p class="name">
																		<span
																			class="goods-detail-name"><%# Eval("BookName") %></span>
																	</p>
																	<p class="price">
																		<span
																			class="rob"><%# "¥"+Eval("MarketPrice") %></span>&nbsp;
																		<span
																			class="price_r"><%#  "¥"+Eval("OriginalPrice") %></span>
																	</p>
																</a>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
														</ul>

													</ItemTemplate>
												</asp:DataList>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="content left-tab_5" type="item" style="display: none;" ddt-area="10073"
							dd_name="网络文学">
							<div class=" " name="m3208542_pid9370_10073_t15678">
								<div class="con " name="m3208542_pid9370_10073_t15679">
									<a class="book_left_pic book_left_pic_1  pic" ddt-area="10052"
										href="http://e.dangdang.com/special_page.html?stId=4160" title=""
										target="_blank" nname="mixpage-317715-15640_8_1"
										dd_src="bzaddd_c23fb62ad26a5c8b" dd_name="图书A版_左_专题_TAB5">
										<img src="http://img61.ddimg.cn/ww/zx/12/bzaddd.jpg" ddt-pit="1"
											ddt-src="bzaddd_c23fb62ad26a5c8b"></a>
									<ul class="book_tab_img">
										<li nname="mixpage-317715-15640_8_1" class="line line1 on" ddt-area="10053"
											ddt-pit="1">
											<a dd_name="图书A版_左_分类_TAB5"
												href="http://e.dangdang.com/classification_list_page.html?category=XHQH&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="玄幻奇幻">玄幻奇幻</a> </li>
										<li nname="mixpage-317715-15640_8_2" class="line line2 " ddt-area="10053"
											ddt-pit="2">
											<a dd_name="图书A版_左_分类_TAB5"
												href="http://e.dangdang.com/classification_list_page.html?category=XDDS&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="现代都市">现代都市</a> </li>
										<li nname="mixpage-317715-15640_8_3" class="line line3 " ddt-area="10053"
											ddt-pit="3">
											<a dd_name="图书A版_左_分类_TAB5"
												href="http://e.dangdang.com/classification_list_page.html?category=WXXX&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="武侠仙侠">武侠仙侠</a> </li>
										<li nname="mixpage-317715-15640_8_4" class="line line4 " ddt-area="10053"
											ddt-pit="4">
											<a dd_name="图书A版_左_分类_TAB5"
												href="http://e.dangdang.com/classification_list_page.html?category=LSJS&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="历史军事">历史军事</a> </li>
										<li nname="mixpage-317715-15640_8_5" class="line line5 " ddt-area="10053"
											ddt-pit="5">
											<a dd_name="图书A版_左_分类_TAB5"
												href="http://e.dangdang.com/classification_list_page.html?category=XDYQ&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="现代言情">现代言情</a> </li>
										<li nname="mixpage-317715-15640_8_6" class="line line6 " ddt-area="10053"
											ddt-pit="6">
											<a dd_name="图书A版_左_分类_TAB5"
												href="http://e.dangdang.com/classification_list_page.html?category=CYCS&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="穿越重生">穿越重生</a> </li>
										<li nname="mixpage-317715-15640_8_7" class="line line7 " ddt-area="10053"
											ddt-pit="7">
											<a dd_name="图书A版_左_分类_TAB5"
												href="http://e.dangdang.com/classification_list_page.html?category=GZYQ&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="古装言情">古装言情</a> </li>
										<li nname="mixpage-317715-15640_8_8" class="line line8 " ddt-area="10053"
											ddt-pit="8">
											<a dd_name="图书A版_左_分类_TAB5"
												href="http://e.dangdang.com/classification_list_page.html?category=QCXY&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="青春校园">青春校园</a> </li>
									</ul>
									<div class="roll_aa " id="mapid_3208542_parent_9370_10073_10054_part_10054"
										marquee="true" name="m3208542_pid9370_10073_10054_p10054" js="true"
										action="newclickroll" delay="500" prevnoneclass="btn_prev_none"
										nextnoneclass="btn_next_none" page="0" speed="5000" display_count="1"
										is_display_tab="1" noend="1" ddt-area="10054">



										<div class="btn_brand_prev" type="rollpre" style="display: none;"></div>
										<div class="btn_brand_next" type="rollnext" style="display: none;"></div>
										<ul class="mix_marquee_tab" style="margin-left: -12px;">
											<li class="">1</li>
											<li class="current">2</li>
										</ul>
										<div class="over">

											<ul class="" style="left: 0px;">
												<li class="_li_2" nname="mixpage-317715-15640_8_2" ddt-pit="2"
													dd_name="图书A版_轮播banner区_TAB5"><a
														href="http://e.dangdang.com/special_page.html?stId=4159"
														target="_blank" class="pic" title="轮播2"
														dd_src="jpg _5eb55742e8c8fe67" dd_name="图书A版_轮播banner区_TAB5">
														<img src="http://img62.ddimg.cn/ww/zx/12/scgdd.jpg" alt="轮播2"
															ddt-src="jpg _5eb55742e8c8fe67"></a></li>
												<li class="_li_1" nname="mixpage-317715-15640_8_1" ddt-pit="1"
													dd_name="图书A版_轮播banner区_TAB5"><a
														href="http://e.dangdang.com/special_page.html?stId=4158"
														target="_blank" class="pic" title="轮播1"
														dd_src="jpg _5eb55742e8c8fe67" dd_name="图书A版_轮播banner区_TAB5">
														<img src="http://img62.ddimg.cn/ww/zx/12/lddsdd.jpg" alt="轮播1"
															ddt-src="jpg _5eb55742e8c8fe67"></a></li>
											</ul>
										</div>
									</div>
									<div class="book_upper2 " name="m3208542_pid9370_10073_10070_t15680">
										<a class=" _1  pic" ddt-area="10059"
											href="http://e.dangdang.com/products/1980217243.html" title=""
											target="_blank" nname="mixpage-317715-15640_8_1"
											dd_src="jpg _ea5ada4480c5ab0c" dd_name="图书A版_上图2-1_TAB5">
											<img src="http://img62.ddimg.cn/ww/zx/11/dlsdd.jpg" ddt-pit="1"
												ddt-src="jpg _ea5ada4480c5ab0c"></a>
										<a class=" _1  pic" ddt-area="10064"
											href="http://e.dangdang.com/products/1980217535.html" title=""
											target="_blank" nname="mixpage-317715-15640_8_1"
											dd_src="jpg _42bb4a748f3d5cfb" dd_name="图书A版_上图2-2_TAB5">
											<img src="http://img62.ddimg.cn/ww/zx/11/cjgsdd.jpg" ddt-pit="1"
												ddt-src="jpg _42bb4a748f3d5cfb"></a>
									</div>
									<div class="book_lower4 " name="m3208542_pid9370_10073_10071_t15681">
										<a class=" _1  pic" ddt-area="10065"
											href="http://e.dangdang.com/products/1980118924.html" title=""
											target="_blank" nname="mixpage-317715-15640_8_1"
											dd_src="jpg _d32aac2d86273ce4" dd_name="图书A版_下图4-1_TAB5">
											<img src="http://img60.ddimg.cn/ww/zx/11/qzdsdd.jpg" ddt-pit="1"
												ddt-src="jpg _d32aac2d86273ce4"></a>
										<a class=" _1  pic" ddt-area="10066"
											href="http://e.dangdang.com/products/1980437170.html" title=""
											target="_blank" nname="mixpage-317715-15640_8_1"
											dd_src="jpg _4e0071dea4e28b34" dd_name="图书A版_下图4-2_TAB5">
											<img src="http://img61.ddimg.cn/ww/zx/11/khsdd.jpg" ddt-pit="1"
												ddt-src="jpg _4e0071dea4e28b34"></a>
										<a class=" _1  pic" ddt-area="10067"
											href="http://e.dangdang.com/products/1980224561.html" title=""
											target="_blank" nname="mixpage-317715-15640_8_1"
											dd_src="jpg _35340214aefec1b9" dd_name="图书A版_下图4-3_TAB5">
											<img src="http://img62.ddimg.cn/ww/zx/11/gxjdd.jpg" ddt-pit="1"
												ddt-src="jpg _35340214aefec1b9"></a>
										<a class=" _1  pic" ddt-area="10068"
											href="http://e.dangdang.com/products/1980433921.html" title=""
											target="_blank" nname="mixpage-317715-15640_8_1"
											dd_src="jpg _bc436f39478969d7" dd_name="图书A版_下图4-4_TAB5">
											<img src="http://img60.ddimg.cn/ww/zx/11/shxmdd.jpg" ddt-pit="1"
												ddt-src="jpg _bc436f39478969d7"></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script>
					$(document).ready(function () {
						$(".detail-frame").addClass("hide");
						$("#MainContent_DlGoodMarketTab1 span:first .overview-frame").addClass("hide").next().removeClass(
							"hide");
						$("#MainContent_DlGoodMarketTab2 span:first .overview-frame").addClass("hide").next().removeClass(
							"hide");
						$(".rank_frame").hover(function () {
							$(this).children(".overview-frame").addClass("hide").next().removeClass("hide");
							$(this).parent("span").siblings().find(".overview-frame").removeClass("hide").next()
								.addClass("hide");
						});
					});
				</script>
				<div class="floor_tab_bang " id="component_map_id_3208542_part_id_9371" name="m3208542_pid9377_p9371"
					js="true" itemclass="" action="hover" delay="0" speed="0" rand="0" area="1" barclass="on" updown="1"
					level="2" ddt-area="9371">
					<div class="head  headfloor_tab_bang">
						<ul class="tab_aa">
							<li class="tabh_0  first on" type="bar"><a
									href="http://bang.dangdang.com/books/bestsellers/01.00.00.00.00.00-recent7-0-0-1-1"
									target="_blank" dd_name="图书畅销榜"><span>图书畅销榜</span></a></li>
							<li class="tabh_1" type="bar"><a
									href="http://bang.dangdang.com/books/childrensbooks/01.41.00.00.00.00-24hours-0-0-1-1-newhotsell"
									target="_blank" dd_name="童书新书榜"><span>童书新书榜</span></a></li>
						</ul>


					</div>
					<div class="tab_content_aa tab_content_aafloor_tab_bang ">
						<div class="content tab_1" type="item" ddt-area="9374" dd_name="图书畅销榜" style="display: block;">
							<asp:DataList ID="DlGoodMarketTab1" runat="server" RepeatDirection="Horizontal"
								RepeatLayout="Flow" Width="278px">
								<ItemTemplate>
									<span class="rank_frame" id='<%#"rank"+Eval("Rank") %>'>
										<span class="overview-frame">
											<span class="rank span-float"><%# Eval("Rank") %></span>
											<span class="span-float goods-rank-frame goods-frame">
												<a href='<%# Eval("BookUrl") %>'><%# Eval("BookName") %> </a>
											</span>
											<span class="clear"></span>
										</span>
										<span class="detail-frame">
											<span class="rank span-float">
												<%# Eval("Rank") %>
											</span>
											<span class="span-float goods-frame "><a href='<%# Eval("BookUrl") %>'>
													<span class="span-float goods-rank-frame">
														<img class="bookimg" src='<%# Eval("picUrl") %>'>
													</span>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
														class="span-float goods-rank-frame goods-frame goods-detail"><span
															class="goods-detail-name"><%# Eval("BookName") %></span><br />
														<span
															class="goods-detail-introduce"><%# Eval("BookIntroduce") %></span></span><span
														class="clear"></span></a></span><span
												class="clear"></span></span></span>
								</ItemTemplate>
							</asp:DataList>
						</div>

						<div class="content tab_2" type="item" style="display: none;" dd_name="童书新书榜">
							<asp:DataList ID="DlGoodMarketTab2" runat="server" RepeatDirection="Horizontal"
								RepeatLayout="Flow" Width="278px">
								<ItemTemplate>
									<span class="rank_frame" id='<%#"rank"+Eval("Rank") %>'>
										<span class="overview-frame">
											<span class="rank span-float"><%# Eval("Rank") %></span>
											<span class="span-float goods-rank-frame goods-frame">
												<a href='<%# Eval("BookUrl") %>'><%# Eval("BookName") %> </a>
											</span>
											<span class="clear"></span>
										</span>
										<span class="detail-frame">
											<span class="rank span-float">
												<%# Eval("Rank") %>
											</span>
											<span class="span-float goods-frame "><a href='<%# Eval("BookUrl") %>'>
													<span class="span-float goods-rank-frame">
														<img class="bookimg" src='<%# Eval("picUrl") %>'>
													</span>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
														class="span-float goods-rank-frame goods-frame goods-detail"><span
															class="goods-detail-name"><%# Eval("BookName") %></span><br />
														<span
															class="goods-detail-introduce"><%# Eval("BookIntroduce") %></span></span><span
														class="clear"></span></a></span><span
												class="clear"></span></span></span>
								</ItemTemplate>
							</asp:DataList>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<br />
</asp:Content>