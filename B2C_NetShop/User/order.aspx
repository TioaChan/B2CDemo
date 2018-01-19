<%@ Page Title="" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="B2C_NetShop.User.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div id="content_main" style="height:400px; display: block;" runat="server">       
        <div id="div_title" style="width: 100%; height: 40px; display: block; padding-top: 10px; padding-left: 10px; margin-top: 10px; margin-left: 10px; font-size: 16px; font-family: '微软雅黑 Light';">订单详细信息</div>
        <div style="width: 100%; height: 40px; display: block; padding-top: 10px; padding-left: 10px; margin-top: 10px; margin-left: 10px; font-size: 14px; font-family: Tahoma;">当前位置： <a href="../Default.aspx">首页</a> > <a href="Info.aspx">我的</a> > 订单管理</div>
         <div id="order_info" style="border: 1px solid #f0f0f0; width: 90%; height: auto; display: block; padding: 10px 10px 30px 10px; margin: 10px 10px 10px 10px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="order_bookid" HeaderText="商品编号" SortExpression="order_bookid" />
                    <asp:BoundField DataField="BookName" HeaderText="商品名称" SortExpression="BookName" />
                    <asp:BoundField DataField="order_booknum" HeaderText="数量" SortExpression="order_booknum" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>" SelectCommand="SELECT Cart_Goods.order_bookid, Goods_Info.BookName, Cart_Goods.order_booknum FROM Cart_Goods INNER JOIN Goods_Info ON Cart_Goods.order_bookid = Goods_Info.BookID WHERE (Cart_Goods.order_id = @order_id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="order_id" QueryStringField="orderid" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
     </div>
</asp:Content>
