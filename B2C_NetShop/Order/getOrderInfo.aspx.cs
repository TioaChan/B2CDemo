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
                BindCartList();
            }
        }

        public void BindCartList()
        {
            DataTable dtTable = new DataTable();
            DataColumn column1 = new DataColumn("No");
            DataColumn column2 = new DataColumn("BookID");
            DataColumn column3 = new DataColumn("BookName");
            DataColumn column4 = new DataColumn("Num");
            DataColumn column5 = new DataColumn("Price");
            DataColumn column6 = new DataColumn("totalPrice");
            dtTable.Columns.Add(column1);
            dtTable.Columns.Add(column2);
            dtTable.Columns.Add(column3);
            dtTable.Columns.Add(column4);
            dtTable.Columns.Add(column5);
            dtTable.Columns.Add(column6);
            DataRow row;
            Hashtable hashCart = (Hashtable)Session["ShopCart"];
            foreach (object key in hashCart.Keys)
            {
                row = dtTable.NewRow();
                String id1 = key.ToString();
                String bookid = id1.Replace("id=", "");
                row["BookID"] = bookid;
                row["Num"] = hashCart[key].ToString();
                dtTable.Rows.Add(row);
            }
            int i = 1;
            float price;
            int count;
            float totalPrice = 0;
            foreach (DataRow drRow in dtTable.Rows)
            {//遍历，获取图书名称，单价
                String id1 = drRow["BookID"].ToString();
                String BookID = id1.Replace("id=", "");
                String sql = "select BookName,HotPrice from Goods_Info where BookID=@bookid";
                SqlParameter[] parameters1 = {
                    new SqlParameter("@bookid",BookID)
                };
                DataSet ds = operate.GetTable(sql, parameters1);


                //填充
                drRow["No"] = i;
                drRow["BookName"] = ds.Tables[0].Rows[0][0].ToString(); //读取名称
                drRow["price"] = (ds.Tables[0].Rows[0][1].ToString());  //读取单价
                price = float.Parse(ds.Tables[0].Rows[0][1].ToString());
                count = Int32.Parse(drRow["Num"].ToString());
                drRow["totalPrice"] = price * count;
                totalPrice += price * count;
                i++;
                Label1.Text = "￥" + totalPrice.ToString();
                Label3.Text = "￥" + totalPrice.ToString();
                gvShopCart.DataSource = dtTable.DefaultView;
                gvShopCart.DataKeyNames = new string[] { "BookID" };
                gvShopCart.DataBind();
            }
            int i1 = i - 1;
            Label2.Text = i1.ToString();
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            String totalprice1 = Label3.Text.ToString();
            String totalprice = totalprice1.Replace("￥", "");//获取总价
            String uid = Session["UID"].ToString();
            String order_date = DateTime.Now.ToLocalTime().ToString();
            String order_id = DateTime.Now.ToFileTimeUtc().ToString() + uid; //定义订单号
            Hashtable hashCart = (Hashtable)Session["ShopCart"];
            foreach (object key in hashCart.Keys)
            {
                String id1 = key.ToString();
                String bookid = id1.Replace("id=", "");   //获取id ，纯数字
                String booknum = hashCart[key].ToString(); //获取数量
                String sql1 = "insert into Cart_Goods (order_id,order_bookid,order_booknum) values(@orderid,@bookid,@booknum)";
                SqlParameter[] parameters1 = {
                    new SqlParameter("@orderid",order_id),
                    new SqlParameter("@bookid",bookid),
                    new SqlParameter("@booknum",booknum)
                };
                int i = operate.OperateDataBySqlParameter(sql1, parameters1);
                if (i == 1)
                {

                }
                else
                {
                    String sqldelete = "delete from Cart_Goods where order_id=@orderid";
                    SqlParameter[] parameters2 = {
                        new SqlParameter("@orderid",order_id),
                    };
                    operate.OperateDataBySqlParameter(sqldelete);
                }
            }
            String todo = "功能未实现";
            String sql2 = "insert into Cart_Info " +
                "(order_id,UID,receiver_address,receiver_name,receiver_phone,order_date,isSend,isPay,order_price) " +
                "values (@orderid,@uid,@receiver_address,@receiver_name,@receiver_phone,@order_date,@isSend,@isPay,@order_price)";
            SqlParameter[] parameters3 = {
                new SqlParameter("@orderid",order_id),
                new SqlParameter("@uid",uid),
                new SqlParameter("@receiver_address",todo),
                new SqlParameter("@receiver_name",todo),
                new SqlParameter("@receiver_phone",todo),
                new SqlParameter("@order_date",order_date),
                new SqlParameter("@isSend",'0'),
                new SqlParameter("@isPay",'0'),
                new SqlParameter("@order_price",totalprice)
            };
            operate.OperateDataBySqlParameter(sql2,parameters3);
            Response.Redirect("~/Order/confirm.aspx?orderid=" + order_id + "");
        }
    }
}
