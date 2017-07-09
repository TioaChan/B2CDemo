<%@ Page Title="" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="B2C_NetShop.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div style="margin: 0px auto;width:50%;height:124px">
        <table class="nav-justified" style="width: 100%; height: 95%;">
            <tr>
                <td style="height: 40px; font-size: xx-large; font-style: normal;" class="text-left" colspan="2">用户登录</td>
            </tr>
            <tr>
                <td style="width: 101px; height: 40px;" class="text-right">用户名：</td>
                <td style="width: 441px; height: 40px;">
                    <asp:TextBox ID="TextBox_uid" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_uid" ErrorMessage="用户名不允许为空" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; height: 40px;" class="text-right">密码：</td>
                <td style="width: 441px; height: 40px;">
                    <asp:TextBox ID="TextBox_pwd" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_pwd" ErrorMessage="密码不允许为空" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; height: 40px;"></td>
                <td style="width: 441px; height: 40px;">
                    <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click1" />
                </td>
            </tr>
        </table>
    </div>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
</asp:Content>
