using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2C_NetShop.App_Start;

namespace B2C_NetShop.Account
{
    public partial class Login : System.Web.UI.Page
    {
        Database operate = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
            HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
            HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注销
            hl1.Visible = false;
            hl2.Visible = false;
            hl3.Text = "[点击注册]";
            hl3.NavigateUrl = "~/Account/Register.aspx";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            String uid = TextBox_uid.Text.Trim();
            String pwd = TextBox_pwd.Text.Trim();
            if (String.IsNullOrEmpty(uid) || String.IsNullOrEmpty(pwd))
            {
                Response.Write("<script type='text/javascript'>alert('用户名或密码为空！');</script>");
            }
            String sql = "select count(*) from User_Account where UID=@uid and Password=@pwd";
            SqlParameter[] parameters = {
                new SqlParameter("@uid",uid),
                new SqlParameter("@pwd",pwd)
            };
            int n = (int)operate.ExecuteScalar(sql,parameters);
            if (n == 1)
            {
                String userpower = "select NickName,UserType from User_Info where UID=@uid";
                SqlParameter[] parameters1 = {
                new SqlParameter("@uid",uid)
                };
                DataSet ds = operate.GetTablebySqlParameter(userpower, parameters1);
                ds.Dispose();
                String nickname = ds.Tables[0].Rows[0][0].ToString();
                String power = ds.Tables[0].Rows[0][1].ToString();
                Session["uid"] = uid;
                Session["nickname"] = nickname;
                Session["Status"] = power;   //power=1：普通用户，power=2,3,4：管理员
                Hashtable hashCart = new Hashtable();
                Session["ShopCart"] = hashCart;
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('用户名或密码错误！');</script>");
            }
        }
    }
}
