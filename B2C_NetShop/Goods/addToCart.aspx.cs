using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2C_NetShop.App_Start;

namespace B2C_NetShop.Goods
{
	public partial class addToCart : System.Web.UI.Page
	{
		pageload load = new pageload();
		Database operate = new Database();
		protected void Page_Load(object sender, EventArgs e)
		{
			String uid = Convert.ToString(Session["uid"]);
			if ("".Equals(uid))
			{
				Response.Redirect("~/Default.aspx");
			}
			HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
			HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
			HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注册、注销
			String nickname = Convert.ToString(Session["nickname"]);
			int status = Convert.ToInt32(Session["Status"]);
			load.HyperLinkBind(hl1, hl2, hl3, uid, status);
			int bookid = Convert.ToInt32(Request.QueryString["bookid"]);
			int booknum = Convert.ToInt32(Request.QueryString["booknum"]);
			bindDataList(bookid, booknum);
			addcart(bookid, booknum);
		}
		protected void addcart(int bookid, int booknum)
		{
			Hashtable hashCart;
			if (Session["ShopCart"] == null)
			{//用户没有分配购物车
				hashCart = new Hashtable();  //生成一个hash表
				hashCart.Add(bookid, booknum);  //添加图书
				Session["ShopCart"] = hashCart; //分配给用户
			}
			//用户已有购物车
			hashCart = (Hashtable)Session["ShopCart"];
			if (hashCart.Contains(bookid)) //购物车已有此图书
			{
				int count = Convert.ToInt32(hashCart[bookid].ToString()); //得到图书数量
				hashCart[bookid] = (count + booknum); //数量加1
			}
			else
			{
				hashCart.Add(bookid, booknum); //没有此图书，新加一个
			}
		}
		protected void bindDataList(int bookid, int booknum)
		{
			DataTable dtTable = new DataTable();
			DataColumn[] dataColumns = new DataColumn[5];
			String[] test = { "BookID", "BookName", "Num", "picUrl", "BookUrl" };
			for (int k = 0; k < test.Length; k++)
			{
				dataColumns[k] = new DataColumn(test[k]);
				dtTable.Columns.Add(dataColumns[k]);
			}
			DataRow row;
			row = dtTable.NewRow();
			row["BookID"] = bookid;
			row["Num"] = booknum;
			String sql = "select BookName,HotPrice,picUrl from Goods_Info where BookID=@bookid";
			SqlParameter[] parameters = {
						new SqlParameter("@bookid",bookid) };
			DataSet ds = operate.GetTable(sql, parameters);
			//填充
			row["BookName"] = ds.Tables[0].Rows[0][0].ToString(); //读取名称
			row["picUrl"] = ds.Tables[0].Rows[0][2].ToString();
            row["BookUrl"] = "~/Goods/Detail.aspx?id=" + bookid;
			dtTable.Rows.Add(row);
			current_info.DataSource = dtTable.DefaultView;
			current_info.DataBind();
		}
	}
}