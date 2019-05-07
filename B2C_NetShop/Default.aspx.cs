using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2C_NetShop.App_Start;

namespace B2C_NetShop
{
	public partial class _Default : Page
	{
		pageload load = new pageload();
		Database operate = new Database();
		protected void Page_Load(object sender, EventArgs e)
		{
			HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
			HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
			HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注册、注销
			String uid = Convert.ToString(Session["uid"]);
			String nickname = Convert.ToString(Session["nickname"]);
			String url = Convert.ToString(Session["userImgUrl"]);
			int status = Convert.ToInt32(Session["Status"]);
			load.HyperLinkBind(hl1, hl2, hl3, uid, status);
			load.MainPageBind(HyperLink1, HyperLink2, Label1, uid, nickname,Image1,url);
			BindDataList("Isrefinement", DataList_RefinementGoods);
			BindDataList("IsHot",DataList_HotGoods);
			BindDataList("IsDiscount",DataList_DiscountGoods);
		}

		/// <summary>
		/// 从数据库获取商品数据绑定到首页DataList控件
		/// </summary>
		/// <param name="type">推荐/热卖/折扣类型</param>
		/// <param name="dl">DataList控件ID</param>
		protected void BindDataList(String type,DataList dl)
		{
			DataTable dtTable = new DataTable();
			DataColumn[] dataColumns = new DataColumn[5];
			String[] test = { "BookName", "Author", "HotPrice", "picUrl", "BookUrl" };
			for (int k = 0; k < test.Length; k++)
			{
				dataColumns[k] = new DataColumn(test[k]);
				dtTable.Columns.Add(dataColumns[k]);
			}
			String sql = "select top 5 BookID,BookName,Author,HotPrice,picUrl from Goods_Info where " + type + "=@" + type ;
			SqlParameter[] parameters = {
						new SqlParameter(type,'1') };
			DataSet ds = operate.GetTable(sql, parameters);
			DataRow row;
			int i = 0;
			foreach (DataRow drRow in ds.Tables[0].Rows)
			{
				row = dtTable.NewRow();
				row["BookUrl"] = "Goods/Detail.aspx?id=" + ds.Tables[0].Rows[i][0].ToString();
				row["BookName"] = ds.Tables[0].Rows[i][1].ToString();
				row["Author"] = ds.Tables[0].Rows[i][2].ToString();
				row["HotPrice"] = ds.Tables[0].Rows[i][3].ToString();
				row["picUrl"] = ds.Tables[0].Rows[i][4].ToString();
				i++;
				dtTable.Rows.Add(row);
			}
			dl.DataSource = dtTable.DefaultView;
			dl.DataBind();
		}
	}
}