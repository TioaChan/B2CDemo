<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="B2C_NetShop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
	<style>
		span {
			overflow: hidden;
			display: block;
			font-size: 12px;
		}

		.overview-frame {
			width: 278px;
			border-bottom: 1px solid #e5e5e5;
			line-height: 12px;
			height: 32px;
		}

		.detail-frame {
			width: 278px;
			height: 132px;
			border-bottom: 1px solid #e5e5e5;
		}

		.rank {
			width: 25px;
			height: 33px;
			padding: 10px 0 0 15px;
			text-align: center;
		}

		.span-float {
			float: left;
		}

		.bookimg {
			width: 90px;
			height: 90px;
			background-color: antiquewhite;
		}

		.goods-rank-frame {
			color: #333333;
			margin-top: 10px;
		}

		.goods-frame {
			width: 238px;
		}

		.goods-detail {
			width: 140px;
			height: 100px;
			overflow: hidden;
		}

		.goods-detail-name {
		}

		.goods-detail-introduce {
			color: #969696;
		}

		.clear {
			clear: both;
		}

		.hide {
			display: none;
		}

		a:link {
			color: #333333;
		}

		a:visited {
			color: #333333;
		}

		a:hover {
			color: #333333;
		}

		a:active {
			color: #333333;
		}
	</style>
	<script>
		$(document).ready(function () {
			$(".detail-frame").addClass("hide")
			$(".rank_frame").hover(function () {
				// over
				$(this).children(".overview-frame").addClass("hide").next().removeClass("hide").end();
			}, function () {
				// out
				$(this).children(".overview-frame").removeClass("hide").next().addClass("hide").end();
			});
		});
	</script>
</head>

<body>
	<form id="form1" runat="server">
		<div>
			<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="278px">
				<ItemTemplate>
					<span class="rank_frame">
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
									<span class="span-float goods-rank-frame goods-frame goods-detail">
										<span class="goods-detail-name"><%# Eval("BookName") %></span>
										<br />
										<span class="goods-detail-introduce"><%# Eval("BookIntroduce") %></span>
									</span>
									<span class="clear"></span>
								</a></span>
							<span class="clear"></span>
						</span>
					</span>
				</ItemTemplate>
			</asp:DataList>
		</div>
	</form>
</body>

</html>