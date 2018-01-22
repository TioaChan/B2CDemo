using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2C_NetShop.App_Start;

namespace B2C_NetShop.Manage
{
    public partial class AddGoods : System.Web.UI.Page
    {
        pageload load = new pageload();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToInt32(Session["Status"]) == 2 || Convert.ToInt32(Session["Status"]) == 3 || Convert.ToInt32(Session["Status"]) == 4)
                {
                    //合法管理员
                    HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
                    HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
                    HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注册、注销
                    String uid = Convert.ToString(Session["uid"]);
                    String nickname = Convert.ToString(Session["nickname"]);
                    Label1.Text = nickname;
                    int status = Convert.ToInt32(Session["Status"]);
                    load.HyperLinkBind(hl1, hl2, hl3, uid, status);
                    hl2.Visible = false;
                }
                else if (0.Equals(Convert.ToInt32(Session["Status"])))
                {
                    Response.Redirect("~/Account/Login.aspx");
                }
                else
                {
                    Response.Redirect("~/Account/Error.aspx");
                }
            }
        }

        Database operate = new Database();
        protected void Button_submit_Click(object sender, EventArgs e)
        {
            String BookName = TextBox_Name.Text.ToString();
            String classid = DropDownList_Class.SelectedValue.ToString();
            String BookIntroduce = TextBox_BookIntroduce.Text.ToString();
            String Author = TextBox_Author.Text.ToString();
            String Company = TextBox_Company.Text.ToString();
            String MarketPrice = TextBox_MarketPrice.Text.ToString();
            String time = DateTime.Now.ToString();
            String sql = "insert into Goods_Info (ClassID,BookName,BookIntroduce,Author,Company,MarketPrice,HotPrice,Isrefinement,IsHot,IsDiscount,LoadDate) " +
                "values(" + classid + ",'" + BookName + "','" + BookIntroduce + "','" + Author + "','" + Company + "','" + MarketPrice + "',0,0,0,0,'" + time + "')";
            int i = operate.OperateData(sql);
            if (i == 1)
            {
                Response.Write("<script type='text/javascript'>alert('添加成功！');</script>");
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('添加失败');</script>");
            }
        }

        protected void Button_clear_Click(object sender, EventArgs e)
        {

        }
    }
}