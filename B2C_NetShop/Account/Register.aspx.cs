using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
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
                String sql = "select count(*) from User_Account where UID=@uid";
                SqlParameter[] parameter ={
                    new SqlParameter("@uid", TextBox_uid.Text.Trim())
                };
                int n = operate.ExecuteScalar(sql, parameter);
                if (n == 0)
                {
                    String regist1 = "insert into User_Account (UID,Password) values(@uid,@pwd)";
                    SqlParameter[] parameter1 ={
                        new SqlParameter("@uid", TextBox_uid.Text.Trim()),
                        new SqlParameter("@pwd", TextBox_pwd.Text.Trim())
                    };
                    String regist2 = "insert into User_Info(UID,NickName,UserType) values(@uid,@nickname,@usertype)";
                    SqlParameter[] parameter2 ={
                        new SqlParameter("@uid", TextBox_uid.Text.Trim()),
                        new SqlParameter("@nickname", TextBox_uid.Text.Trim()),
                        new SqlParameter("@usertype", '1')
                    };
                    String regist3 = "insert into User_Address(UID) values(@uid)";
                    SqlParameter[] parameter3 ={
                        new SqlParameter("@uid", TextBox_uid.Text.Trim()),
                    };
                    int n1 = operate.OperateDataBySqlParameter(regist1,parameter1);
                    int n2 = operate.OperateDataBySqlParameter(regist2,parameter2);
                    int n3 = operate.OperateDataBySqlParameter(regist3,parameter3);
                    if (n1 == 1 && n2 == 1 && n3 == 1)
                    {
                        Response.Write("<script type='text/javascript'>alert('恭喜您，注册成功！');location='login.aspx';</script>");
                    }
                    else
                    {
                        Response.Write("<script type='text/javascript'>alert('注册失败，请换一个用户名重试！');location='Register.aspx';</script>");
                    }

                }
                else if (n == 1)
                {
                    Response.Write("<script type='text/javascript'>alert('用户名重复！');</script>");
                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('系统异常，请尝试重新注册');location='../Default.aspx';</script>");
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