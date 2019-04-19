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
				Response.Write("<script type='text/javascript'>alert('请先登录');</script>");
			}
			else
			{
				String bookid = Request.QueryString["id"].ToString();
				Hashtable hashCart;
				if (Session["ShopCart"] == null)
				{//用户没有分配购物车
					hashCart = new Hashtable();  //生成一个hash表
					hashCart.Add(bookid, 1);  //添加图书
					Session["ShopCart"] = hashCart; //分配给用户
				}
				//用户已有购物车
				hashCart = (Hashtable)Session["ShopCart"];
				if (hashCart.Contains(bookid)) //购物车已有此图书
				{
					int count = Convert.ToInt32(hashCart[bookid].ToString()); //得到图书数量
					hashCart[bookid] = (count + 1); //数量加1
				}
				else
				{
					hashCart.Add(bookid, 1); //没有此图书，新加一个
				}
			}
		}
	}
}