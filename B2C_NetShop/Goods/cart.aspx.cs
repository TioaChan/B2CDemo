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















/*

        //如果Session变量存在，则直接获取
        if (Session["Cart"] != null)
        {
            dt = (DataTable)Session["Cart"];
        }
        else//如果Session变量不存在，创建存储数据的表结构
        {
            dt.Columns.Add(new DataColumn("ID", typeof(Int32)));
            dt.Columns.Add(new DataColumn("ProductNo", typeof(String)));
            dt.Columns.Add(new DataColumn("ProductName", typeof(String)));
            dt.Columns.Add(new DataColumn("BuyPrice", typeof(String)));
            dt.Columns.Add(new DataColumn("Amount", typeof(Int32)));
        }
        //ID或ProductNo不为null
        //则表示选中一件商品添加到购物车
        if (ID != null)
        {
            //先判断购物车中是否已经存在该商品
            Boolean IsExist = false;
            foreach (DataRow dr in dt.Rows)
            {
                if (dr["ProductNo"].ToString() == ProductNo)
                {
                    IsExist = true;
                    break;
                }
            }
            //如果购物车中存在该商品，则提示客户
            //该商品不会被重复添加到购物车
            if (IsExist)
            {
                ScriptManager.RegisterStartupScript(
                    this, typeof(Page), "alertExist", "alert('您选择的商品（编号：" + ProductNo + "）已在购物车存在！')", true);
            }
            else//如果购物车中不存在该商品，则添加到购物车
            {
                SqlHelper helper = new SqlHelper();
                DataTable dtRow = helper.FillDataTable(
                    String.Format("Select * From Products Where ID={0}", ID.ToString()));
                dt.Rows.Add(new object[]{
                Convert.ToInt32(ID.ToString()),
                dtRow.Rows[0]["ProductNo"].ToString(),
                dtRow.Rows[0]["ProductName"].ToString(),
                Convert.ToInt32(dtRow.Rows[0]["BuyPrice"].ToString()),
                1});
            }
        }

        gvCart.DataSource = dt;
        gvCart.DataBind();

        Session["Cart"] = dt;
    }
    protected void gvCart_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //GridView行的加亮显示功能
            e.Row.Attributes.Add("onmouseover", "b=this.style.backgroundColor;this.style.backgroundColor='#E1ECEE'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=b");

            //给+号图片和-号图片添加客户端click事件
            //用JavaScript实现数量的+1和-1
            TextBox tb = (TextBox)e.Row.FindControl("txtAmount");
            ((HtmlImage)e.Row.FindControl("imgReduce")).Attributes.Add("onclick", "Reduce(" + tb.ClientID + ")");
            ((HtmlImage)e.Row.FindControl("imgPlus")).Attributes.Add("onclick", "Plus(" + tb.ClientID + ")");

            //根据商品单价和数量计算购物车中商品的总金额
            DataRowView drv = (DataRowView)e.Row.DataItem;
            Total += Int32.Parse(drv["BuyPrice"].ToString()) * Int32.Parse(tb.Text);
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            //将总金额显示在金额一列对应的Footer单元格
            e.Row.Cells[1].Text = "金额总计：";
            e.Row.Cells[1].HorizontalAlign = HorizontalAlign.Right;
            e.Row.Cells[2].Text = Total.ToString("c2");
            e.Row.Cells[2].ForeColor = Color.Red;
        }
    }
    protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //点击删除时从DataTable中删除对应的数据行
        if (Session["Cart"] != null)
        {
            DataTable dt = (DataTable)Session["Cart"];
            dt.Rows.RemoveAt(e.RowIndex);
            dt.AcceptChanges();
            Session["Cart"] = dt;
            Response.Redirect("ShoppingCart.aspx");
        }
    }
    protected void imgbtnTotal_Click(object sender, ImageClickEventArgs e)
    {
        //遍历GridView，根据每行的文本框中的值
        //修改DataTable中对应行中数量一列的值
        if (Session["Cart"] != null)
        {
            DataTable dt = (DataTable)Session["Cart"];
            for (int i = 0; i < gvCart.Rows.Count; i++)
            {
                dt.Rows[i]["Amount"] = ((TextBox)gvCart.Rows[i].FindControl("txtAmount")).Text;
            }
            dt.AcceptChanges();
            Session["Cart"] = dt;
            Response.Redirect("ShoppingCart.aspx");
        }
    }

    #region 属性
    /// <summary>
    /// get URL参数ID的值，定义为Nullable<Int32>类型
    /// </summary>
    private Int32? ID
    {
        get
        {
            try
            {
                return Int32.Parse(Request.QueryString["ID"]);
            }
            catch
            {
                return null;
            }
        }
    }
    /// <summary>
    /// get URL参数ProductNo的值
    /// </summary>
    private String ProductNo
    {
        get
        {
            return Request.QueryString["ProductNo"];
        }
    }
    #endregion
}
}
}
*/
