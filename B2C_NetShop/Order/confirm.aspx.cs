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

            //String sql1 = "select order_price from Cart_Info where order_id='" + order_id+"'";
            String sql1 = "select order_price from Cart_Info where order_id=@order_id";
            SqlParameter[] parameters1 ={
                new SqlParameter("@order_id",order_id)
            };
            DataSet ds1 = operate.GetTablebySqlParameter(sql1,parameters1);


            float price = float.Parse(ds1.Tables[0].Rows[0][0].ToString());
            Label2.Text = price + " CNY";


            //String sql2 = "select Money from User_Info where UID='" + uid + "'";
            String sql2 = "select Money from User_Info where UID=@uid";
            SqlParameter[] parameters2 ={
                new SqlParameter("@uid",uid)
            };
            DataSet ds2 = operate.GetTablebySqlParameter(sql2,parameters2);



            float money = float.Parse(ds2.Tables[0].Rows[0][0].ToString());
            Label3.Text = money + " CNY";
            if (price > money)  //余额不足
            {
                ImageButton1.Enabled = false;
                ImageButton1.Visible = false;
                Label4.Enabled = true;
                Label4.Visible = true;
            }
            Session["price"] = price;
            Session["money"] = money;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            String uid = Session["UID"].ToString();
            String orderid = Request.QueryString["orderid"];
            float price = float.Parse(Session["price"].ToString());
            float money = float.Parse(Session["money"].ToString());
            float newmoney = money - price;
            String update1 = "update User_Info set Money=" + newmoney + " where UID='" + uid + "'";
            int x = operate.OperateData(update1);
            String update2 = "update Cart_Info set isPay=1 where order_id='" + orderid + "'";
            int y = operate.OperateData(update2);
            if (x == 1 || y == 1)
            {
                Hashtable hashCart = new Hashtable();
                Session["ShopCart"] = hashCart;
                Response.Write("<script type='text/javascript'>alert('付款成功');location='../Default.aspx';</script>");
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('付款失败，请在订单管理中重新付款');location='../Default.aspx';</script>");
            }
        }
    }
}
