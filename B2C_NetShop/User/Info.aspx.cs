using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using B2C_NetShop.App_Start;
using System.IO;
using System.Web.Services;

namespace B2C_NetShop.User
{
	public partial class Info : Page
	{
		Database operate = new Database();
		pageload load = new pageload();

		/// <summary>
		/// AddressId
		/// </summary>
		public int AddressId
		{
			get
			{
				if (ViewState["AddressId"] != null)
				{
					return Convert.ToInt32(ViewState["AddressId"]);
				}
				else
				{
					return 0;
				}
			}
			set
			{
				ViewState["AddressId"] = value;
			}
		}
		protected void Page_Load(object sender, EventArgs e)
		{
			String uid = Convert.ToString(Session["uid"]);
			if ("".Equals(uid))
			{
				Response.Redirect("~/Account/Login.aspx");
			}
			else
			{
				HyperLink hl1 = (HyperLink)(Master.FindControl("HyperLink1"));//用户个人资料
				HyperLink hl2 = (HyperLink)(Master.FindControl("HyperLink2"));//后台
				HyperLink hl3 = (HyperLink)(Master.FindControl("HyperLink3"));//注册、注销
				int status = Convert.ToInt32(Session["Status"]);
				load.HyperLinkBind(hl1, hl2, hl3, uid, status);

				hylIconPersonalInfo.NavigateUrl = hl1.NavigateUrl;
				if (!IsPostBack)
				{
					BindUserInfo();
					BindUserAddress();
					BindDataList();
					BindDataList2();
				}
			}
		}

		protected void Button_TotalView_Click(object sender, EventArgs e)
		{
			MultiView1.SetActiveView(View_TotalView);
		}

		protected void Button_UserInfo_Click(object sender, EventArgs e)
		{
			MultiView1.SetActiveView(View_UserInfo);
		}

		protected void Button_Address_Click(object sender, EventArgs e)
		{
			MultiView1.SetActiveView(View_Address);
		}

		protected void Button_Security_Click(object sender, EventArgs e)
		{
			MultiView1.SetActiveView(View_Security);
		}

		protected void Button_UserImage_Click(object sender, EventArgs e)
		{
			MultiView1.SetActiveView(View_UserImage);
		}

		protected void Button_Analyze_Click(object sender, EventArgs e)
		{
			MultiView1.SetActiveView(View_Analyze);
			Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "", "<script>init();</script>", true);
		}

		protected void Button_SetNewNickName_Click(object sender, EventArgs e)
		{
			string newnickname = TextBox_NewNickName.Text.Trim();
			string sql = "update User_Info set NickName=@newnickname where UID=@uid";
			SqlParameter[] parameters1 = { new SqlParameter("@newnickname", newnickname), new SqlParameter("@uid", Session["UID"].ToString()) };
			int i = operate.OperateData(sql, parameters1);
			if (i == 1)
			{
				Session["nickname"] = newnickname;
			
				Response.Write("<script type='text/javascript'>alert('修改成功！');location='Info.aspx';</script>");
			}
			else
			{
				Response.Write("<script type='text/javascript'>alert('修改失败！');location='Info.aspx';</script>");
			}
		}

		protected void DataList_Address_UpdateCommand(object source, DataListCommandEventArgs e)
		{
			int id = Convert.ToInt32(e.CommandArgument);
			String procName = "SetUserDefaultAddress";
			SqlParameter[] parameters =
			{
					new SqlParameter("@uid",Session["uid"].ToString()),
					new SqlParameter("@id",id)
				};
			decimal i = operate.Proc(procName, parameters);
			if (i == 0)
			{
				BindUserAddress();
				MultiView1.SetActiveView(View_Address);
			}
			else if (i == -1)
			{
				BindUserAddress();
				MultiView1.SetActiveView(View_Address);
			}
		}

		protected void DataList_Address_DeleteCommand(object source, DataListCommandEventArgs e)
		{
			int id = Convert.ToInt32(e.CommandArgument);
			string sql = "delete from User_Address where id=@id and uid=@uid";
			SqlParameter[] parameters ={
				new SqlParameter("@id",id),
				new SqlParameter("@uid",Session["uid"].ToString())
			};
			int i = operate.OperateData(sql, parameters);
			if (i == 1)
			{
				Response.Write("<script type='text/javascript'>alert('修改成功！');</script>");
				BindUserAddress();
				MultiView1.SetActiveView(View_Address);
			}
			else
			{
				Response.Write("<script type='text/javascript'>alert('修改失败');</script>");
			}
		}

		protected void DataList_Address_EditCommand(object source, DataListCommandEventArgs e)
		{
			int id = Convert.ToInt32(e.CommandArgument);
			String sql = "select RealName,PostCode,Address,PhoneNumber from User_Address where UID=@uid and id=@id";
			SqlParameter[] parameters = {
				new SqlParameter("@uid",Session["uid"].ToString()),
				new SqlParameter("@id",id)
				 };
			DataSet ds = operate.GetTable(sql, parameters);
			ds.Dispose();
			TextBox_RealName.Text = ds.Tables[0].Rows[0][0].ToString();
			TextBox_PostCode.Text = ds.Tables[0].Rows[0][1].ToString();
			TextBox_PhoneNum.Text = ds.Tables[0].Rows[0][3].ToString();
			TextBox_Address.Text = ds.Tables[0].Rows[0][2].ToString();
			AddressId = id;
			AddressModalTitle.Text = "修改地址";
			MultiView1.SetActiveView(View_UpdateAddress);
		}


		protected void Button_SetNewAddress_Click(object sender, EventArgs e)
		{
			//规定AddressId为0时为添加新地址，AddressId不为0时为修改ID为AddressId的地址
			AddressId = 0;
			AddressModalTitle.Text = "添加新地址";
			MultiView1.SetActiveView(View_UpdateAddress);
		}

		protected void AddressSubmitBtn_Click(object sender, EventArgs e)
		{
			if(AddressId == 0) //判定为添加地址
			{
				String sql = "insert into  User_Address (UID,RealName,PostCode,Address,PhoneNumber) values (@uid,@RealName,@PostCode,@Address,@PhoneNumber)";
				SqlParameter[] parameters2 = {
					new SqlParameter("@RealName", TextBox_RealName.Text.Trim()),
					new SqlParameter("@PostCode", TextBox_PostCode.Text.Trim()),
					new SqlParameter("@Address",TextBox_Address.Text.Trim()),
					new SqlParameter("@PhoneNumber",TextBox_PhoneNum.Text.Trim()),
					new SqlParameter("@uid", Session["UID"].ToString())
				};
				int n = operate.OperateData(sql, parameters2);
				if (n == 1)
				{
					Response.Write("<script type='text/javascript'>alert('添加成功！');</script>");
					BindUserAddress();
					MultiView1.SetActiveView(View_Address);
				}
				else
				{
					Response.Write("<script type='text/javascript'>alert('添加失败！');</script>");
					BindUserAddress();
					MultiView1.SetActiveView(View_Address);
				}
			}
			else{
				String sql = "update User_Address set RealName=@RealName,PostCode=@PostCode,Address=@Address,PhoneNumber=@PhoneNumber where UID=@uid and id=@id";
				SqlParameter[] parameters2 = {
					new SqlParameter("@RealName", TextBox_RealName.Text.Trim()),
					new SqlParameter("@PostCode", TextBox_PostCode.Text.Trim()),
					new SqlParameter("@Address",TextBox_Address.Text.Trim()),
					new SqlParameter("@PhoneNumber",TextBox_PhoneNum.Text.Trim()),
					new SqlParameter("@uid", Session["UID"].ToString()),
					new SqlParameter("@id",AddressId)
				};
				int n = operate.OperateData(sql, parameters2);
				if (n == 1)
				{
					Response.Write("<script type='text/javascript'>alert('修改成功！');</script>");
					BindUserAddress();
					MultiView1.SetActiveView(View_Address);
				}
				else
				{
					Response.Write("<script type='text/javascript'>alert('修改失败！');</script>");
					BindUserAddress();
					MultiView1.SetActiveView(View_Address);
				}
			}
		}

		protected void Button4_Click(object sender, EventArgs e)
		{
			BindUserAddress();
			MultiView1.SetActiveView(View_Address);
		}

		protected void Button_SetNewPWD_Click(object sender, EventArgs e)
		{
			String procName = "UserSetNewPwd";
			SqlParameter[] parameters =
			{
				new SqlParameter("@uid",Session["uid"].ToString()),
				new SqlParameter("@oldpwd",TextBox_OldPwd.Text.Trim()),
				new SqlParameter("@newpwd",TextBox_NewPwd1.Text.Trim()),
			};
			decimal i = operate.Proc(procName, parameters);
			if (i == 0)
			{
				Response.Write("<script type='text/javascript'>alert('修改成功，请重新登陆');location='../Account/Login.aspx';</script>");
			}
			else if (i == -1)
			{
				Response.Write("<script type='text/javascript'>alert('原密码校验错误');location='Info.aspx'</script>");
			}
		}

		protected void setNewUserImg(object sender, EventArgs e)
		{
			if (FileUpload1.HasFile)
			{
				string fileName = this.FileUpload1.FileName;
				String fileExtension = System.IO.Path.GetExtension(fileName).ToLower();
				if ((fileExtension == ".png" || fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".bmp") && (FileUpload1.PostedFile.ContentLength < 409600))
				{
					String path = Server.MapPath("../User/ImagesUpload/" + Session["UID"].ToString() + "/");
					if (!Directory.Exists(path))
					{
						Directory.CreateDirectory(path);
					}
					String newname = DateTime.Now.ToFileTimeUtc().ToString() + fileExtension;
					FileUpload1.PostedFile.SaveAs(path + newname);
					String imgPath = "/User/ImagesUpload/" + Session["UID"].ToString() + "/" + newname;
					String sql = "update User_Info set userImgUrl=@imgPath where uid=@uid";
					SqlParameter[] parameters = {
							new SqlParameter("@imgPath",imgPath),
							new SqlParameter("@uid", Session["UID"].ToString())
						};
					int i = operate.OperateData(sql, parameters);
					if (i == 1)
					{
						Response.Write("<script type='text/javascript'>alert('修改成功！');</script>");
						BindUserInfo();
						MultiView1.SetActiveView(View_TotalView);
					}
					else
					{
						Response.Write("<script type='text/javascript'>alert('修改失败');</script>");
					}
				}
				else
				{
					Response.Write("<script language='javascript'>alert('请选择一张图片或图片大小超过限制');</script>");
				}
			}
			else
			{
				Response.Write("<script language='javascript'>alert('请选择一张图片');</script>");
			}
		}

		protected void Btn_Order_Click(object sender, EventArgs e)
		{
			MultiView1.SetActiveView(View_Order);
		}

		public void BindUserInfo()
		{
			String sql = "select NickName,Money,UserType,userImgUrl from User_Info where UID=@uid";
			SqlParameter[] parameters = {
				new SqlParameter("@uid",Session["uid"].ToString())
				 };
			DataSet ds = operate.GetTable(sql, parameters);
			ds.Dispose();
			String nickname = ds.Tables[0].Rows[0][0].ToString();
			String money = ds.Tables[0].Rows[0][1].ToString();
			String usertype = ds.Tables[0].Rows[0][2].ToString();
			String userImgUrl = ds.Tables[0].Rows[0][3].ToString();
			//账户总览页
			Label_UID1.Text = nickname;
			Label_UID2.Text = Session["uid"].ToString();
			if (usertype == "1")
			{
				Label_UserType.Text = "注册用户";
			}
			else
			{
				Label_UserType.Text = "管理员";
			}
			Label_Money.Text = money;
			
			Image1.ImageUrl = userImgUrl;
			Image2.ImageUrl = userImgUrl;
		}

		public void BindUserAddress()
		{
			String sql = "select id,RealName,PostCode,Address,PhoneNumber,IsSelected from User_Address where UID=@uid order by AddTime DESC";
			SqlParameter[] parameters = {
				new SqlParameter("@uid",Session["uid"].ToString())
				 };
			DataSet ds = operate.GetTable(sql, parameters);
			ds.Dispose();
			DataList_Address.DataSource = ds.Tables[0];
			DataList_Address.DataBind();
		}

		public void BindDataList()
		{
			DataTable dtTable = new DataTable();
			DataColumn[] dataColumns = new DataColumn[5];
			String[] test = { "order_id", "order_date", "order_price", "isPay", "order_url" };
			for (int k = 0; k < test.Length; k++)
			{
				dataColumns[k] = new DataColumn(test[k]);
				dtTable.Columns.Add(dataColumns[k]);
			}
			String sql = "select DISTINCT order_id,order_date,order_price,isPay from Cart_Info where uid=@uid order by order_date desc";
			SqlParameter[] parameters ={
				new SqlParameter("@uid",Session["uid"].ToString())
			};
			DataSet ds = operate.GetTable(sql, parameters);
			DataRow row;
			int i = 0;
			foreach (DataRow drRow in ds.Tables[0].Rows)
			{
				row = dtTable.NewRow();
				row["order_id"] = ds.Tables[0].Rows[i][0].ToString();
				row["order_date"] = ds.Tables[0].Rows[i][1].ToString();
				row["order_price"] = ds.Tables[0].Rows[i][2].ToString();
				//row["isPay"] = Convert.ToBoolean(ds.Tables[0].Rows[i][3]);
				if (ds.Tables[0].Rows[i][3].ToString() == "True")
				{
					row["isPay"] = "已付款";
				}
				else
				{
					row["isPay"] = "未付款";
				}
				row["order_url"] = "order.aspx?orderid=" + ds.Tables[0].Rows[i][0].ToString();
				i++;
				dtTable.Rows.Add(row);
			}
			DataList1.DataSource = dtTable.DefaultView;
			DataList1.DataBind();
		}

		public void BindDataList2()
		{
			DataTable dtTable = new DataTable();
			DataColumn[] dataColumns = new DataColumn[8];
			String[] test = { "order_id", "BookID", "picUrl", "BookName", "order_price", "order_date", "isPay","BookUrl" };
			for (int k = 0; k < test.Length; k++)
			{
				dataColumns[k] = new DataColumn(test[k]);
				dtTable.Columns.Add(dataColumns[k]);
			}
			String sql = "select Cart_Goods.order_id,BookID,Goods_Info.picUrl,BookName,order_price,order_date,isPay from Cart_Goods,Cart_Info,Goods_Info where Cart_Goods.order_id=Cart_Info.order_id and order_bookid=BookID and Cart_Info.UID=@uid order by order_id";
			SqlParameter[] parameters ={
				new SqlParameter("@uid",Session["uid"].ToString())
			};

			DataSet ds = operate.GetTable(sql, parameters);
			DataRow row;
			int i = 0;
			foreach (DataRow drRow in ds.Tables[0].Rows)
			{
				row = dtTable.NewRow();
				row["order_id"] = ds.Tables[0].Rows[i][0].ToString();
				row["BookID"] = ds.Tables[0].Rows[i][1].ToString();
				row["picUrl"] = ds.Tables[0].Rows[i][2].ToString();
				row["BookName"] = ds.Tables[0].Rows[i][3].ToString();
				row["order_price"] = ds.Tables[0].Rows[i][4].ToString();
				row["order_date"] = ds.Tables[0].Rows[i][5].ToString();
				

				row["isPay"] = Convert.ToBoolean(ds.Tables[0].Rows[i][6]);
				if (ds.Tables[0].Rows[i][6].ToString() == "True")
				{
					row["isPay"] = "已付款";
				}
				else
				{
					row["isPay"] = "未付款";
				}
				row["BookUrl"] = "../Goods/Detail.aspx?id=" + ds.Tables[0].Rows[i][1].ToString();
				i++;
				dtTable.Rows.Add(row);
			}
			DataList2.DataSource = dtTable.DefaultView;
			DataList2.DataBind();
		}
	}
}