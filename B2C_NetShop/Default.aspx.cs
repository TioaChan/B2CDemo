using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2C_NetShop
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //母版页hyperlink赋值start
            //hl1 hl2 hl3 三个控件的属性的值，最后修改的时间为2017/07/01 21:20；除登录与注册页面的判定不同，其他页面一律相同
            HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
            HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
            HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注册、注销
            if (Session["uid"] == null)
            {
                hl1.Text = "欢迎，请登录";
                hl1.NavigateUrl = "~/Account/Login.aspx";
                hl2.Enabled = false;
                hl2.Visible = false;
                hl3.Text = "[点击注册]";
                hl3.NavigateUrl = "~/Account/Register.aspx";
                //主页面用户信息栏start
                Label1.Text = "Hi,欢迎登录";
                HyperLink1.Text = "登录";
                HyperLink1.NavigateUrl = "~/Account/Login.aspx";
                HyperLink2.Text = "注册";
                HyperLink2.NavigateUrl = "~/Account/Register.aspx";
                //主页面用户信息栏end
            }
            else
            {
                String id = Session["uid"].ToString();
                //hl1和hl3用于导航个人资料页与注销功能
                hl1.Text = id + "，欢迎你。";
                hl1.NavigateUrl = "~/User/Info.aspx";
                hl3.Text = "点击注销";
                hl3.NavigateUrl = "";
                int status = Convert.ToInt32(Session["Status"].ToString());
                //判断status的值，1为普通用户，禁用后台管理功能；2 3 4为管理员；其他值为异常账户。
                if (status == 1)
                {
                    hl2.Enabled = false;
                    hl2.Visible = false;
                }
                else if (status == 2 || status == 3 || status == 4)
                {
                    hl2.Text = "后台管理";
                    hl2.NavigateUrl = "";
                }
                else
                {
                    Session["uid"] = "";
                    Session["Status"] = "";
                    Response.Redirect("~/Account/Error.aspx");
                }
                //主页面用户信息栏start
                Label1.Text = "Hi," + Session["nickname"].ToString() + "。";
                HyperLink1.Text = "我的信息";
                HyperLink1.NavigateUrl = "~/User/Info.aspx";
                HyperLink2.Text = "注销";
                HyperLink2.NavigateUrl = "";
                //主页面用户信息栏end
            }
            //母版页hyperlink赋值end
        }
    }
}