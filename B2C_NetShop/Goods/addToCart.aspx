<%@ Page Title="商品已成功加入购物车" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addToCart.aspx.cs" Inherits="B2C_NetShop.Goods.addToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HalfPageContentPlaceHolder" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<style>
         *{
             font-family:微软雅黑;
         }
 		#Master_content{
			display:none;
		}
		#addSuccess_frame{
			background-color:#eaeaea;
            position:relative;
		}
		#current_img{
			width:100px;
			height:100px;
			background-color:white;
			float:left;
			padding:7px 20px;
            margin:0px 10px 5px 10px;
		}
		#current_img>img{
			width:60px;
		}

		#current_bookinfo{
			float:left;
		}

        #right_a_button{
            position:absolute;
            bottom:20px;
            right:10px;
        }
            #right_a_button a{
                padding:10px 20px;
                margin-left:5px;
                border-radius:5px;
            }    

            #right_a_button #s{
                background:red;
                color:#fff;
                -webkit-transition-duration: .25s;
	            -moz-transition-duration: .25s;
	            -o-transition-duration: .25s;
	            transition-duration: .25s;
            }
            
            #right_a_button  #s:hover{
                background:#C91623;
                color:#fff;
                text-decoration:none;
            }

            #right_a_button #f{
                background:#fff;
                padding:10px;
                color:red;
                border:1px solid #fff;
            }
            
            #right_a_button  #f:hover{
                border:1px solid red;                
                text-decoration:none;
            }
	</style>
	<div id="addSuccess_frame">
		<p style="margin:0px; color:#84B247; font-size:20px; padding:10px;"><span style="background:url(/img/addtocart-icons.png) no-repeat; display:block; width:25px; height:25px; float:left;"></span>商品已成功加入购物车！</p>
		<asp:DataList ID="current_info" runat="server">
				<ItemTemplate>
					<div id="current_info_frame">
						<div id="current_img">
							<img src="<%# Eval("picUrl") %>" class="bookImg" />
						</div>
						<div id="current_bookinfo">
							<div id="current_bookname">
                                <a href=<%# Eval("BookUrl") %> runat="server"><%# Eval("BookName") %></a>
                            </div>
							<div id="cart_detile_num">
								数量：<asp:Label ID="Label3" runat="server" Text='<%# Eval("Num") %>'></asp:Label><%--数量--%>
							</div>
						</div>
                     
						<div class="clear"></div>
					</div>
				</ItemTemplate>
			</asp:DataList>
           <div id="right_a_button">
                            <a href="#" id="f">查看商品详情</a>
                            <a href="#" id="s">去购物车结算</a>
           </div>
	</div>
</asp:Content>
