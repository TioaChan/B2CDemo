<%@ Page Title="登录" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="B2C_NetShop.Account.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #container {
            height: 600px;
            padding-top:20px;
            background:#F6F6F6;
        }

        #login-window {
            width: 345px;
            height: 400px;
            margin:auto;
            background:#fff
        }

            #login-title {
                text-align: center;
                padding-top: 40px;
            }

            #login-title h3 {
                margin: 0px;
                padding: 0px;
            }

        #login-input {
            text-align: center;
        }
		input{
			max-width:none;
		}

        .txt-input, .btn_login {
            width: 300px;
            margin: 20px 0;
            height: 40px;
        }

        .txt-input {
            -webkit-appearance: none;
            -moz-appearance: none;
            border: 1px solid #CFCFCF;
            outline: 0;
            border-radius: 3px;
            padding: 8px 15px;
            margin: 0 auto 10px;
            display: block;
            text-align: center;
            font-size: 15px;
            color: red;
            -webkit-transition-duration: .25s;
            transition-duration: .25s;
            font-weight: 300
        }

            .txt-input:hover {
                background-color: rgba(255, 255, 255, .4)
            }

            .txt-input:focus {
                background-color: #fff;
                width: 310px;
                color: #333;
            }

        .btn_login {
            background-color: red;
            color: white;
            border: none;
        }
        #myTab {
            width: 343px;
        }

            #myTab li{
                font-size:20px;
                top: 0px;
                left: 0px;
            }
       .tab-pane{
           text-align:center;
       }
	   #ios{
	   padding-top:40px;
	   }

       #img-qrcode{
           width:200px;
       }
    </style>
    <div id="container">
        <!-- 登录框 -->
        <div id="login-window">
            <!-- Tab标签TiTle -->
            <ul id="myTab" class="nav nav-tabs">
                <li class="active">
                    <a href="#home" data-toggle="tab">账号登陆
                    </a>
                </li>
                <li><a href="#ios" data-toggle="tab">二维码登陆</a></li>
            </ul>
            <!-- Tab标签content -->
            <div id="myTabContent" class="tab-content">
                <!-- 账户登陆标签内容页 -->
                <div class="tab-pane fade in active" id="home">
                    <div>
                        <div id="login-title">
                            <h3>账户登录</h3>
                        </div>
                        <div id="login-input">
                            <br style="clear: both;" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_uid" ErrorMessage="*用户名不允许为空" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_pwd" ErrorMessage="*密码不允许为空" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <div>
                                <asp:TextBox CssClass="txt-input" ID="TextBox_uid" runat="server" placeholder="请输入账号"></asp:TextBox>
                                <asp:TextBox CssClass="txt-input" ID="TextBox_pwd" runat="server" placeholder="请输入密码" TextMode="Password"></asp:TextBox>
                            </div>
                            <asp:Button CssClass="btn_login" ID="Button1" runat="server" Text=" 登 录 " OnClick="Button1_Click1" BorderStyle="None" />
                            <p style="color:#ccc">没有账户？<a href="Register.aspx">点击注册</a></p>
                        </div>
                    </div>
                </div>
                <!-- 二维码登陆标签内容页 -->
                <div class="tab-pane fade" id="ios">
                    <img id="img-qrcode" src="/img/QR.png" alt="Alternate Text" />
                    <p>打开<a href="#">手机B2CDemo</a>&nbsp&nbsp&nbsp扫描二维码</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
