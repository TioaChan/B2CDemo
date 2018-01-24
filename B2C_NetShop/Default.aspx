<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B2C_NetShop._Default" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Content/ft-carousel.css" />
    <style>
        #div_left {
            float: left;
            display: block;
            height: 480px;
            width: 190px;
        }

        #div_middle {
            display: block;
            float: left;
            width: 700px;
            height: 480px;
        }

        #div_right {
            display: block;
            float: left;
            width: 190px;
            height: 480px;
        }

        .clear {
            clear: both;
        }
    </style>
    <link href="../Content/keleyiimagebox.css" type="text/css" rel="Stylesheet" />
    <script src="../Content/keleyiimagebox.js" type="text/javascript"></script>
    <script type="text/javascript">
        window.onload = function () {
            var runimg = new runImg();
            runimg.count = 3;
            runimg.imgurl = [
                "<img src=\"../img/1.png\"/>",
                "<img src=\"../img/2.png\"/>",
                "<img src=\"../img/3.png\"/>"];
            runimg.info("#box-ke" + "leyi-com");
            runimg.action("#box-k" + "eleyi-com");
        }
    </script>
    <br />
    <div style="padding: 5px; width: 1210px; height: auto;">
        <div>
            <div id="div_left">
                <div>
                    <div style="width: 170px; padding-left: 5px; padding-right: 5px; margin-top: 20px;text-align:center">
                        <p style="text-align:left;height:35px; font-family: Tahoma; font-size: 15px;">图书分类：</p>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="ClassID" DataSourceID="SqlDataSource1" Width="160px">
                            <ItemTemplate>
                                &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# Eval("ClassID","~/Goods/list.aspx?id={0}") %>' Text='<%# Eval("ClassName") %>'></asp:HyperLink>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>" SelectCommand="select top 10 * from Goods_Class"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
            <div id="div_middle">
                <div id="box-keleyi-com">
                </div>
            </div>
            <div id="div_right">
                <div style="padding: 0px 15px">
                    <div id="user_info" style="height: 90px;">
                        <div style="margin: 20px 0px 0px 0px; display: block; float: left; width: 50px; height: 50px; text-align: center;" id="img">
                            <a href="User/Info.aspx" target="_blank">
                                <img src="Account/QQ图片20170706150624.png" style="width: 40px; height: 40px"></a>
                        </div>
                        <div style="display: block; float: right; height: 50px; width: 102px; margin-top: 20px;" id="us">

                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                            <asp:HyperLink ID="HyperLink1" runat="server">HL1</asp:HyperLink>&nbsp;|
                            <asp:HyperLink ID="HyperLink2" runat="server">HL2</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear" id="div_clr">
            </div>
        </div>
        <div class="row" style="margin-top: 20px">
            <div class="col-md-4">
                <h2>商城精选</h2>
                <p>
                    精选图书，值得一看
                </p>
                <br />
                <br />
                <p>
                    <a class="btn btn-default" href="Goods/refinement.aspx">前往 &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>商城热卖</h2>
                <p>
                    人气图书，每天更新
                </p>
                <br />
                <br />
                <p>
                    <a class="btn btn-default" href="Goods/hot.aspx">前往 &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>商城折扣</h2>
                <p>
                    折扣图书，低至一折
                </p>
                <br />
                <br />
                <p>
                    <a class="btn btn-default" href="Goods/discount.aspx">前往 &raquo;</a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
