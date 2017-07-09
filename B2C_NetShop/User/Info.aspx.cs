using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace B2C_NetShop.User
{
    public partial class Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //hl1 hl2 hl3 三个控件的属性的值，最后修改的时间为2017/07/01 21:20；除登录与注册页面的判定不同，其他页面一律相同
            HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
            HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
            HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注册、注销
            if (Session["uid"] == null)
            {
                //跳转登录页面
                Response.Redirect("~/Account/Login.aspx");
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
                if(!IsPostBack)
                {
                    BindUserInfo();
                    BindUserAddress();
                }
            }
        }

        protected void Button_TotalView_Click(object sender, EventArgs e)
        {
            //BindUserInfo();
            MultiView1.SetActiveView(View_TotalView);
        }

        protected void Button_UserInfo_Click(object sender, EventArgs e)
        {
            //BindUserInfo();
            MultiView1.SetActiveView(View_UserInfo);
        }

        protected void Button_Address_Click(object sender, EventArgs e)
        {
            //BindUserAddress();
            MultiView1.SetActiveView(View_Address);
        }

        protected void Button_Security_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View_Security);
        }

        public void BindUserInfo()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["B2C_DemoConnectionString"].ConnectionString.ToString());
            try
            {
                conn.Open();
                String sql = "select NickName,Money,UserType from User_Info where UID='" + Session["uid"].ToString() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                ds.Dispose();
                String nickname = ds.Tables[0].Rows[0][0].ToString();
                String money = ds.Tables[0].Rows[0][1].ToString();
                String usertype = ds.Tables[0].Rows[0][2].ToString();
                //账户总览页
                Label_UID1.Text = nickname;
                Label_UID2.Text = Session["uid"].ToString();
                if (usertype == "1")
                {
                    Label_UserType.Text = "注册用户";
                }
                else
                {
                    Label_UserType.Text = "管理员";
                }
                Label_Money.Text = money;
                Label_NickName.Text = nickname;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public void BindUserAddress()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["B2C_DemoConnectionString"].ConnectionString.ToString());
            try
            {
                conn.Open();
                String sql = "select RealName,PostCode,Address,PhoneNumber from User_Address where UID='" + Session["uid"].ToString() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                ds.Dispose();
                String realname = ds.Tables[0].Rows[0][0].ToString();
                String postcode = ds.Tables[0].Rows[0][1].ToString();
                String address = ds.Tables[0].Rows[0][2].ToString();
                String phone = ds.Tables[0].Rows[0][3].ToString();
                TextBox_RealName.Text = realname;
                TextBox_PostCode.Text = postcode;
                TextBox_Address.Text = address;
                TextBox_PhoneNum.Text = phone;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void Button_SetNewNickName_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["B2C_DemoConnectionString"].ConnectionString.ToString());
            try
            {
                conn.Open();
                String newnickname = TextBox_NewNickName.Text.Trim();
                String sql = "update User_Info set NickName='" + newnickname + "' where UID='" + Session["UID"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                int n = cmd.ExecuteNonQuery();
                if (n == 1)
                {
                    Session["nickname"] = newnickname;
                    Response.Write("<script type='text/javascript'>alert('修改成功！');location='Info.aspx';</script>");
                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('修改失败！');location='Info.aspx';</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void Button_SetNewAddress_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["B2C_DemoConnectionString"].ConnectionString.ToString());
            try
            {
                conn.Open();
                String sql = "update User_Address set RealName='" + TextBox_RealName.Text.Trim() + "',PostCode='" + TextBox_PostCode.Text.Trim() + "',Address='" + TextBox_Address.Text.Trim() + "',PhoneNumber='" + TextBox_PhoneNum.Text.Trim() +"' where UID='" + Session["UID"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                int n = cmd.ExecuteNonQuery();
                if (n == 1)
                {
                    Response.Write("<script type='text/javascript'>alert('修改成功！');location='Info.aspx';</script>");
                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('修改失败！');location='Info.aspx';</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        protected void Button_SetNewPWD_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["B2C_DemoConnectionString"].ConnectionString.ToString());
            conn.Open();
            try
            {
                String pwd = "select * from User_Account where UID='" + Session["UID"].ToString() + "'";
                SqlDataAdapter sda = new SqlDataAdapter(pwd, conn);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                ds.Dispose();
                String pwd1 = ds.Tables[0].Rows[0][1].ToString();
                String pwd2 = TextBox3.Text.Trim();
                if (pwd1 == pwd2)
                {
                    String sql = "update User_Account set Password='" + TextBox1.Text.Trim() + "' where UID='" + Session["UID"].ToString() + "'";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    int n = cmd.ExecuteNonQuery();
                    if (n == 1)
                    {
                        Session["uid"] = "";
                        Response.Write("<script type='text/javascript'>alert('修改成功，请使用新密码重新登录！');location='login.aspx';</script>");
                    }
                    else
                    {
                        Response.Write("<script type='text/javascript'>alert('修改失败！');location='Info.aspx';</script>");
                    }
                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('密码校验错误！');location='Info.aspx';</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}