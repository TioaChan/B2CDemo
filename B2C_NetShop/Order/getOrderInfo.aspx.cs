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

namespace B2C_NetShop.Order
{
	public partial class getOrderInfo : System.Web.UI.Page
	{
		public int AddressId
		{
			get
			{
				if (ViewState["AddressId"] != null)
				{
					return Convert.ToInt32(ViewState["AddressId"]);
				}
				else
				{
					return 0;
				}
			}
			set
			{
				ViewState["AddressId"] = value;
			}
		}
		pageload load = new pageload();
		Database operate = new Database();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["ShopCart"] == null)
			{//购物车不存在
				Response.Redirect("~/Default.aspx");
			}
			HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
			HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
			HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注册、注销
			String uid = Convert.ToString(Session["uid"]);
			String nickname = Convert.ToString(Session["nickname"]);
			int status = Convert.ToInt32(Session["Status"]);
			load.HyperLinkBind(hl1, hl2, hl3, uid, status);
			if (!IsPostBack)
			{
				BindDataListAddressList();
				BindDataListAddressSelected();
				BindCartList();
			}
		}

		public void BindCartList()
		{
			DataTable dtTable = new DataTable();
			DataColumn[] dataColumns = new DataColumn[8];
			string[] colunm = { "No", "BookID", "BookName", "Num", "MarketPrice", "HotPrice", "picUrl", "totalPrice" };
			for (int k = 0; k < colunm.Length; k++)
			{
				dataColumns[k] = new DataColumn(colunm[k]);
				dtTable.Columns.Add(dataColumns[k]);
			}
			DataRow row;
			Hashtable hashCart = (Hashtable)Session["ShopCart"];
			int i = 1;
			foreach (object key in hashCart.Keys)
			{
				row = dtTable.NewRow();
				row["No"] = i;
				row["BookID"] = key.ToString();
				row["Num"] = hashCart[key].ToString();
				//数据库遍历放在这里
				string sql = "select BookName,MarketPrice,HotPrice,picUrl from Goods_Info where BookID=@bookid";
				SqlParameter[] parameters = {
					new SqlParameter("@bookid",key.ToString())
				};
				DataSet ds = operate.GetTable(sql, parameters);
				row["BookName"]=ds.Tables[0].Rows[0][0].ToString();
				row["MarketPrice"] = ds.Tables[0].Rows[0][1].ToString();
				row["HotPrice"] = ds.Tables[0].Rows[0][2].ToString();
				row["picUrl"] = ds.Tables[0].Rows[0][3].ToString();
				row["totalPrice"] = Convert.ToDouble(hashCart[key]) * Convert.ToDouble(ds.Tables[0].Rows[0][2]);
				i++;
				dtTable.Rows.Add(row);
			}
			gvShopCart.DataSource = dtTable.DefaultView;
			gvShopCart.DataBind();
		}
		protected void BindDataListAddressList()
		{
			string sql = "select id,RealName,PhoneNumber,Address,PostCode,IsSelected from User_Address where UID=@uid Order by IsSelected DESC";
			SqlParameter[] parameters ={
				new SqlParameter ("@uid",Session["UID"].ToString()),
			};
			DataSet ds = operate.GetTable(sql, parameters);
			ds.Dispose();
			DataList_AddressList.DataSource = ds.Tables[0];
			DataList_AddressList.DataBind();
		}
		protected void BindDataListAddressSelected()
		{
			string sql = "select id,RealName,PhoneNumber,Address,PostCode,IsSelected from User_Address where UID=@uid and id=@id";
			SqlParameter[] parameters ={
				new SqlParameter ("@uid",Session["UID"].ToString()),
				new SqlParameter("@id",AddressId)
			};
			DataSet ds = operate.GetTable(sql, parameters);
			ds.Dispose();
			DataList_Address_Selected.DataSource = ds.Tables[0];
			DataList_Address_Selected.DataBind();
		}
		protected void DataList_AddressList_UpdateCommand(object source, DataListCommandEventArgs e)
		{
			int id = Convert.ToInt32(e.CommandArgument);
			AddressId = id;
			foreach (DataListItem item in DataList_AddressList.Items)
			{
				Button btn_noselect = (Button)item.FindControl("DataList_AddressList_Name");
				btn_noselect.BorderColor = System.Drawing.Color.FromName("#eaeaea");
			}
			Button btn = (Button)e.Item.FindControl("DataList_AddressList_Name");
			btn.BorderColor = System.Drawing.Color.Red;
			BindDataListAddressSelected();
		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			if (Convert.ToString(AddressId) == "0")
			{
				Response.Write("<script>alert('" + "请先选择收货地址" + "')</script>");
			}
			else
			{
				string totalprice1 = Label3.Text.ToString();
				string totalprice = totalprice1.Replace("￥", "");//获取总价
				string uid = Session["UID"].ToString();
				string order_date = DateTime.Now.ToLocalTime().ToString();
				string order_id = DateTime.Now.ToFileTimeUtc().ToString() + uid; //定义订单号
				string sql2 = "insert into Cart_Info " +
					"(order_id,UID,receiver_address_id,order_date,isSend,isPay,order_price) " +
					"values (@orderid,@uid,@receiver_address_id,@order_date,@isSend,@isPay,@order_price)";
				SqlParameter[] parameters3 = {
					new SqlParameter("@orderid",order_id),
					new SqlParameter("@uid",uid),
					new SqlParameter("@receiver_address_id",AddressId),
					new SqlParameter("@order_date",order_date),
					new SqlParameter("@isSend",'0'),
					new SqlParameter("@isPay",'0'),
					new SqlParameter("@order_price",totalprice)
				};
				operate.OperateData(sql2, parameters3);
				Hashtable hashCart = (Hashtable)Session["ShopCart"];
				foreach (object key in hashCart.Keys)
				{
					string id1 = key.ToString();
					string bookid = id1.Replace("id=", "");   //获取id ，纯数字
					string booknum = hashCart[key].ToString(); //获取数量
					string sql1 = "insert into Cart_Goods (order_id,order_bookid,order_booknum,uid) values  (@orderid,@bookid,@booknum,@uid)";
					SqlParameter[] parameters1 = {
						new SqlParameter("@orderid",order_id),
						new SqlParameter("@bookid",bookid),
						new SqlParameter("@booknum",booknum),
						new SqlParameter("@uid",uid)
					};
					operate.OperateData(sql1, parameters1);
				}
				Response.Redirect("~/Order/confirm.aspx?orderid=" + order_id + "");
			}
		}
	}
}
