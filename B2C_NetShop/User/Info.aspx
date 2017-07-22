<%@ Page Title="" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="B2C_NetShop.User.Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #div_left {
            float: left;
            display: block;
            /*
            background-color: green;
            */
            width: 310px;
            height: 800px;
        }

        #div_right {
            display: block;
            float: right;
            /*
            background-color: red;
            */
            width: 860px;
            height: 800px;
        }

        .clear {
            clear: both;
        }

        .auto-style1 {
            margin: 0 auto;
            text-align: center;
            /*
            background-color: #999;
                */
            width: 100%;
            height: 800px;
        }

        .div_button {
            text-align: center;
        }

        .auto-style2 {
            width: 441px;
        }

        .auto-style3 {
            text-align: right;
            height: 40px;
            width: 214px;
        }
    </style>
    <h2>欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label></h2>
    <br />
    <div id="div_content" class="auto-style1">
        <div id="div_left">
            <div class="text-right">
                <asp:Button ID="Button_TotalView" runat="server" Text="账户总览" CssClass="btn-link" OnClick="Button_TotalView_Click" />
            </div>
            <div class="text-right">
                <asp:Button ID="Button_UserInfo" runat="server" Text="个人信息" CssClass="btn-link" OnClick="Button_UserInfo_Click" />
            </div>
            <div class="text-right">
                <asp:Button ID="Button_UserImage" runat="server" Text="头像修改" CssClass="btn-link" OnClick="Button_UserImage_Click" />
            </div>
            <div class="text-right">

                <asp:Button ID="Button_Address" runat="server" Text="收货地址" CssClass="btn-link" OnClick="Button_Address_Click" />
            </div>
            <div class="text-right">
                <asp:Button ID="Button_Security" runat="server" Text="安全设置" CssClass="btn-link" OnClick="Button_Security_Click" />
            </div>
        </div>
        <div id="div_right">

            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View_TotalView" runat="server">
                    <br />
                    <div>
                        <table style="width: 100%; height: 95%;">
                            <tr>
                                <td class="text-left" colspan="2" style="height: 40px; font-size: xx-large; font-style: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 账户总览</td>
                                <td class="text-left" style="height: 40px; font-size: xx-large; font-style: normal;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 20px;">&nbsp;</td>
                                <td style="height: 20px;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">用户名：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:Label ID="Label_UID2" runat="server" Text="Label_UID"></asp:Label>
                                    </div>
                                </td>
                                <td aria-multiline="False" class="auto-style2" rowspan="4">
                                    <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Middle" ImageUrl="~/Account/QQ图片20170706150624.png" Width="150px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">昵称：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:Label ID="Label_NickName" runat="server" Text="Label_NickName"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">用户类型：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:Label ID="Label_UserType" runat="server" Text="Label_UserType"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">账户余额：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:Label ID="Label_Money" runat="server" Text="Label_Money"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
                <asp:View ID="View_UserInfo" runat="server">
                    <br />
                    <div>
                        <table style="width: 100%; height: 95%;">
                            <tr>
                                <td class="text-left" colspan="2" style="height: 40px; font-size: xx-large; font-style: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 个人信息</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 20px;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 101px; height: 40px;" class="text-right">输入新昵称：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:TextBox ID="TextBox_NewNickName" runat="server" Width="250px"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 15px;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 30px;"></td>
                                <td class="text-left" style="height: 30px;">
                                    <asp:Button ID="Button_SetNewNickName" runat="server" Text="修改" Width="50px" OnClick="Button_SetNewNickName_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
                <asp:View ID="View_Address" runat="server">
                    <br />
                    <div>
                        <table style="width: 100%; height: 95%;">
                            <tr>
                                <td class="text-left" colspan="2" style="height: 40px; font-size: xx-large; font-style: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 收货地址更新</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 20px;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 101px; height: 40px;" class="text-right">真实姓名：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:TextBox ID="TextBox_RealName" runat="server" Width="250px"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 101px; height: 40px;" class="text-right">邮政编码：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:TextBox ID="TextBox_PostCode" runat="server" Width="250px"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 101px; height: 40px;" class="text-right">电话号码：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:TextBox ID="TextBox_PhoneNum" runat="server" Width="250px"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 101px; height: 80px;" class="text-right">收货地址：</td>
                                <td style="width: 441px; height: 80px;">
                                    <div class="text-left">
                                        <asp:TextBox ID="TextBox_Address" runat="server" Width="250px" Height="80px" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 15px;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 30px;"></td>
                                <td class="text-left" style="height: 30px;">
                                    <asp:Button ID="Button_SetNewAddress" runat="server" Text="修改" Width="50px" OnClick="Button_SetNewAddress_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
                <asp:View ID="View_Security" runat="server">
                    <br />
                    <div>
                        <table style="width: 100%; height: 95%;">
                            <tr>
                                <td class="text-left" colspan="2" style="height: 40px; font-size: xx-large; font-style: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 密码修改</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 20px;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-right" style="width: 101px; height: 40px;">原密码：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-right" style="width: 101px; height: 40px;">密码：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 101px; height: 40px;" class="text-right">确认密码：</td>
                                <td style="width: 441px; height: 40px;">
                                    <div class="text-left">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 15px;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 30px;"></td>
                                <td class="text-left" style="height: 30px;">
                                    <asp:Button ID="Button_SetNewPWD" runat="server" Text="修改" Width="50px" OnClick="Button_SetNewPWD_Click" />
                                </td>
                            </tr>
                        </table>
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
                                <td class="text-left" colspan="2" style="height: 40px; font-size: xx-large; font-style: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 头像修改</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 20px;">
                                    <div>
                                        <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" ImageUrl="~/User/ImagesUpload/DefaultImage.png" />
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                        <asp:Button ID="btnupload" runat="server" Text="Button" OnClick="btnupload_Click" />
                                        <asp:Button ID="btndelete" runat="server" Text="Button"/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 15px;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 30px;"></td>
                                <td class="text-left" style="height: 30px;">
                                    <asp:Button ID="Button1" runat="server" Text="修改" Width="50px" OnClick="Button_SetNewPWD_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br />
                    <br />
                    <br />
                </asp:View>
            </asp:MultiView>
        </div>
        <div class="clear" id="div_clr">
        </div>
    </div>
</asp:Content>
