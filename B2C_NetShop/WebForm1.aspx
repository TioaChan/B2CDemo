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
		}

		.overview-frame {
			background-color: #eaeaea;
			margin: 5px 0;
		}

		.detail-frame {
			background-color: #eaeaea;
			height: 200px;
		}

		.rank {
			width: 20px;
			height: 20px;
			margin: 10px 15px;
		}

		.span-float {
			float: left;
		}

		.bookimg {
			width: 100px;
			height: 100px;
			background-color: antiquewhite;
		}

		.goods-rank-frame {
			margin-top: 10px;
		}

		.goods-frame {
			width: 150px;
		}

		.clear {
			clear: both;
		}

		.hide {
			display: none;
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
							<span class="span-float"><a href='<%# Eval("BookUrl") %>'>
									<span class="span-float goods-rank-frame">
										<img class="bookimg" src='<%# Eval("picUrl") %>'>
									</span>
									<span class="span-float goods-rank-frame goods-frame">
										<%# Eval("BookName") %>
										<br />
										<span><%# Eval("BookIntroduce") %></span>
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