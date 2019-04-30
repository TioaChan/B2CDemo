<%@ Page Title="" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="B2C_NetShop.User.Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700%7cOswald:400,700" rel="stylesheet">
    <style>
        /* ============================= 左右盒子外加一个做导航条 ============================= */
        /* 设置大盒子宽度防止挤压 */

        body {
            background: #f6f6f6;
            font-family: 微软雅黑;
        }

        #div_content {
            width: 1170px;
        }

        #div_left {
            float: left;
            display: block;
            width: 247px;
            min-height: 100%;
            font-size: 15px;
        }

            #div_left ul { /* 左导航条 */
                padding: 0px 13px;
                margin: 0px;
                list-style: none;
                min-height: 1380px;
                background: -webkit-linear-gradient(0deg, #f85032, #FF0000); /* Safari 5.1 - 6.0 */
                background: -o-linear-gradient(0deg, #f85032, #FF0000); /* Opera 11.1 - 12.0 */
                background: -moz-linear-gradient(0deg, #f85032, #FF0000); /* Firefox 3.6 - 15 */
                background: linear-gradient(0deg, #f85032, #FF0000); /* 标准的语法（必须放在最后） */
            }

                #div_left ul li {
                    padding: 10px;
                    width: 100%;
                    -webkit-transition-duration: .25s;
                    -moz-transition-duration: .25s;
                    -o-transition-duration: .25s;
                    transition-duration: .25s;
                    border-bottom: 1px solid rgba(255, 255, 255, .4);
                }

                    #div_left ul li:hover {
                        border-bottom: 1px solid #fff;
                        background: rgba(255,255,255,0.2);
                    }

                    #div_left ul li input {
                        font-size: 13px;
                        text-align: left;
                        width: 92%;
                        color: rgba(255,255,255,0.7);
                    }

            #div_left p {
                margin: 0px;
                font-size: 13px;
                text-align: center;
                color: rgba(255,255,255,0.7);
            }

                #div_left ul li input:hover, #div_left p:hover {
                    text-decoration: none;
                    color: #fff;
                }

            #div_left ul li i {
                height: 19px;
                line-height: 19px;
                color: #fff;
                float: right;
            }



        #div_right {
            display: block;
            float: left;
            width: 923px;
        }

        .clear {
            clear: both;
        }

        /* ============================= 页面asp Button样式 ============================= */
        .asp_button {
            background: red;
            color: #fff;
            border: 0px;
            border-radius: 5px;
            padding: 10px 15px;
            width: 130px;
            font-size: 15px;
            -webkit-transition-duration: .25s;
            -moz-transition-duration: .25s;
            -o-transition-duration: .25s;
            transition-duration: .25s;
        }

            .asp_button:hover {
                background: #000000;
            }

        /* ============================= datalist order manager =============================*/
        /* 订单管理 */
        .asp_datalist_om {
            margin: 20px auto;
            background: #fff;
        }

            .asp_datalist_om .table {
                margin: 0px;
            }

                .asp_datalist_om .table tr td {
                    width: 220.75px;
                    height: 38px;
                    text-align: left;
                }

        th {
            text-align: center;
        }
        /* ============================= div =============================*/
        #user-overview {
            font-family: 'Oswald', sans-serif;
        }

        .title-container {
            background: #000;
            font-family: 'Oswald', sans-serif;
            font-size: 30px;
            font-weight: 400;
            margin: 20px;
        }

            .title-container .rotate-out {
                color: #f4d03f;
                height: 130px;
                padding: 15px;
            }

            .title-container .invert {
                color: white;
            }

        .content-container {
            background: #fff;
            margin: 20px;
            padding: 30px 15px;
            width: 441.5px;
            float: left;
        }

            .content-container .strong-text {
                font-family: 'Oswald', sans-serif;
                font-size: 22.5px;
                margin: 10px 0px;
            }

            .content-container .personal-info-title {
                margin-top: 65px;
                font-size: 21px;
                font-family: 'Oswald', sans-serif;
            }

        .strong-text span {
            background: #f4d03f;
            padding: 2px 5px;
            padding-bottom: 2px;
            color: #111;
            margin-left: 5px;
        }

        .content-container ul {
            padding: 0px;
            margin: 0px;
            list-style: none;
        }

            .content-container ul li label {
                width: 75px;
                min-width: 75px;
                font-size: 12.5px;
                background: #f4d03f;
                padding: 4px 10px 5px;
            }

            .content-container ul li span {
                background: #111111;
                padding: 4px 10px 5px;
                color: #fff;
                display: inline-block;
                margin-left: 9px;
                text-transform: capitalize;
            }

        div.card-body {
            margin: 20px;
            background: #fff;
            padding: 30px;
        }

            div.card-body h4 {
                margin-bottom: 18px;
                font-weight: bold;
            }

            div.card-body div.form-group {
                margin-bottom: 16px;
            }

            div.card-body input {
                border: 1px solid #e6ecf5;
                height: 30px;
                padding: 0px 8px;
                width: 100%;
            }

                div.card-body input:focus {
                    border: 1px solid #80BDFF;
                }

            div.card-body p {
                margin-bottom: 15px;
            }

            div.card-body label {
                font-weight: unset;
            }

        #namecard {
            float: left;
            width: 421.5px;
            background: #fff;
            height: 333.9px;
            margin-top: 20px;
            background: #000000;
            font-family: 'Oswald', sans-serif;
            text-align: center;
        }

            #namecard .maintitle {
                color: #f4d03f;
                display: inline-block;
                text-transform: uppercase;
            }

            #namecard .invert {
                color: #fff;
            }
    </style>
    <h2 style="background: red; display: none; color: white; padding: 10px;">欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label></h2>
    <div id="div_content">
        <div id="div_left">
            <ul>
                <li>
                    <asp:Button ID="Button_TotalView" runat="server" Text="账户总览" CssClass="btn-link" OnClick="Button_TotalView_Click" />
                    <i class="glyphicon glyphicon-user"></i>
                </li>
                <li>
                    <asp:Button ID="Button_UserInfo" runat="server" Text="个人信息" CssClass="btn-link" OnClick="Button_UserInfo_Click" />
                    <i class="glyphicon glyphicon-eye-open"></i>
                </li>
                <li>
                    <asp:Button ID="Btn_Order" CssClass="btn-link" runat="server" Text="订单管理" OnClick="Btn_Order_Click" />

                    <i class="glyphicon glyphicon-barcode"></i>

                </li>
                <li>
                    <asp:Button ID="Button_UserImage" runat="server" Text="头像修改" CssClass="btn-link" OnClick="Button_UserImage_Click" />
                    <i class="glyphicon glyphicon-eye-open"></i>
                </li>
                <li>
                    <asp:Button ID="Button_Address" runat="server" Text="收货地址" CssClass="btn-link" OnClick="Button_Address_Click" />
                    <i class="glyphicon glyphicon-home"></i>
                </li>
                <li>
                    <asp:Button ID="Button_Security" runat="server" Text="安全设置" CssClass="btn-link" OnClick="Button_Security_Click" />
                    <i class="glyphicon glyphicon-lock"></i>
                </li>
                <li>
                    <div class="progress progress-striped active" style="height: 10px; margin-top: 30px;">
                        <div class="progress-bar progress-bar-success" role="progressbar"
                            aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                            style="width: 40%;">
                            <span class="sr-only">40% 完成</span>
                        </div>
                    </div>
                    <p>当前已销售10</p>
                </li>
            </ul>
        </div>
        <div id="div_right">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View_TotalView" runat="server">
                    <div>

                        <div class="title-container">

                            <div class="shadow-img"></div>
                            <h2 class="rotate-out">Welcome To <span class="invert">User Overview</span></h2>
                            <!--HOME TITLE-->
                        </div>
                        <div class="content-container">
                            <div class="strong-text">Hello, I am <span>John Doe</span></div>
                            <h3 class="personal-info-title">Personal Info</h3>
                            <ul class="personal-info">

                                <li class="rotate-out rotated">
                                    <label>姓名</label><asp:Label ID="Label_UID2" runat="server" Text="Label_UID"></asp:Label></li>
                                <li class="rotate-out rotated">
                                    <label>昵称</label><asp:Label ID="Label_NickName" runat="server" Text="Label_NickName"></asp:Label></li>
                                <li class="rotate-out rotated">
                                    <label>用户类型</label><asp:Label ID="Label_UserType" runat="server" Text="Label_UserType"></asp:Label></li>
                                <li class="rotate-out rotated">
                                    <label>账户余额</label><asp:Label ID="Label_Money" runat="server" Text="Label_Money"></asp:Label></li>
                            </ul>
                            <!--/ul.personal-info-->
                        </div>
                        <div id="namecard">
                            <h1 class="maintitle">John
                                <span class="invert">Doe</span>

                            </h1>
                            <h3>Web</h3>
                            <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Middle" ImageUrl="~/Account/UserImg/DefaultUserImg.png" Width="150px" />
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="View_UserInfo" runat="server">
                    <div>
                        <div class="card-body">
                            <h4>修改信息</h4>

                            <div class="form-group">
                                <label>输入新昵称:</label>
                                <br />
                                <asp:TextBox ID="TextBox_NewNickName" runat="server" Width="250px"></asp:TextBox>
                            </div>
                            <asp:Button ID="Button_SetNewNickName" runat="server" Text=" 修 改 " CssClass="asp_button" OnClick="Button_SetNewNickName_Click" />
                        </div>
                    </div>
                </asp:View>
                <asp:View ID="View_Address" runat="server">
                    <div>
                        <div>
                            <div class="card-body">
                                <h4>收货地址更新</h4>

                                <div class="form-group">
                                    <label>真实姓名</label>
                                    <br />
                                    <asp:TextBox ID="TextBox_RealName" CssClass="tb_address_tbox" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label>邮政编码</label>
                                    <br />
                                    <asp:TextBox ID="TextBox_PostCode" CssClass="tb_address_tbox" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label>电话号码</label>
                                    <br />
                                    <asp:TextBox ID="TextBox_PhoneNum" CssClass="tb_address_tbox" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label>收货地址</label>
                                    <br />
                                    <asp:TextBox ID="TextBox_Address" CssClass="tb_address_tbox" runat="server" Height="80px" TextMode="MultiLine"></asp:TextBox>
                                </div>

                                <asp:Button ID="Button_SetNewAddress" CssClass="asp_button" runat="server" Text=" 修 改 " OnClick="Button_SetNewAddress_Click" />
                            </div>
                        </div>



                    </div>
                </asp:View>
                <asp:View ID="View_Security" runat="server">
                    <div>
                                                <div>
                            <div class="card-body">
                                <h4>密码修改</h4>

                                <div class="form-group">
                                    <label>原密码</label>
                                    <br />
                                    <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label>密码</label>
                                    <br />
                                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label>确认密码</label>
                                    <br />
                                    <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                                </div>
                                <asp:Button ID="Button_SetNewPWD" runat="server" Text=" 修 改 " CssClass="asp_button" OnClick="Button_SetNewPWD_Click" />
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="View_UserImage" runat="server">
                    <br />
                    <div>
                        <table style="width: 100%; height: 95%;">
                            <tr>
                                <td colspan="2" style="height: 40px; font-size: xx-large; font-style: normal;">头像修改</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 20px;">
                                    <div>
                                        <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" ImageUrl="~/User/ImagesUpload/DefaultImage.png" />
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <asp:Button ID="Btnupload" runat="server" Text="Button" OnClick="Btnupload_Click" />
                                        <asp:Button ID="btndelete" runat="server" Text="Button" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 15px;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 30px;"></td>
                                <td style="height: 30px;">
                                    <asp:Button ID="Button1" runat="server" Text="修改" Width="50px" CssClass="asp_button" OnClick="Button_SetNewPWD_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="View_Order" runat="server">

                    <asp:DataList ID="DataList1" runat="server" CssClass="asp_datalist_om">
                        <HeaderTemplate>
                            <h4 style="height: 40px; font-size: xx-large; font-style: normal; text-align: center">订单管理</h4>
                            <table class="table table-hover">
                                <tr>
                                    <th>订单ID</th>
                                    <th>订单时间</th>
                                    <th>订单价格</th>
                                    <th>付款状态</th>
                                </tr>
                            </table>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table class="table table-hover">
                                <tr>
                                    <td><%# Eval("order_id") %></td>
                                    <td><%# Eval("order_date") %></td>
                                    <td><%# Eval("order_price") %></td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Enabled="false" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </asp:View>
            </asp:MultiView>
        </div>
        <div class="clear" id="div_clr">
        </div>
    </div>
</asp:Content>
