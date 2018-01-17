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

       

        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
            HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
            HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注册、注销
            String uid = Convert.ToString(Session["uid"]);
            String nickname = Convert.ToString(Session["nickname"]);
            int status = Convert.ToInt32(Session["Status"]);
            load.HyperLinkBind(hl1, hl2, hl3, uid, status);
            BindCartList();
        }

        private void BindCartList()
        {
            if (Session["ShopCart"] == null)
            {//购物车不存在

            }
            else
            {//购物车存在
                Hashtable hashCart = (Hashtable)Session["ShopCart"];
                if (hashCart.Count == 0)
                {//没有购物

                }
                else
                {//设置数据源
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
                    foreach (object key in hashCart.Keys)
                    {
                        row = dtTable.NewRow();
                        String id1 = key.ToString();
                        String bookid= id1.Replace("id=", "");
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
                     //新建sql查询
                        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["B2C_DemoConnectionString"].ConnectionString.ToString());
                        String id1 = drRow["BookID"].ToString();
                        String BookID = id1.Replace("id=", "");
                        String sql = "select BookName,HotPrice from Goods_Info where BookID="+BookID;
                        try
                        {
                            conn.Open();
                            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
                            DataSet ds = new DataSet();
                            sda.Fill(ds);
                            ds.Dispose();
                            //填充
                            drRow["No"] = i;
                            drRow["BookName"] = ds.Tables[0].Rows[0][0].ToString(); //读取名称
                            drRow["price"] = (ds.Tables[0].Rows[0][1].ToString());  //读取单价
                            price = float.Parse(ds.Tables[0].Rows[0][1].ToString());
                            count = Int32.Parse(drRow["Num"].ToString());
                            drRow["totalPrice"] = price * count;
                            totalPrice += price * count;
                            i++;
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                        finally
                        {
                            conn.Close();
                        }
                        labTotalPrice.Text = "总价：" + totalPrice.ToString();
                        gvShopCart.DataSource = dtTable.DefaultView;
                        gvShopCart.DataKeyNames = new string[] { "BookID" };
                        gvShopCart.DataBind();
                    }
                }

            }

        }
        protected void lnkbtnUpdate_Click(object sender, EventArgs e)
        {
            Hashtable hashCart = (Hashtable)Session["ShopCart"];
            foreach (GridViewRow gvr in this.gvShopCart.Rows)
            {
                TextBox otb = (TextBox)gvr.FindControl("txtNum");
                int count = Int32.Parse(otb.Text);
                string BookID = gvr.Cells[1].Text;
                hashCart[BookID] = count;
            }
            Session["ShopCart"] = hashCart;
            Response.Redirect("shopCart.aspx");
        }
        protected void lnkbtnDelete_Command(object sender, CommandEventArgs e)
        {
            Hashtable hashCart = (Hashtable)Session["ShopCart"];
            hashCart = (Hashtable)Session["ShopCart"];

            hashCart.Remove(e.CommandArgument);
            Session["ShopCart"] = hashCart;
            Response.Redirect("shopCart.aspx");
        }
        protected void lnkbtnClear_Click(object sender, EventArgs e)
        {
            Session["ShopCart"] = null;
            Response.Redirect("shopCart.aspx");
        }
        protected void lnkbtnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
        protected void lnkbtnCheck_Click(object sender, EventArgs e)
        {
            Response.Redirect("checkOut.aspx");
        }
        protected void gvShopCart_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvShopCart.PageIndex = e.NewPageIndex;
            BindCartList();
        }
        protected void txtNum_TextChanged(object sender, EventArgs e)
        {
            Hashtable hashCart = (Hashtable)Session["ShopCart"];
            foreach (GridViewRow gvr in this.gvShopCart.Rows)
            {

                TextBox otb = (TextBox)gvr.FindControl("txtNum");
                int count = Int32.Parse(otb.Text);
                string BookID = gvr.Cells[1].Text;
                hashCart[BookID] = count;
            }
            Session["ShopCart"] = hashCart;
            BindCartList();
        }
    }
}
