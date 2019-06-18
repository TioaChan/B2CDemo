<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="B2C_NetShop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>

	<style>
		.list_aa {
			float: left;
			width: 166px;
			height: 220px;
			border-right: 1px solid #e6e6e6;
			position: relative;
		}

		#DataList1 span{
			display:block;
			float:left;
		}

		.bookimg{
			width:150px;
			height:150px;
		}
	</style>

</head>

<body>
	<form id="form1" runat="server">
		<div>
			<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
				<ItemTemplate>
					<%--<span class="rank_frame" id= '<%#"rank"+Eval("Rank") %>'>
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
					</span>--%>
					<%--<span>
						<a href="#"> <span></span> </a>
					</span>
					<span class="name"></span>
					<span class="price">
						<span class="rob"></span>
						<span class="price_r"></span>
					</span>--%>

					<ul class="list_aa ">
						<li class="line1 on"><a href='<%# Eval("BookUrl") %>'>
							<img class="bookimg" src='<%# Eval("picUrl") %>'>
							
							<p class="name">
								<span class="goods-detail-name"><%# Eval("BookName") %></span>
							</p>
							<p class="price">
								
							</p>
						</li>
					</ul>
				</ItemTemplate>
			</asp:DataList>
		</div>
	</form>
</body>

</html>
