using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2C_NetShop.App_Start;
using System.Data.SqlClient;

namespace B2C_NetShop.Manage
{
    public partial class main : System.Web.UI.Page
    {
        pageload load = new pageload();
        Database operate = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Convert.ToInt32(Session["Status"]) == 2 || Convert.ToInt32(Session["Status"]) == 3 || Convert.ToInt32(Session["Status"]) == 4)
                {
                    //合法管理员
                    HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
                    HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
                    HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注册、注销
                    String uid = Convert.ToString(Session["uid"]);
                    String nickname = Convert.ToString(Session["nickname"]);
                    Label_UID1.Text = nickname;
                    int status = Convert.ToInt32(Session["Status"]);
                    load.HyperLinkBind(hl1, hl2, hl3, uid, status);
                    hl2.Visible = false;
                    MultiView1.SetActiveView(View_Main);
                }
                else if (0.Equals(Convert.ToInt32(Session["Status"])))
                {
                    Response.Redirect("~/Account/Login.aspx");
                }
                else
                {
                    Response.Redirect("~/Account/Error.aspx");
                }
            }
        }

        protected void Button_RootUser_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View_RootUser);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View_User);
        }

        protected void level_root_Click(object sender, EventArgs e)
        {
            int index = Convert.ToInt32((sender as Button).CommandArgument);//获取到行号
            GridViewRow row = GridView2.Rows[index];
            string cellValue = row.Cells[0].Text;
            String sql = "update User_Info set UserType=2 where UID=@uid";
            SqlParameter[] parameters = {
                new SqlParameter("@uid",cellValue)
            };
            int i = operate.OperateData(sql,parameters);
            if (i == 1)
            {
                Response.Write("<script>alert('" + "成功设置为管理员" + "')</script>");
                GridView1.DataBind();
                GridView2.DataBind();
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('设置失败，请刷新页面重试！');</script>");
            }
        }

        protected void level_user_Click(object sender, EventArgs e)
        {
            int index = Convert.ToInt32((sender as Button).CommandArgument);//获取到行号
            GridViewRow row = GridView1.Rows[index];
            string cellValue = row.Cells[0].Text;
            String sql = "update User_Info set UserType=1 where UID=@uid";
            SqlParameter[] parameters = {
                new SqlParameter("@uid",cellValue)
            };
            int i = operate.OperateData(sql, parameters);
            if (i == 1)
            {
                Response.Write("<script>alert('" + "成功设置为普通用户" + "')</script>");
                GridView1.DataBind();
                GridView2.DataBind();
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('设置失败，请刷新页面重试！');</script>");
            }
        }

        protected void Button_Default_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View_Main);
        }

        protected void Button_Goods_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View_Goods);
        }
    }
}