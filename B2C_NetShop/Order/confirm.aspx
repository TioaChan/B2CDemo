<%@ Page Title="" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="confirm.aspx.cs" Inherits="B2C_NetShop.Order.confirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="content_main" style="height:400px; display: block;" runat="server">
        <div id="div_title" style="width: 100%; height: 40px; display: block; padding-top: 10px; padding-left: 10px; margin-top: 10px; margin-left: 10px; font-size: 16px; font-family: '微软雅黑 Light';">确认订单信息并付款</div>
        <div id="order_info" style="border: 1px solid #f0f0f0; width: 90%; height: auto; display: block; padding: 10px 10px 30px 10px; margin: 10px 10px 10px 10px;">
            <div id="info1">
                您的订单号：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                您订单总金额：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                您的账户余额：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/Goods/img/fukuan.png" OnClick="ImageButton1_Click" Width="140px" />
                <asp:Label ID="Label4" runat="server" Enabled="False" Text="Label" Visible="False"></asp:Label>
                </div></div></div>
</asp:Content>
