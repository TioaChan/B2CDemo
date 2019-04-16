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
            int i = cmd.ExecuteNonQuery();
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
        public DataSet GetTablebySqlParameter(string sql, params SqlParameter[] parameters)//返回dataset
        {
            /**
            SqlCommand cmd = new SqlCommand(sql, conn);
            foreach (SqlParameter s in parameters)
            {
                cmd.Parameters.Add(s);
            }
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ds.Dispose();
            return ds;
            **/
            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
            foreach (SqlParameter s in parameters)
            {
                sda.SelectCommand.Parameters.Add(s);
            }
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ds.Dispose();
            return ds;
        }

        public int ExecuteScalar(String sql, params SqlParameter[] parameters)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            foreach (SqlParameter s in parameters)
            {
                cmd.Parameters.Add(s);
            }
            int i = (int)cmd.ExecuteScalar();
            conn.Close();
            return i;
        }
    }
}