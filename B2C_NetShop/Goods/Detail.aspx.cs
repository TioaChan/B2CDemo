using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2C_NetShop.App_Start;

namespace B2C_NetShop.Goods
{
	public partial class Detail : System.Web.UI.Page
	{
		pageload load = new pageload();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Request.QueryString["id"] == null)
			{
				Response.Redirect("~/Default.aspx");
			}
			HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
			HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
			HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注册、注销
			String uid = Convert.ToString(Session["uid"]);
			String nickname = Convert.ToString(Session["nickname"]);
			int status = Convert.ToInt32(Session["Status"]);
			load.HyperLinkBind(hl1, hl2, hl3, uid, status);
		}

		protected void btn_AddtoCart_Click(object sender, EventArgs e)
		{
			String uid = Convert.ToString(Session["uid"]);
			if ("".Equals(uid))
			{
				Response.Write("<script type='text/javascript'>alert('请先登录');location='../Account/Login.aspx';</script>");
			}
			else
			{
				int bookid = Convert.ToInt32(Request.QueryString["id"].ToString());
				int booknum = Convert.ToInt32(TextBox_booknum.Text.ToString());
				Response.Redirect("~/Goods/addTocart.aspx?bookid=" + bookid + "&booknum=" + booknum);
			}
		}
	}
}