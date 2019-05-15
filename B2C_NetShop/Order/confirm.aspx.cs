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

namespace B2C_NetShop.Order
{

    public partial class confirm : System.Web.UI.Page
    {
        pageload load = new pageload();
        Database operate = new Database();
		/// <summary>
		/// price
		/// </summary>
		public double price
		{
			get
			{
				if (ViewState["price"] != null)
				{
					return Convert.ToDouble(ViewState["price"]);
				}
				else
				{
					return 0;
				}
			}
			set
			{
				ViewState["price"] = value;
			}
		}
		/// <summary>
		/// money
		/// </summary>
		public double money
		{
			get
			{
				if (ViewState["money"] != null)
				{
					return Convert.ToDouble(ViewState["money"]);
				}
				else
				{
					return 0;
				}
			}
			set
			{
				ViewState["money"] = value;
			}
		}
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
            String order_id = Request.QueryString["orderid"];
            Label1.Text = order_id;
            String sql1 = "select order_price from Cart_Info where order_id=@order_id";
            SqlParameter[] parameters1 ={
                new SqlParameter("@order_id",order_id)
            };
            DataSet ds1 = operate.GetTable(sql1,parameters1);
			price = Convert.ToDouble(ds1.Tables[0].Rows[0][0].ToString());
            Label2.Text = price + " CNY";
            String sql2 = "select Money from User_Info where UID=@uid";
            SqlParameter[] parameters2 ={
                new SqlParameter("@uid",uid)
            };
            DataSet ds2 = operate.GetTable(sql2,parameters2);
			money = Convert.ToDouble(ds2.Tables[0].Rows[0][0].ToString());
            Label3.Text = money + " CNY";
            if (price > money)  //余额不足
            {
                Button1.Enabled = false;
                Button1.Visible = false;
                Label4.Enabled = true;
                Label4.Visible = true;
				Label4.Text = "余额不足";
			}
        }

		protected void Button1_Click(object sender, EventArgs e)
		{
			String uid = Session["UID"].ToString();
			String orderid = Request.QueryString["orderid"];
			String procName = "UserPay";
			SqlParameter[] parameters =
				{
					new SqlParameter("@price",price),
					new SqlParameter("@uid",uid),
					new SqlParameter("@orderid",orderid),
				};
			decimal i = operate.Proc(procName, parameters);
			if (i == 0)
			{
				Hashtable hashCart = new Hashtable();
				Session["ShopCart"] = hashCart;
				Response.Write("<script type='text/javascript'>alert('付款成功');location='../Default.aspx';</script>");
			}
			else if (i == -1)
			{
				Button1.Enabled = false;
				Button1.Visible = false;
				Label4.Enabled = true;
				Label4.Visible = true;
				Label4.Text = "余额不足";
			}
			else
			{
				Response.Write("<script type='text/javascript'>alert('付款失败，请在订单管理中重新付款');location='../Default.aspx';</script>");
			}
		}
	}
}
