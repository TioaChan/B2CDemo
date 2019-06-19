using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using B2C_NetShop.App_Start;

namespace B2C_NetShop
{


	//select * from  Goods_Recommend_ByClass,dbo.Goods_Class where Goods_Class.ClassID=Goods_Recommend_ByClass.ClassID AND Goods_Recommend_ByClass.ClassID=1;
	
	public partial class WebForm1 : System.Web.UI.Page
	{
		pageload load = new pageload();
		Database operate = new Database();
		DataTable dtTable;
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}


	
	}
}