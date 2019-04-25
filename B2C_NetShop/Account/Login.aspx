<%@ Page Title="登录" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="B2C_NetShop.Account.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #header {
            margin-top: 10px;
        }

        #container {
            height: 600px;
        }

        #content {
            clear: both;
        }

        #login_frame {
            float: right;
            width: 345px;
            height: 400px;
            border: 1px #A6B1C4 solid;
            margin-top:40px;
        }

            #titler {
                text-align: center;
                padding-top: 40px;
            }

        h3 {
            margin: 0px;
            padding: 0px;
        }

        #login_input {
            text-align: center;
        }

        .txt_input, .btn_login {
            margin-bottom: 10px;
            height: 40px;
            padding-left: 10px;
        }

        .btn_login {
            background-color: red;
            color: white;
            border: none;
            width: 300px;
        }

        .txt_input {
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
            width: 250px;
            -webkit-transition-duration: .25s;
            transition-duration: .25s;
            font-weight: 300
        }

            .txt_input:hover {
                background-color: rgba(255, 255, 255, .4)
            }

            .txt_input:focus {
                background-color: #fff;
                width: 300px;
                color: #333;
            }

        #myTab {
            width: 343px;
        }

            #myTab li{
                font-size:20px; 
            }
       .tab-pane{
           text-align:center;
       }
    </style>

    <div id="container">

       
        <div id="login_frame">
            <ul id="myTab" class="nav nav-tabs">
                <li class="active">
                    <a href="#home" data-toggle="tab">账号登陆
                    </a>
                </li>
                <li><a href="#ios" data-toggle="tab">二维码登陆</a></li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="home">
                    <!-- 登录框 -->
                    <div>
                        <div id="titler">
                            <h3>账户登录</h3>
                        </div>
                        <div id="login_input">
                            <br style="clear: both;" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_uid" ErrorMessage="*用户名不允许为空" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_pwd" ErrorMessage="*密码不允许为空" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div>
                                <asp:TextBox CssClass="txt_input" ID="TextBox_uid" runat="server" placeholder="请输入账号"></asp:TextBox>
                                <asp:TextBox CssClass="txt_input" ID="TextBox_pwd" runat="server" placeholder="请输入密码" TextMode="Password"></asp:TextBox>
                            </div>
                            <br />
                            <asp:Button CssClass="btn_login" ID="Button1" runat="server" Text=" 登 录 " OnClick="Button1_Click1" BorderStyle="None" />
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="ios">
                    <img style="width:200px;" src="/img/QR.png" alt="Alternate Text" />
                    <p>打开<a href="#">手机B2CDemo</a>&nbsp&nbsp&nbsp扫描二维码</p>

                </div>
            </div>
        </div>

    </div>
</asp:Content>
