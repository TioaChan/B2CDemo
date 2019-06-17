using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2C_NetShop.App_Start;

namespace B2C_NetShop.Goods
{
	public partial class cart : System.Web.UI.Page
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
			Label_UID1.Text = nickname;
			int status = Convert.ToInt32(Session["Status"]);
			load.HyperLinkBind(hl1, hl2, hl3, uid, status);
			if (!IsPostBack)
			{
				BindCartList();
			}
		}

		public void BindCartList()
		{
			if (Session["ShopCart"] == null)
			{//购物车不存在
				Response.Redirect("~/Account/Login.aspx");
			}
			else
			{//购物车存在
				Hashtable hashCart = (Hashtable)Session["ShopCart"];
				if (hashCart.Count == 0)
				{//没有购物
					cart1.Style["display"] = "none";
					cart_ifEmpty.Style["display"] = "block";
				}
				else
				{
					cart1.Style["display"] = "block";
					cart_ifEmpty.Style["display"] = "none";
					DataTable dtTable = new DataTable();
					DataColumn[] dataColumns = new DataColumn[7];
					string[] test = { "No", "BookID", "BookName", "Num", "Price", "totalPrice", "picUrl" };
					for (int k = 0; k < test.Length; k++)
					{
						dataColumns[k] = new DataColumn(test[k]);
						dtTable.Columns.Add(dataColumns[k]);
					}
					DataRow row;
					int i = 1;
					float price;
					int count;
					float totalPrice = 0;
					foreach (object key in hashCart.Keys)
					{
						row = dtTable.NewRow();
						row["No"] = i;
						row["BookID"] = key.ToString();
						row["Num"] = hashCart[key].ToString();
						string sql = "select BookName,HotPrice,picUrl from Goods_Info where BookID=@bookid";
						SqlParameter[] parameters = {
							new SqlParameter("@bookid",key.ToString())
						};
						DataSet ds = operate.GetTable(sql, parameters);
						row["BookName"] = ds.Tables[0].Rows[0][0].ToString(); //读取名称
						row["price"] = ds.Tables[0].Rows[0][1].ToString();  //读取单价
						price = float.Parse(ds.Tables[0].Rows[0][1].ToString());
						count = int.Parse(row["Num"].ToString());
						row["totalPrice"] = price * count;
						row["picUrl"] = ds.Tables[0].Rows[0][2].ToString();
						totalPrice += price * count;
						i++;
						labTotalPrice.Text = "￥" + totalPrice.ToString();
						dtTable.Rows.Add(row);
					}
					dlShopcart.DataSource = dtTable.DefaultView;
					dlShopcart.DataBind();
				}
			}
		}

		protected void btn_cart_update_Click(object sender, EventArgs e)
		{
			Response.Write("<script>alert('TODO')</script>");
		}

		protected void btn_cart_clear_Click(object sender, EventArgs e)
		{
			Session["ShopCart"] = null;
			Hashtable hashCart = new Hashtable();
			Session["ShopCart"] = hashCart;
			Response.Redirect("~/Goods/cart.aspx");
		}

		protected void btn_cart_continue_Click(object sender, EventArgs e)
		{
			Response.Redirect("~/Default.aspx");
		}

		protected void btn_pay_Click(object sender, EventArgs e)
		{
			Response.Redirect("~/Order/getOrderInfo.aspx");
		}

		protected void dlShopcart_UpdateCommand(object source, DataListCommandEventArgs e)
		{
			int BookID = Convert.ToInt32(((Label)e.Item.FindControl("Label_BookID")).Text);
			if (e.CommandArgument.ToString() == "NumPlus")
			{
				TextBox tb = (TextBox)e.Item.FindControl("TextBox_Booknum");
				int num = Convert.ToInt32(tb.Text);
				if (num < 99)
				{
					tb.Text =Convert.ToString(num + 1);
					Hashtable hashCart = (Hashtable)Session["ShopCart"];
					int count = Convert.ToInt32(hashCart[BookID].ToString()); //得到图书数量
					hashCart[BookID] = (count + 1); //数量加1
				}
			}
			else if(e.CommandArgument.ToString()=="NumMinus"){
				TextBox tb = (TextBox)e.Item.FindControl("TextBox_Booknum");
				int num = Convert.ToInt32(tb.Text);
				if (num > 1)
				{
					tb.Text = Convert.ToString(num - 1);
					Hashtable hashCart = (Hashtable)Session["ShopCart"];
					int count = Convert.ToInt32(hashCart[BookID].ToString()); //得到图书数量
					hashCart[BookID] = (count - 1); //数量加1
				}
			}
			BindCartList();
		}

		protected void dlShopcart_DeleteCommand(object source, DataListCommandEventArgs e)
		{
			int BookID = Convert.ToInt32(((Label)e.Item.FindControl("Label_BookID")).Text);
			Hashtable hashCart = (Hashtable)Session["ShopCart"];
			hashCart.Remove(BookID);
			BindCartList();
		}
	}
}
