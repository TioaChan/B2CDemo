<%@ Page Title="首页_B2CDemo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B2C_NetShop._Default" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HalfPageContentPlaceHolder" runat="server">
	<style>
        #myCarousel {
            float: left;
            width: 760px;
            height: 315px;
            margin: 2px 5px;
            /*border: 1px red solid;*/
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
            background: url(/img/DefaultImg/login_bc.png) no-repeat;
        }

        #user_img { /*用户头像容器*/
            /*border: 1px red solid;*/
            margin: 20px 0px 0px 0px;
            height: 50px;
            width: 200px;
            text-align: center;
        }

        #user_info_container > #user_info { /*用户信息容器*/
            /*border: 1px red solid;*/
            height: 50px;
            width: 200px;
            text-align: center;
            font-size: 15px;
        }

        #user_info_btn {
            height: 50px;
            text-align: center;
            margin-top: 20px;
        }

        .user_info_btn_a {
            background: #FF0000;
            color: #fff;
            width: 50px;
            -webkit-transition-duration: .25s;
            -moz-transition-duration: .25s;
            -o-transition-duration: .25s;
            transition-duration: .25s;
            margin-left: 5px;
            padding: 3px 10px;
            border-radius: 5px;
        }

            .user_info_btn_a:hover {
                background: #FF0000;
                color: #fff;
                width: 50px;
                background-color: #444;
                color: white;
                box-shadow: 5px 5px 5px 5px rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.17);
                text-decoration: none;
            }

        .carousel-control.left, .carousel-control.right {
            background-image: none;
        }

        .clear {
            clear: both;
        }
    </style>
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
                    <img src="img/DefaultImg/4.jpg" alt="First slide">
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

        <div id="div_right">
            <div id="user_info_container">
                <div id="user_img">
                    <a href="User/Info.aspx" target="_blank">
                        <%--<img id="" src="Account/UserImg/DefaultUserImg.png" style="width: 50px; height: 50px">--%>
					<asp:Image ID="Image1" runat="server" style="width: 50px; height: 50px" ImageUrl="~/User/ImagesUpload/DefaultImage.png" /></a>
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
        </div>
        <div class="clear"></div>
    </div>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<style>
        body {
            background: #f6f6f6;
        }

        #footer .footer_goods_frame {
            height: 400px;
        }

        #footer #MainContent_DataList_RefinementGoods {
            height: 234px;
        }

        .footer_type h2 {
            margin: 0px;
        }

        #footer_1st, #footer_2nd, #footer_3rd { /*三个推荐栏目容器*/
            height: auto;
            border-bottom: 1px #eaeaea solid;
        }

        .footer_type { /*推荐栏目说明和按钮容器*/
            float: left;
        }

        .footer_goods_frame {
            height: 234px;
        }

        .footer_goods_detail {
            /*float:left;*/
            background: #fff;
            width: 220px;
            height: 400px;
            margin: 0px 8px;
            display: flex;
            text-align: center;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            height: 280px;
            margin-bottom: 10px;
            -webkit-transition-duration: .25s;
            -moz-transition-duration: .25s;
            -o-transition-duration: .25s;
            transition-duration: .25s;
        }

            .footer_goods_detail:hover {
                -webkit-box-shadow: 3px 3px 3px;
                -moz-box-shadow: 3px 3px 3px;
                box-shadow: 5px 5px 5px;
            }

        .bookImg {
            height: 171px;
            display: block;
            margin: 7px auto;
        }

        .footer_type {
            margin: 20px;
        }


        .book_name, .book_author, .book_price {
            display: block;
        }

        .book_name {
            font-family: Times New Roman;
            color: #000;
        }

        .book_author {
            color: rgba(0, 0, 0, 0.5);
        }


        .book_price {
            color: #fff;
            background: #ff6700;
            width: 100%;
            display: none;
            margin: 0 auto;
        }

        .footer_btn {
            float: right;
            margin-top: 30px;
        }

            .footer_btn > a { /*推荐位按钮样式，使用a代替按钮*/
                padding-top: 10px;
                height: 40px;
                width: 100px;
                text-align: center;
            }

        a:hover {
            text-decoration: none;
        }

        .product-card {
            width: 230px;
        }

        .btn-default {
            -webkit-transition-duration: .25s;
            -moz-transition-duration: .25s;
            -o-transition-duration: .25s;
            transition-duration: .25s;
        }
    </style>
    <script>
        $(function () {
            $(".footer_goods_detail").hover(function () {
                console.log($(this).is(":visible"));
                $(this).find(".book_price").slideDown();
            }, function () {
                $(this).find(".book_price").stop(true, false).slideUp();
            });
        });
    </script>
    <div id="footer">
        <div id="footer_1st">
            <div class="footer_type">
                <h2>商城精选</h2>
                <p>精选图书，值得一看</p>
            </div>
            <div class="footer_btn"><a class="btn btn-default" href="Goods/refinement.aspx">查看更多 &raquo;</a></div>
            <div class="footer_goods_frame">
                <%--datalist test start--%>
                <asp:DataList ID="DataList_RefinementGoods" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>

                        <div class="footer_goods_detail">
                            <a style="display: block;" href="<%# Eval("BookUrl") %>"><%--bookurl--%>
                                <%--bookimg--%>
                                <div class="product-card">
                                    <img src="<%# Eval("picUrl") %>" alt="Alternate Text" class="bookImg" />
                                    <span class="book_name"><%# Eval("BookName") %></span> <%--bookname--%>
                                    <span class="book_author"><%# Eval("Author") %>&nbsp;著</span> <%--bookauthor--%>
                                    <div class="book_price">售价：<%# Eval("HotPrice") %>&nbsp;元</div>
                                    <%--hotprice--%>
                            </a>
                        </div>

                    </ItemTemplate>
                </asp:DataList>
                <%--datalist test end--%>
            </div>
            <div class="clear"></div>
        </div>
        <div id="footer_2nd">
            <div class="footer_type">
                <h2>商城热卖</h2>
                <p>人气图书，每天更新</p>
            </div>
            <div class="footer_btn"><a class="btn btn-default" href="Goods/hot.aspx">查看更多 &raquo;</a></div>
            <div class="footer_goods_frame">
                <%--datalist test start--%>
                <asp:DataList ID="DataList_HotGoods" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <%--bookimg--%>
                        <div class="footer_goods_detail">
                            <div class="product-card">
                                <a href="<%# Eval("BookUrl") %>"><%--bookurl--%>
                                    <img src="<%# Eval("picUrl") %>" alt="Alternate Text" class="bookImg" />
                                    <%--bookimg--%>
                                    <span class="book_name"><%# Eval("BookName") %></span> <%--bookname--%>
                                    <span class="book_author"><%# Eval("Author") %>&nbsp;著</span> <%--bookauthor--%>
                                    <div class="book_price">售价：<%# Eval("HotPrice") %>&nbsp;元</div>
                                    <%--hotprice--%></a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <%--datalist test end--%>
            </div>
            <div class="clear"></div>
        </div>
        <div id="footer_3rd">
            <div class="footer_type">
                <h2>商城折扣</h2>
                <p>折扣图书，低至一折</p>
            </div>
            <div class="footer_btn"><a class="btn btn-default" href="Goods/discount.aspx">查看更多 &raquo;</a></div>
            <div class="footer_goods_frame">
                <%--datalist test start--%>
                <asp:DataList ID="DataList_DiscountGoods" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="footer_goods_detail">
                            <a href="<%# Eval("BookUrl") %>"><%--bookurl--%>
                                <%--bookimg--%>
                                <div class="product-card">
                                    <a href="#">
                                        <img src="<%# Eval("picUrl") %>" alt="Alternate Text" class="bookImg" />
                                    </a>
                                    <span class="book_name"><%# Eval("BookName") %></span> <%--bookname--%>
                                    <span class="book_author"><%# Eval("Author") %>&nbsp;著</span> <%--bookauthor--%>
                                    <div class="book_price">售价：<%# Eval("HotPrice") %>&nbsp;元</div>
                                    <%--hotprice--%>
                            </a>
                        </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <%--datalist test end--%>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <br />
</asp:Content>
