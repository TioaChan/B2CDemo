using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using B2C_NetShop.App_Start;
using System.Data;
using System.Configuration;

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
            if (TextBox_uid.Text.Trim() != "" && TextBox_pwd.Text.Trim() != "" && TextBox_pwd0.Text.Trim() != "")
            {
				String procName = "UserRegister";
				SqlParameter[] parameters =
				{
					new SqlParameter("@uid",TextBox_uid.Text.Trim()),
					new SqlParameter("@pwd",TextBox_pwd.Text.Trim()),
					new SqlParameter("@NickName",TextBox_uid.Text.Trim()),
					new SqlParameter("@UserType", '1')
				};
				decimal i= operate.Proc(procName, parameters);
				if (i == 0)
				{
					Response.Write("<script type='text/javascript'>alert('恭喜您，注册成功！');location='login.aspx';</script>");
				}
				else if (i == -1)
				{
					Response.Write("<script type='text/javascript'>alert('用户名重复！');</script>");
				}
			}
			else
			{
				Response.Write("<script type='text/javascript'>alert('请输入必要的信息！');</script>");
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