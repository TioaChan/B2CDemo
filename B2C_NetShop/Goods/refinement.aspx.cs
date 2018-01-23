using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2C_NetShop.App_Start;

namespace B2C_NetShop.Goods
{
    public partial class refinement : System.Web.UI.Page
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
        }
    }
}