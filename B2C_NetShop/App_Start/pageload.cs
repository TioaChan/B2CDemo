using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2C_NetShop.App_Start
{
    public class pageload
    {

        public void HyperLinkBind(HyperLink hl1, HyperLink hl2, HyperLink hl3,String id,int power)
        {
            if ("".Equals(id))
            {
                hl1.Text = "欢迎，请登录";
                hl1.NavigateUrl = "~/Account/Login.aspx";
                hl2.Enabled = false;
                hl2.Visible = false;
                hl3.Text = "[点击注册]";
                hl3.NavigateUrl = "~/Account/Register.aspx";
            }
            else
            {
                hl1.Text = id + "，欢迎你。";
                hl1.NavigateUrl = "~/User/Info.aspx";
                hl3.Text = "点击注销";
                hl3.NavigateUrl = "~/Account/logout.aspx";
                //判断power的值，1为普通用户，禁用后台管理功能；2 3 4为管理员；其他值为异常账户。
                if (power == 1 || power == 0) 
                {
                    hl2.Enabled = false;
                    hl2.Visible = false;
                }
                else if (power == 2 || power == 3 || power == 4)
                {
                    hl2.Text = "后台管理";
                    hl2.NavigateUrl = "~/Manage/main.aspx";
                }
                else
                {
                    System.Web.HttpContext.Current.Response.Redirect("~/Account/Error.aspx");
                }
            }
        }
        public void MainPageBind(HyperLink HyperLink1,HyperLink HyperLink2, Label lable1,String id,String nickname)
        {
            if ("".Equals(id))
            //if (id == null)
            {
                //主页面用户信息栏start
                lable1.Text = "Hi,欢迎登录";
                HyperLink1.Text = "登录";
                HyperLink1.NavigateUrl = "~/Account/Login.aspx";
                HyperLink2.Text = "注册";
                HyperLink2.NavigateUrl = "~/Account/Register.aspx";
                //主页面用户信息栏end
            }
            else
            {
                //主页面用户信息栏start
                lable1.Text = "Hi," + nickname+ "。";
                HyperLink1.Text = "我的信息";
                HyperLink1.NavigateUrl = "~/User/Info.aspx";
                HyperLink2.Text = "注销";
                HyperLink2.NavigateUrl = "~/Account/logout.aspx";
                //主页面用户信息栏end
            }
        }
    }
}