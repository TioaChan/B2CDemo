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
	public partial class WebForm1 : System.Web.UI.Page
	{
		pageload load = new pageload();
		Database operate = new Database();
		protected void Page_Load(object sender, EventArgs e)
		{
			DataTable dtTable = new DataTable();
			DataColumn[] dataColumns = new DataColumn[6];
			string[] colunm = { "Rank","BookName", "BookIntroduce", "picUrl", "BookUrl" };
			for (int k = 0; k < colunm.Length; k++)
			{
				dataColumns[k] = new DataColumn(colunm[k]);
				dtTable.Columns.Add(dataColumns[k]);
			}
			string sql = "select BookID,BookName,BookIntroduce,picUrl from Goods_Sales_Rank_Top10 order by BookSalesCount desc";
			DataSet ds = operate.GetTable(sql);
			DataRow row;
			int i = 0;
			foreach (DataRow drRow in ds.Tables[0].Rows)
			{
				row = dtTable.NewRow();
				row["Rank"] = i + 1;
				row["BookName"] = ds.Tables[0].Rows[i][1].ToString();
				row["BookIntroduce"] = ds.Tables[0].Rows[i][2].ToString();
				row["picUrl"] = ds.Tables[0].Rows[i][3].ToString();
				row["BookUrl"] = "Goods/Detail.aspx?id=" + ds.Tables[0].Rows[i][0].ToString();
				i++;
				dtTable.Rows.Add(row);
			}
			DataList1.DataSource = dtTable.DefaultView;
			DataList1.DataBind();
		}
	}
}