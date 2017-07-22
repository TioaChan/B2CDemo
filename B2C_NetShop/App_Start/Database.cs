using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace B2C_NetShop.App_Start
{
    public class Database
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["B2C_DemoConnectionString"].ConnectionString.ToString());

        public int OperateData(string strsql)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(strsql, conn);
            int i = (int)cmd.ExecuteNonQuery();
            conn.Close();
            return i;
        }

        public DataSet GetTable(string sql)//返回dataset
        {
            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ds.Dispose();
            return ds;
        }
    }
}