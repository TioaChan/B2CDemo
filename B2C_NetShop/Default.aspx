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
					<img src="img/product-ad-img/sponsor.jpg" alt="Alternate Text"
						style="height:185px;width:202px" /></a>
				<div id="notice">
					<div class="home_notice_gg">
						<div class="head  headhome_notice_gg">
							<ul class="tab_aa">
								<li class="tabh_0  first"><span>信息公告</span></li>
								<li class="tabh_1 on"><a href="http://blog.dangdang.com/?page_id=3382"
										target="_blank"><span>服务公告</span></a></li>
							</ul>
						</div>
						<div class="tab_content_aa tab_content_aahome_notice_gg ">
							<div class="content tab_1">
								<div id="logo_content">
									<ul id="cxgg_content">
										<li>
											<a href="http://shop.dangdang.com/21540" target="_blank"
												title="笛莎大牌日，限时4件2折">
												<span>笛莎大牌日，限时4件2折</span>
											</a>
										</li>
										<li>
											<a href="http://shop.dangdang.com/21611" target="_blank"
												title="珀莱雅约惠日 限时3件4折">
												<span>珀莱雅约惠日 限时3件4折</span>
											</a>
										</li>
										<li>
											<a href="http://book.dangdang.com/520aidu" target="_blank"
												title="百万图书每满100减50">
												<span>百万图书每满100减50</span>
											</a>
										</li>
										<li>
											<a href="http://shop.dangdang.com/19384" target="_blank"
												title="飞利浦儿童节350减40">
												<span>飞利浦儿童节350减40</span>
											</a>
										</li>
										<li>
											<a href="http://baby.dangdang.com/20190514_haei" target="_blank"
												title="礼品童书每满100减50">
												<span>礼品童书每满100减50</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="content tab_2" style="display: block;">
								<div id="logo_content">
									<ul id="cxgg_content">
										<li>
											<a href="http://blog.dangdang.com/?p=28129%20%3E%3Cspan%20style="
												target="_blank" title="快钱网“光大银行”支付关闭通知">
												<span>快钱网“光大银行”支付关闭通知</span>
											</a>
										</li>
										<li>
											<a href="http://book.dangdang.com/20161128_zl3t" target="_blank"
												title="当当阅读器 海量电子书随时读">
												<span>当当阅读器 海量电子书随时读</span>
											</a>
										</li>
										<li>
											<a href="http://cashier.dangdang.com/exchangeApply" target="_blank"
												title="话费卡兑换当当礼品卡">
												<span>话费卡兑换当当礼品卡</span>
											</a>
										</li>
										<li>
											<a href="http://giftcard.dangdang.com/goods?type=mall" target="_blank"
												title="多种商品，礼品卡支付更优惠！">
												<span>多种商品，礼品卡支付更优惠！</span>
											</a>
										</li>
										<li>
											<a href="http://blog.dangdang.com/?p=22276" target="_blank"
												title="关于假冒客服诈骗的声明">
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
					<a href="http://book.dangdang.com/" target="_blank">图书</a>

					<span>.</span>
					<a href="http://e.dangdang.com/" target="_blank">电子书</a>
					<span>.</span>
					<a href="http://e.dangdang.com/new_original_index_page.html" target="_blank">网络文学</a>
				</div>
				<div class="tab_box_aa " id="component_map_id_3208542_part_id_9339">
					<div class="head  head">
						<ul class="tab_aa">
							<li class="tabh_0  first"><span>最新上架</span></li>
							<li class="tabh_1"><span>独家畅品</span></li>
							<li class="tabh_2 on"><span>重点推荐</span></li>
							<li class="tabh_3"><span>电子书</span></li>
							<li class="tabh_4"><span>网络文学</span></li>
						</ul>
					</div>
					<div class="tab_content_aa tab_content_aa ">
						<div class="content left-tab_1" style="display: none;">
							<div class=" ">
								<div class="con">
									<a class="book_left_pic book_left_pic_1 pic" title="礼品童书 每满100减50">
										<img src=" http://img62.ddimg.cn/upload_img/00678/zsts/lcdt238x441-1558317845.jpg" title="礼品童书 每满100减50" alt="礼品童书 每满100减50">
									</a>
									<ul class="book_tab_img">
										<li class="line line1 on">
											<a href="http://book.dangdang.com/children?ref=book-01-A" target="_blank"
												class="" title="童书">童书</a> </li>
										<li class="line line2 ">
											<a href="http://book.dangdang.com/study" target="_blank" class=""
												title="中小学教辅">中小学教辅</a>
										</li>
										<li class="line line3 ">
											<a href="http://book.dangdang.com/language" target="_blank" class=""
												title="外语">外语</a>
										</li>
										<li class="line line4 ">
											<a href="http://book.dangdang.com/exam" target="_blank" class=""
												title="考试">考试</a>
										</li>
										<li class="line line5 ">
											<a href="http://book.dangdang.com/01.03.htm" target="_blank" class=""
												title="小说">小说</a> </li>
										<li class="line line6 ">
											<a href="http://book.dangdang.com/01.05.htm" target="_blank" class=""
												title="文学">文学</a> </li>
										<li class="line line7 ">
											<a href=" http://book.dangdang.com/01.01.htm" target="_blank" class="" title="青春文学">青春文学</a> </li>
										<li class="line line8 ">
											<a href="http://book.dangdang.com/01.21.htm" target="_blank" class=""
												title="成功/励志">成功/励志</a> </li>
										<li class="line line9 ">
											<a href="http://book.dangdang.com/01.22.htm" target="_blank" class=""
												title="管理">管理</a> </li>
										<li class="line line10 ">
											<a href="http://book.dangdang.com/01.36.htm" target="_blank" class=""
												title="历史">历史</a> </li>
										<li class="line line11 ">
											<a href="http://book.dangdang.com/01.15.htm" target="_blank" class=""
												title="亲子/家教">亲子/家教</a> </li>
										<li class="line line12 ">
											<a href="http://category.dangdang.com/cp01.00.00.00.00.00.html"
												target="_blank" class="" title="全部分类>">全部分类&gt;</a> </li>
									</ul>
									<div class="roll_aa " id="mapid_3208542_parent_9370_9354_9345_part_9345">
										<div class="btn_brand_prev" style="display: none;"></div>
										<div class="btn_brand_next" style="display: none;"></div>
										<ul class="mix_marquee_tab" style="margin-left: -12px;">
											<li class="current">1</li>
											<li class="">2</li>
										</ul>
										<div class="over">
											<ul class="" style="left: 0px;">
												<li class="_li_1"><a href="http://book.dangdang.com/20190214_kfqo"
														target="_blank" class="pic" title="豆瓣读书榜单">
														<img src="http://img63.ddimg.cn/upload_img/00779/xmj/lou-1558507603.jpg"
															alt="豆瓣读书榜单"></a></li>
												<li class="_li_2"><a href="http://baby.dangdang.com/2019new5"
														target="_blank" class="pic" title="童书5月新书速递">
														<img src="http://img60.ddimg.cn/upload_img/00678/zsts/lcbanner-1556618423.jpg"
															alt="童书5月新书速递"></a></li>
											</ul>
										</div>
									</div>
									<div class="book_upper2">
										<div class="m-left-tab">
											<div id="list2">
												<asp:DataList ID="dl_tab1" runat="server" RepeatDirection="Horizontal"
													RepeatLayout="Flow">
													<ItemTemplate>
														<ul class="list_aa ">
															<li class="line1 on"><a href='<%# Eval("BookUrl") %>'>
																	<img class="bookimg" src='<%# Eval("picUrl") %>'>
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
																	<img class="bookimg" src='<%# Eval("picUrl") %>'>
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
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
														</ul>
													</ItemTemplate>
												</asp:DataList>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="content left-tab_2" style="display: block;">
							<div>
								<div class="con">
									<a class="book_left_pic book_left_pic_1  pic"
										href="http://baby.dangdang.com/20190430_ln31" title="童书 每满100减50"
										target="_blank">
										<img src="http://img62.ddimg.cn/upload_img/00678/zsts/lcdt238x441-1558317845.jpg"
											title="童书 每满100减50" alt="童书 每满100减50"></a>
									<ul class="book_tab_img">
										<li class="line line1 on">
											<a href="http://book.dangdang.com/children?ref=book-01-A" target="_blank"
												class="" title="童书">童书</a> </li>
										<li class="line line2 ">
											<a href="http://book.dangdang.com/study" target="_blank" class=""
												title="中小学教辅">中小学教辅</a>
										</li>
										<li class="line line3">
											<a href="http://book.dangdang.com/language" target="_blank" class=""
												title="外语">外语</a>
										</li>
										<li class="line line4 ">
											<a href="http://book.dangdang.com/exam" target="_blank" class=""
												title="考试">考试</a>
										</li>
										<li class="line line5">
											<a href="http://book.dangdang.com/01.03.htm" target="_blank" class=""
												title="小说">小说</a> </li>
										<li class="line line6">
											<a href="http://book.dangdang.com/01.05.htm" target="_blank" class=""
												title="文学">文学</a> </li>
										<li class="line line7">
											<a href="http://book.dangdang.com/01.01.htm" target="_blank" class=""
												title="青春文学">青春文学</a> </li>
										<li class="line line8 ">
											<a href="http://book.dangdang.com/01.21.htm" target="_blank" class=""
												title="成功/励志">成功/励志</a> </li>
										<li class="line line9 ">
											<a href="http://book.dangdang.com/01.22.htm" target="_blank" class=""
												title="管理">管理</a> </li>
										<li class="line line10 ">
											<a href="http://book.dangdang.com/01.36.htm" target="_blank" class=""
												title="历史">历史</a> </li>
										<li class="line line11 ">
											<a href="http://book.dangdang.com/01.15.htm" target="_blank" class=""
												title="亲子/家教">亲子/家教</a> </li>
										<li class="line line12 ">
											<a href="http://category.dangdang.com/cp01.00.00.00.00.00.html"
												target="_blank" class="" title="全部分类>">全部分类&gt;</a> </li>
									</ul>
									<div class="roll_aa " id="mapid_3208542_parent_9370_9356_9345_part_9345">
										<div class="btn_brand_prev" style="display: none;"></div>
										<div class="btn_brand_next" style="display: none;"></div>
										<ul class="mix_marquee_tab" style="margin-left: -12px;">
											<li class="">1</li>
											<li class="current">2</li>
										</ul>
										<div class="over">
											<ul class="" style="left: 0px;">
												<li class="_li_2"><a href="http://baby.dangdang.com/20190514_haei-3-6"
														target="_blank" class="pic" title="3-6岁童书每满100减50">
														<img src="http://img60.ddimg.cn/upload_img/00678/zsts/lcbanner3-6-1558317845.jpg"
															alt="3-6岁童书每满100减50"></a></li>
												<li class="_li_1"><a href="http://book.dangdang.com/20180731_0hu0"
														target="_blank" class="pic" title="生活49元5件">
														<img src="http://img63.ddimg.cn/upload_img/00727/wangsiyu/bannerdangshou0107-1546838986.jpg"
															alt="生活49元5件"></a></li>
											</ul>
										</div>
									</div>
									<div class="book_upper2 ">
										<ul class="list_aa " id="component_3208542__9370_9356_9348_9346__9346">
											<li class="line1"><a
													title="就喜欢你看不惯我 又干不掉我的样子2(霸气吾皇率蠢萌巴扎黑、伪深邃的牛能强势归来！当当独家附赠4张吾皇密旨，另有3张呆萌表情贴纸+2本萌宠手账)"
													class="img" href="http://product.dangdang.com/23980643.html"
													target="_blank">
													<img src="http://img3m3.ddimg.cn/71/18/23980643-1_l_15.jpg"
														alt="就喜欢你看不惯我 又干不掉我的样子2(霸气吾皇率蠢萌巴扎黑、伪深邃的牛能强势归来！当当独家附赠4张吾皇密旨，另有3张呆萌表情贴纸+2本萌宠手账)"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="就喜欢你看不惯我 又干不掉我的样子2(霸气吾皇率蠢萌巴扎黑、伪深邃的牛能强势归来！当当独家附赠4张吾皇密旨，另有3张呆萌表情贴纸+2本萌宠手账)"
														href="http://product.dangdang.com/23980643.html"
														target="_blank">就喜欢你看不惯我
														又干不掉我的样子2(霸气吾皇率蠢萌巴扎黑、伪深邃的牛能强势归来！当当独家附赠4张吾皇密旨，另有3张呆萌表情贴纸+2本萌宠手账)</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">41</span><span
															class="tail">.40</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">46</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_9356_9348_9347__9347">
											<li class="line1"><a title="百年童话绘本（平装30册）" class="img"
													href="http://product.dangdang.com/24030562.html" target="_blank">
													<img src="http://img3m2.ddimg.cn/94/24/24030562-1_l_20.jpg"
														alt="百年童话绘本（平装30册）"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="百年童话绘本（平装30册）"
														href="http://product.dangdang.com/24030562.html"
														target="_blank">百年童话绘本（平装30册）</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">155</span><span
															class="tail">.40</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">444</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
									</div>
									<div class="book_lower4 ">
										<ul class="list_aa " id="component_3208542__9370_9356_9353_9349__9349">
											<li class="line1"><a title="《崔玉涛图解家庭育儿（最新升级版）》（套装全10册）[精选套装]" class="img"
													href="http://product.dangdang.com/24187699.html" target="_blank">
													<img src="http://img3m9.ddimg.cn/19/22/24187699-1_l_7.jpg"
														alt="《崔玉涛图解家庭育儿（最新升级版）》（套装全10册）[精选套装]"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="《崔玉涛图解家庭育儿（最新升级版）》（套装全10册）[精选套装]"
														href="http://product.dangdang.com/24187699.html"
														target="_blank">《崔玉涛图解家庭育儿（最新升级版）》（套装全10册）[精选套装]</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">315</span><span
															class="tail">.90</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">376</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_9356_9353_9350__9350">
											<li class="line1"><a title="我们仨（当当网独家布面精装珍藏版）" class="img"
													href="http://product.dangdang.com/24003255.html" target="_blank">
													<img src="http://img3m5.ddimg.cn/12/23/24003255-1_l_5.jpg"
														alt="我们仨（当当网独家布面精装珍藏版）"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="我们仨（当当网独家布面精装珍藏版）"
														href="http://product.dangdang.com/24003255.html"
														target="_blank">我们仨（当当网独家布面精装珍藏版）</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">38</span><span
															class="tail">.70</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">43</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_9356_9353_9351__9351">
											<li class="line1"><a title="边城：沈从文小说精粹（一曲爱与美的田园牧歌）" class="img"
													href="http://product.dangdang.com/26922459.html" target="_blank">
													<img src="http://img3m9.ddimg.cn/3/1/26922459-1_l_3.jpg"
														alt="边城：沈从文小说精粹（一曲爱与美的田园牧歌）"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="边城：沈从文小说精粹（一曲爱与美的田园牧歌）"
														href="http://product.dangdang.com/26922459.html"
														target="_blank">边城：沈从文小说精粹（一曲爱与美的田园牧歌）</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">30</span><span
															class="tail">.10</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">32</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_9356_9353_9352__9352">
											<li class="line1"><a title="南怀瑾著作选集（南怀瑾先生生前亲笔签约授权，亲加审阅的定本，套装15册）"
													class="img" href="http://product.dangdang.com/25548039.html"
													target="_blank">
													<img src="http://img3m9.ddimg.cn/0/20/25548039-1_l_5.jpg"
														alt="南怀瑾著作选集（南怀瑾先生生前亲笔签约授权，亲加审阅的定本，套装15册）"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="南怀瑾著作选集（南怀瑾先生生前亲笔签约授权，亲加审阅的定本，套装15册）"
														href="http://product.dangdang.com/25548039.html"
														target="_blank">南怀瑾著作选集（南怀瑾先生生前亲笔签约授权，亲加审阅的定本，套装15册）</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">661</span><span
															class="tail">.30</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">698</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="content left-tab_3" style="display: none;">
							<div class=" ">
								<div class="con ">
									<a class="book_left_pic book_left_pic_1  pic"
										href="http://book.dangdang.com/20190522_fayt" title="自出版" target="_blank">
										<img src="http://img50.ddimg.cn/9001320089129550.jpg" title="自出版" alt="自出版"></a>
									<ul class="book_tab_img">
										<li class="line line1 on">
											<a href="http://book.dangdang.com/children?ref=book-01-A" target="_blank"
												class="" title="童书">童书</a> </li>
										<li class="line line2 ">
											<a href="http://book.dangdang.com/study" target="_blank" class=""
												title="中小学教辅">中小学教辅</a>
										</li>
										<li class="line line3 ">
											<a href="http://book.dangdang.com/language" target="_blank" class=""
												title="外语">外语</a>
										</li>
										<li class="line line4 ">
											<a href="http://book.dangdang.com/exam" target="_blank" class=""
												title="考试">考试</a>
										</li>
										<li class="line line5 ">
											<a href="http://book.dangdang.com/01.03.htm" target="_blank" class=""
												title="小说">小说</a> </li>
										<li class="line line6 ">
											<a href="http://book.dangdang.com/01.05.htm" target="_blank" class=""
												title="文学">文学</a> </li>
										<li class="line line7 ">
											<a href="http://book.dangdang.com/01.01.htm" target="_blank" class=""
												title="青春文学">青春文学</a> </li>
										<li class="line line8 ">
											<a href="http://book.dangdang.com/01.21.htm" target="_blank" class=""
												title="成功/励志">成功/励志</a> </li>
										<li class="line line9 ">
											<a href="http://book.dangdang.com/01.22.htm" target="_blank" class=""
												title="管理">管理</a> </li>
										<li class="line line10 ">
											<a href="http://book.dangdang.com/01.36.htm" target="_blank" class=""
												title="历史">历史</a> </li>
										<li class="line line11 ">
											<a href="http://book.dangdang.com/01.15.htm" target="_blank" class=""
												title="亲子/家教">亲子/家教</a> </li>
										<li class="line line12 ">
											<a href="http://category.dangdang.com/cp01.00.00.00.00.00.html"
												target="_blank" class="" title="全部分类>">全部分类&gt;</a> </li>
									</ul>
									<div class="roll_aa " id="mapid_3208542_parent_9370_9358_9345_part_9345">
										<div class="btn_brand_prev" style="display: none;"></div>
										<div class="btn_brand_next" style="display: none;"></div>
										<ul class="mix_marquee_tab" style="margin-left: -12px;">
											<li class="current">1</li>
											<li class="">2</li>
										</ul>
										<div class="over">

											<ul class="" style="left: 0px;">
												<li class="_li_1"><a href="http://book.dangdang.com/20190522_ojjv"
														target="_blank" class="pic" title="艺术传记">
														<img src="http://img62.ddimg.cn/upload_img/00726/0122/335x220_0519-1558275199.jpg"
															alt="艺术传记"></a></li>
												<li class="_li_2"><a href="http://baby.dangdang.com/20190514_haei-7-10"
														target="_blank" class="pic" title="7-10岁童书每满100减50">
														<img src="http://img60.ddimg.cn/upload_img/00678/zsts/lcbanner7-10-1558317845.jpg"
															alt="7-10岁童书每满100减50"></a></li>
											</ul>
										</div>
									</div>
									<div class="book_upper2 ">
										<ul class="list_aa " id="component_3208542__9370_9358_9348_9346__9346">
											<li class="line1"><a title="漫威电影宇宙十周年纪念礼盒" class="img"
													href="http://product.dangdang.com/26314845.html" target="_blank">
													<img src="http://img3m5.ddimg.cn/51/1/26314845-1_l_4.jpg"
														alt="漫威电影宇宙十周年纪念礼盒"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="漫威电影宇宙十周年纪念礼盒"
														href="http://product.dangdang.com/26314845.html"
														target="_blank">漫威电影宇宙十周年纪念礼盒</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">148</span><span
															class="tail">.50</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">198</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_9358_9348_9347__9347">
											<li class="line1"><a title="宫西达也超级绘本（全11册）" class="img"
													href="http://product.dangdang.com/26912902.html" target="_blank">
													<img src="http://img3m2.ddimg.cn/49/27/26912902-1_l_3.jpg"
														alt="宫西达也超级绘本（全11册）"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="宫西达也超级绘本（全11册）"
														href="http://product.dangdang.com/26912902.html"
														target="_blank">宫西达也超级绘本（全11册）</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">72</span><span
															class="tail">.50</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">186</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
									</div>
									<div class="book_lower4 ">
										<ul class="list_aa " id="component_3208542__9370_9358_9353_9349__9349">
											<li class="line1"><a title="游戏力畅销版套装（全3册）[精选套装]" class="img"
													href="http://product.dangdang.com/25283331.html" target="_blank">
													<img src="http://img3m1.ddimg.cn/18/10/25283331-1_l_3.jpg"
														alt="游戏力畅销版套装（全3册）[精选套装]"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="游戏力畅销版套装（全3册）[精选套装]"
														href="http://product.dangdang.com/25283331.html"
														target="_blank">游戏力畅销版套装（全3册）[精选套装]</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">113</span><span
															class="tail">.60</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">142</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_9358_9353_9350__9350">
											<li class="line1"><a title="" class="img"
													href="http://product.dangdang.com/22499229.html" target="_blank">
													<img src="http://img3m9.ddimg.cn/93/10/22499229-1_l_4.jpg"
														alt=""></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="" href="http://product.dangdang.com/22499229.html"
														target="_blank">朱镕基讲话实录（全四册平装、双色印刷）
														团购电话:4001066666转6</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">196</span><span
															class="tail">.00</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">196</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_9358_9353_9351__9351">
											<li class="line1"><a title="阿城作品（4册）（2019插图典藏本）" class="img"
													href="http://product.dangdang.com/27849094.html" target="_blank">
													<img src="http://img3m4.ddimg.cn/97/8/27849094-1_l_2.jpg"
														alt="阿城作品（4册）（2019插图典藏本）"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="阿城作品（4册）（2019插图典藏本）"
														href="http://product.dangdang.com/27849094.html"
														target="_blank">阿城作品（4册）（2019插图典藏本）</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">144</span><span
															class="tail">.00</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">192</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_9358_9353_9352__9352">
											<li class="line1"><a title="稻盛和夫阿米巴经营经典套装" class="img"
													href="http://product.dangdang.com/25288392.html" target="_blank">
													<img src="http://img3m2.ddimg.cn/30/2/25288392-1_l_1.jpg"
														alt="稻盛和夫阿米巴经营经典套装"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="稻盛和夫阿米巴经营经典套装"
														href="http://product.dangdang.com/25288392.html"
														target="_blank">稻盛和夫阿米巴经营经典套装</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">74</span><span
															class="tail">.70</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">84</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="content left-tab_4" style="display: none;">
							<div class=" ">
								<div class="con ">
									<a class="book_left_pic book_left_pic_1  pic"
										href="http://book.dangdang.com/20190521_kbiz" title="电子书" target="_blank">
										<img src="http://img62.ddimg.cn/ddreader/dangebook/left_logo-74.jpg" title="电子书"
											alt="电子书"></a>
									<ul class="book_tab_img">
										<li class="line line1 on">
											<a href="http://e.dangdang.com/new_original_index_page.html" target="_blank"
												class="" title="网文">网文</a> </li>
										<li class="line line2 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=XS2&amp;dimension=dd_sale&amp;order=0"
												target="_blank" class="" title="小说">小说</a> </li>
										<li class="line line3 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=JG&amp;dimension=dd_sale&amp;order=0"
												target="_blank" class="" title="经管励志">经管励志</a> </li>
										<li class="line line4 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=WY1&amp;dimension=dd_sale&amp;order=0"
												target="_blank" class="" title="文艺">文艺</a> </li>
										<li class="line line5 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=SK&amp;dimension=dd_sale&amp;order=0"
												target="_blank" class="" title="社科">社科</a> </li>
										<li class="line line6 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=SH&amp;dimension=dd_sale&amp;order=0"
												target="_blank" class="" title="生活">生活</a> </li>
										<li class="line line7 ">
											<a href="http://e.dangdang.com/rank_detail_page.html?listType=ddds_sale&amp;channelType=all"
												target="_blank" class="" title="新书榜">新书榜</a> </li>
										<li class="line line8 ">
											<a href="http://e.dangdang.com/rank_detail_page.html?listType=ddds_sale&amp;channelType=all"
												target="_blank" class="" title="畅销榜">畅销榜</a> </li>
										<li class="line line9 ">
											<a href="http://e.dangdang.com/index_page.html" target="_blank" class=""
												title="查看所有">查看所有</a> </li>
									</ul>
									<div class="roll_aa " id="mapid_3208542_parent_9370_10020_9345_part_9345">
										<div class="btn_brand_prev" style="display: none;"></div>
										<div class="btn_brand_next" style="display: none;"></div>
										<ul class="mix_marquee_tab" style="margin-left: -19px;">
											<li class="">1</li>
											<li class="">2</li>
											<li class="current">3</li>
										</ul>
										<div class="over">
											<ul class="" style="left: 0px;">
												<li class="_li_3"><a
														href="http://category.dangdang.com/cp98.01.00.00.00.00-lp-hp5.html"
														target="_blank" class="pic" title="轮播3">
														<img src="http://img63.ddimg.cn/ebook/201709/dslc-lz-3.jpg"
															alt="轮播3"></a></li>
												<li class="_li_1"><a href="http://book.dangdang.com/20161128_zl3t"
														target="_blank" class="pic" title="轮播1">
														<img src="http://img60.ddimg.cn/ddreader/dangebook/0616ydq.jpg"
															alt="轮播1"></a></li>
												<li class="_li_2"><a
														href="http://e.dangdang.com/rank_detail_page.html?listType=ddds_sale&amp;channelType=all&amp;timeDimension=1"
														target="_blank" class="pic" title="轮播2">
														<img src="http://img60.ddimg.cn/ebook/201709/dslc-lz-2.jpg"
															alt="轮播2"></a></li>
											</ul>
										</div>
									</div>
									<div class="book_upper2 ">
										<ul class="list_aa " id="component_3208542__9370_10020_9348_9346__9346">
											<li class="line1"><a title="三体全集(全3册)" class="img"
													href="http://product.dangdang.com/1901104637.html" target="_blank">
													<img src="http://img3m7.ddimg.cn/14/15/1901104637-1_l_4.jpg"
														alt="三体全集(全3册)"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="三体全集(全3册)"
														href="http://product.dangdang.com/1901104637.html"
														target="_blank">三体全集(全3册)</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">29</span><span
															class="tail">.99</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">93</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_10020_9348_9347__9347">
											<li class="line1"><a
													title="半生缘（刘嘉玲、蒋欣、郑元畅、郭晓冬主演同名电视剧即将热映！一场旧上海的爱情悲歌，谱就时代与人心的无可奈何。）"
													class="img" href="http://product.dangdang.com/1901119065.html"
													target="_blank">
													<img src="http://img3m5.ddimg.cn/87/13/1901119065-1_l_1.jpg"
														alt="半生缘（刘嘉玲、蒋欣、郑元畅、郭晓冬主演同名电视剧即将热映！一场旧上海的爱情悲歌，谱就时代与人心的无可奈何。）"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="半生缘（刘嘉玲、蒋欣、郑元畅、郭晓冬主演同名电视剧即将热映！一场旧上海的爱情悲歌，谱就时代与人心的无可奈何。）"
														href="http://product.dangdang.com/1901119065.html"
														target="_blank">半生缘（刘嘉玲、蒋欣、郑元畅、郭晓冬主演同名电视剧即将热映！一场旧上海的爱情悲歌，谱就时代与人心的无可奈何。）</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">12</span><span
															class="tail">.99</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">33</span><span
															class="tail">.00</span></span>
												</p>
											</li>
										</ul>
									</div>
									<div class="book_lower4 ">
										<ul class="list_aa " id="component_3208542__9370_10020_9353_9349__9349">
											<li class="line1"><a title="升维：让你人生出众的另类通道" class="img"
													href="http://product.dangdang.com/1901127340.html" target="_blank">
													<img src="http://img3m0.ddimg.cn/46/0/1901127340-1_l_1.jpg"
														alt="升维：让你人生出众的另类通道"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="升维：让你人生出众的另类通道"
														href="http://product.dangdang.com/1901127340.html"
														target="_blank">升维：让你人生出众的另类通道</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">16</span><span
															class="tail">.99</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">26</span><span
															class="tail">.99</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_10020_9353_9350__9350">
											<li class="line1"><a title="共情的力量" class="img"
													href="http://product.dangdang.com/1901123632.html" target="_blank">
													<img src="http://img3m2.ddimg.cn/1/29/1901123632-1_l_1.jpg"
														alt="共情的力量"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="共情的力量" href="http://product.dangdang.com/1901123632.html"
														target="_blank">共情的力量</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">18</span><span
															class="tail">.99</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">18</span><span
															class="tail">.99</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_10020_9353_9351__9351">
											<li class="line1"><a title="美国陷阱" class="img"
													href="http://product.dangdang.com/1901123848.html" target="_blank">
													<img src="http://img3m8.ddimg.cn/19/23/1901123848-1_l_1.jpg"
														alt="美国陷阱"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="美国陷阱" href="http://product.dangdang.com/1901123848.html"
														target="_blank">美国陷阱</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">24</span><span
															class="tail">.99</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">40</span><span
															class="tail">.80</span></span>
												</p>
											</li>
										</ul>
										<ul class="list_aa " id="component_3208542__9370_10020_9353_9352__9352">
											<li class="line1"><a title="能力陷阱(樊登读书力荐好书！教你如何摆脱能力陷阱，花更多时间进行策略性思考！)"
													class="img" href="http://product.dangdang.com/1901124051.html"
													target="_blank">
													<img src="http://img3m1.ddimg.cn/24/4/1901124051-1_l_1.jpg"
														alt="能力陷阱(樊登读书力荐好书！教你如何摆脱能力陷阱，花更多时间进行策略性思考！)"></a>
												<div class="icon_pop"></div>
												<p class="name">
													<a title="能力陷阱(樊登读书力荐好书！教你如何摆脱能力陷阱，花更多时间进行策略性思考！)"
														href="http://product.dangdang.com/1901124051.html"
														target="_blank">能力陷阱(樊登读书力荐好书！教你如何摆脱能力陷阱，花更多时间进行策略性思考！)</a>
												</p>
												<p class="price">
													<span class="rob"><span class="sign">¥</span><span
															class="num">26</span><span
															class="tail">.99</span></span><span class="price_r"><span
															class="sign">¥</span><span class="num">44</span><span
															class="tail">.99</span></span>
												</p>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="content left-tab_5" style="display: none;">
							<div class=" ">
								<div class="con ">
									<a class="book_left_pic book_left_pic_1  pic"
										href="http://e.dangdang.com/special_page.html?stId=4160" title=""
										target="_blank">
										<img src="http://img61.ddimg.cn/ww/zx/12/bzaddd.jpg"></a>
									<ul class="book_tab_img">
										<li class="line line1 on">
											<a href="http://e.dangdang.com/classification_list_page.html?category=XHQH&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="玄幻奇幻">玄幻奇幻</a> </li>
										<li class="line line2 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=XDDS&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="现代都市">现代都市</a> </li>
										<li class="line line3 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=WXXX&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="武侠仙侠">武侠仙侠</a> </li>
										<li class="line line4 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=LSJS&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="历史军事">历史军事</a> </li>
										<li class="line line5 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=XDYQ&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="现代言情">现代言情</a> </li>
										<li class="line line6">
											<a href="http://e.dangdang.com/classification_list_page.html?category=CYCS&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="穿越重生">穿越重生</a> </li>
										<li class="line line7 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=GZYQ&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="古装言情">古装言情</a> </li>
										<li class="line line8 ">
											<a href="http://e.dangdang.com/classification_list_page.html?category=QCXY&amp;dimension=sale&amp;order=0"
												target="_blank" class="" title="青春校园">青春校园</a> </li>
									</ul>
									<div class="roll_aa " id="mapid_3208542_parent_9370_10073_10054_part_10054">
										<div class="btn_brand_prev" style="display: none;"></div>
										<div class="btn_brand_next" style="display: none;"></div>
										<ul class="mix_marquee_tab" style="margin-left: -12px;">
											<li class="">1</li>
											<li class="current">2</li>
										</ul>
										<div class="over">

											<ul class="" style="left: 0px;">
												<li class="_li_2"><a
														href="http://e.dangdang.com/special_page.html?stId=4159"
														target="_blank" class="pic" title="轮播2">
														<img src="http://img62.ddimg.cn/ww/zx/12/scgdd.jpg"
															alt="轮播2"></a></li>
												<li class="_li_1"><a
														href="http://e.dangdang.com/special_page.html?stId=4158"
														target="_blank" class="pic" title="轮播1">
														<img src="http://img62.ddimg.cn/ww/zx/12/lddsdd.jpg"
															alt="轮播1"></a></li>
											</ul>
										</div>
									</div>
									<div class="book_upper2 ">
										<a class=" _1  pic" href="http://e.dangdang.com/products/1980217243.html"
											title="" target="_blank">
											<img src="http://img62.ddimg.cn/ww/zx/11/dlsdd.jpg"></a>
										<a class=" _1  pic" href="http://e.dangdang.com/products/1980217535.html"
											title="" target="_blank">
											<img src="http://img62.ddimg.cn/ww/zx/11/cjgsdd.jpg"></a>
									</div>
									<div class="book_lower4 ">
										<a class=" _1  pic" href="http://e.dangdang.com/products/1980118924.html"
											title="" target="_blank">
											<img src="http://img60.ddimg.cn/ww/zx/11/qzdsdd.jpg"></a>
										<a class=" _1  pic" href="http://e.dangdang.com/products/1980437170.html"
											title="" target="_blank">
											<img src="http://img61.ddimg.cn/ww/zx/11/khsdd.jpg"></a>
										<a class=" _1  pic" href="http://e.dangdang.com/products/1980224561.html"
											title="" target="_blank">
											<img src="http://img62.ddimg.cn/ww/zx/11/gxjdd.jpg"></a>
										<a class=" _1  pic" href="http://e.dangdang.com/products/1980433921.html"
											title="" target="_blank">
											<img src="http://img60.ddimg.cn/ww/zx/11/shxmdd.jpg"></a>
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
				<div class="floor_tab_bang " id="component_map_id_3208542_part_id_9371">
					<div class="head  headfloor_tab_bang">
						<ul class="tab_aa">
							<li class="tabh_0  first on"><a
									href="http://bang.dangdang.com/books/bestsellers/01.00.00.00.00.00-recent7-0-0-1-1"
									target="_blank"><span>图书畅销榜</span></a></li>
							<li class="tabh_1"><a
									href="http://bang.dangdang.com/books/childrensbooks/01.41.00.00.00.00-24hours-0-0-1-1-newhotsell"
									target="_blank"><span>童书新书榜</span></a></li>
						</ul>
					</div>
					<div class="tab_content_aa tab_content_aafloor_tab_bang ">
						<div class="content tab_1" style="display: block;">
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
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
														class="span-float goods-rank-frame goods-frame goods-detail"><span
															class="goods-detail-name"><%# Eval("BookName") %></span><br /><span
															class="goods-detail-introduce"><%# Eval("BookIntroduce") %></span></span><span
														class="clear"></span></a></span><span
												class="clear"></span></span></span>
								</ItemTemplate>
							</asp:DataList>
						</div>

						<div class="content tab_2" style="display: none;">
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
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
														class="span-float goods-rank-frame goods-frame goods-detail"><span
															class="goods-detail-name"><%# Eval("BookName") %></span><br /><span
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