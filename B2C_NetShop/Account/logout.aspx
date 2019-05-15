<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="B2C_NetShop.Account.logout1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <link href="Style/logout-error.css" rel="stylesheet" />
    <title>注销页面</title>
</head>
<body style="background-color: #282828">
    <form id="form1" runat="server">
            <div class="content">
                    <h2>注销成功</h2>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">点击</asp:HyperLink>
                    返回首页
            </div>
    </form>
</body>
</html>

