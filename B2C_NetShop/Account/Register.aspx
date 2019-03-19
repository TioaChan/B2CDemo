<%@ Page Title="注册" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="B2C_NetShop.Account.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        div {
            margin: 1px;
        }

        #container {
            width: 1007px;
        }
        #content{
            margin-top:20px;
        }

        #regist_frame {
            float: right;
            width: 700px;
            height: 600px;
        }

            #regist_frame > #titler {
                text-align: left;
                padding-left: 40px;
            }

        .txt_input {
            width: 500px;
            height: 50px;
            max-width: none;
            margin-left: 40px;
            padding-left: 10px;
            margin-bottom:20px;
        }
        #validator{
            margin-left:50px;
        }
        .btn_reg{
            Height:50px;
            Width:500px;
            background-color:#4A8AF4;
            color:white;
            max-width:none;
            margin-left: 40px;
            font-size:18px;
        }
    </style>
    <div id="container">
        <div id="header">

        </div>
        <div id="content">
            <div id="regist_frame">
                <div id="titler">
                    <h3>欢迎注册</h3>
                    <h4>Demo.</h4>
                </div>
                <div id="regist_input">
                    <br style="clear: both;" />
                    <div id="validator">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_uid" ErrorMessage="用户名不允许为空" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_pwd" ErrorMessage="密码不允许为空" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_pwd" ControlToValidate="TextBox_pwd0" ErrorMessage="两次输入密码不同" ForeColor="Red"></asp:CompareValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="TextBox_uid" CssClass="txt_input" runat="server" placeholder="设置一个用户名"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox_pwd" CssClass="txt_input" runat="server" TextMode="Password" placeholder="设置一个密码"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox_pwd0" CssClass="txt_input" runat="server" TextMode="Password" placeholder="重复密码"></asp:TextBox><br />
                    </div>
                    <asp:Button ID="Button1" CssClass="btn_reg" runat="server" OnClick="Button1_Click" Text="注  册" BorderStyle="None"  />
                </div>
            </div>
            <div style="clear: both;"></div>
        </div>
    </div>
</asp:Content>
