using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using B2C_NetShop.App_Start;

namespace B2C_NetShop.Account
{
    public partial class Register : System.Web.UI.Page
    {
        Database operate = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink hl1 = (HyperLink)(this.Master.FindControl("HyperLink1"));//用户个人资料
            HyperLink hl2 = (HyperLink)(this.Master.FindControl("HyperLink2"));//后台
            HyperLink hl3 = (HyperLink)(this.Master.FindControl("HyperLink3"));//注销
            hl1.Visible = false;
            hl2.Visible = false;
            hl3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox_uid.Text.Trim() == "" || TextBox_pwd.Text.Trim() == "" || TextBox_pwd0.Text.Trim() == "")
            {
                Response.Write("<script type='text/javascript'>alert('请输入必要的信息！');</script>");
            }
            else
            {
                String sql = "select count(*) from User_Account where UID='" + TextBox_uid.Text.Trim() + "'";
                int n = operate.OperateData(sql);
                if (n == -1)
                {
                    String regist1 = "insert into User_Account (UID,Password) values('" + TextBox_uid.Text.Trim() + "','" + TextBox_pwd.Text.Trim() + "')";
                    String regist2 = "insert into User_Info(UID,NickName,UserType) values('" + TextBox_uid.Text.Trim() + "','" + TextBox_uid.Text.Trim() + "',1)";
                    String regist3 = "insert into User_Address(UID) values('" + TextBox_uid.Text.Trim() + "')";
                    int n1 = operate.OperateData(regist1);
                    int n2 = operate.OperateData(regist2);
                    int n3 = operate.OperateData(regist3);
                    if (n1 == 1 && n2 == 1)
                    {
                        Response.Write("<script type='text/javascript'>alert('恭喜您，注册成功！');location='login.aspx';</script>");
                    }
                    else
                    {
                        Response.Write("<script type='text/javascript'>alert('注册失败，请换一个用户名重试！');location='Register.aspx';</script>");
                    }

                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('用户名重复！');</script>");
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox_uid.Text = "";
            TextBox_pwd.Text = "";
            TextBox_pwd0.Text = "";
        }
    }
}