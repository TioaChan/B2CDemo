<%@ Page Title="" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="B2C_NetShop.Account.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div style="margin: 0px auto;width:50%;height:225px">
        <table class="nav-justified" style="width: 100%; height: 95%;">
            <tr>
                <td style="height: 40px; font-size: xx-large; font-style: normal;" class="text-left" colspan="2">用户注册</td>
            </tr>
            <tr>
                <td style="width: 101px; height: 40px;" class="text-right">用&nbsp; 户&nbsp; 名：</td>
                <td style="width: 441px; height: 40px;">
                    <asp:TextBox ID="TextBox_uid" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_uid" ErrorMessage="用户名不允许为空" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; height: 40px;" class="text-right">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码：</td>
                <td style="width: 441px; height: 40px;">
                    <asp:TextBox ID="TextBox_pwd" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_pwd" ErrorMessage="密码不允许为空" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; height: 40px;" class="text-right">重复密码：</td>
                <td style="width: 441px; height: 40px;">
                    <asp:TextBox ID="TextBox_pwd0" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_pwd" ControlToValidate="TextBox_pwd0" ErrorMessage="两次输入密码不同" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; height: 40px;"></td>
                <td style="width: 441px; height: 40px;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注册" />
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