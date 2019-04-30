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

namespace B2C_NetShop.User
{
    public partial class Info : Page
    {
		Database operate = new Database();
        pageload load = new pageload();
        //PagedDataSource pds = new PagedDataSource();
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            String uid = Convert.ToString(Session["uid"]);
            //String nickname = Convert.ToString(Session["nickname"]);
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
                if (!IsPostBack)
                {
                    BindUserInfo();
                    BindUserAddress();
                    BindDataList();
                    IsChecked();
                }
            }
        }

        protected void Button_TotalView_Click(object sender, EventArgs e)
        {
            //BindUserInfo();
            MultiView1.SetActiveView(View_TotalView);
        }

        protected void Button_UserInfo_Click(object sender, EventArgs e)
        {
            //BindUserInfo();
            MultiView1.SetActiveView(View_UserInfo);
        }

        protected void Button_Address_Click(object sender, EventArgs e)
        {
            //BindUserAddress();
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

        protected void Button_SetNewNickName_Click(object sender, EventArgs e)
        {
            String newnickname = TextBox_NewNickName.Text.Trim();
            String sql = "update User_Info set NickName=@newnickname where UID=@uid";
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

        protected void Button_SetNewAddress_Click(object sender, EventArgs e)
        {
            String sql = "update User_Address set RealName=@RealName,PostCode=@PostCode,Address=@Address,PhoneNumber=@PhoneNumber where UID=@uid";
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
                Response.Write("<script type='text/javascript'>alert('修改成功！');location='Info.aspx';</script>");
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('修改失败！');location='Info.aspx';</script>");
            }
        }

        protected void Button_SetNewPWD_Click(object sender, EventArgs e)
        {
            String pwd = "select * from User_Account where UID=@uid";
            SqlParameter[] parameters1 = {
                new SqlParameter("@uid",Session["uid"].ToString())
                 };
            DataSet ds = operate.GetTable(pwd, parameters1);
            ds.Dispose();
            String pwd1 = ds.Tables[0].Rows[0][2].ToString();
            String pwd2 = TextBox3.Text.Trim();
            if (pwd1 == pwd2)
            {
                String sql = "update User_Account set Password=@pwd where UID=@uid";
                SqlParameter[] parameters3 = {
                    new SqlParameter("@pwd",TextBox1.Text.Trim()),
                    new SqlParameter("@uid",Session["UID"].ToString())
                };
                int n = operate.OperateData(sql, parameters3);
                if (n == 1)
                {
                    Session["uid"] = "";
                    Response.Write("<script type='text/javascript'>alert('修改成功，请使用新密码重新登录！');location='../Account/Login.aspx';</script>");
                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('修改失败！');location='Info.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('密码校验错误！');location='Info.aspx';</script>");
            }
        }

        protected void Btnupload_Click(object sender, EventArgs e)
        {
            int length = this.FileUpload1.PostedFile.ContentLength;//获取图片大小，以字节为单位
            if (length < 4096)
            {
                Response.Write("<script language='javascript'>alert('您选择的图片过大！');</script>");
            }
            else
            {
                String type = FileUpload1.PostedFile.ContentType;//获取上传文件类型
                String fullfilename = FileUpload1.PostedFile.FileName;//获取上传文件在客户端的路径及名称
                String filename = fullfilename.Substring(fullfilename.LastIndexOf("\\") + 1);
                String extensions = filename.Substring(filename.LastIndexOf(".") + 1);//获取文件扩展名
                String name = Session["UID"].ToString() + DateTime.Now.ToString("yyyyMMddHHmmss");
                if (type == "image/jpeg" || type == "image/png")//限制上传格式 
                {
                    FileUpload1.SaveAs(Server.MapPath("~/") + "\\" + "ImagesUpload" + "\\" + name + "." + extensions);
                    //将图片以当前时间命名保存，避免上传图片命名重复
                    //设置上传图片大小为原图片大小
                    //System.Drawing.Image img = System.Drawing.Image.FromFile(this.Server.MapPath("Photo") + "\\" + name + "." + extensions);
                    //获得图片文件 
                    //int width = img.Width; 
                    //this.Image1.Width = width;//这是宽设置Image控件的宽度为图片宽度 
                    //int height = img.Height; 
                    //this.Image1.Height = height;//这是高，设置Image控件的高度为图片的高度 
                    Image1.ImageUrl = "~/User/ImagesUpload" + name + "." + extensions;
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('您选择的图片有误！');</script>");
                }
            }
        }

        protected void Btn_Order_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View_Order);
        }

        public void BindUserInfo()
        {
            //String sql = "select NickName,Money,UserType from User_Info where UID='" + Session["uid"].ToString() + "'";
            String sql = "select NickName,Money,UserType from User_Info where UID=@uid";
            SqlParameter[] parameters = {
                new SqlParameter("@uid",Session["uid"].ToString())
                 };
            //DataSet ds = operate.GetTable(sql);
            DataSet ds = operate.GetTable(sql, parameters);
            ds.Dispose();
            String nickname = ds.Tables[0].Rows[0][0].ToString();
            String money = ds.Tables[0].Rows[0][1].ToString();
            String usertype = ds.Tables[0].Rows[0][2].ToString();
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
            Label_NickName.Text = nickname;
        }

        public void BindUserAddress()
        {
            String sql = "select RealName,PostCode,Address,PhoneNumber from User_Address where UID=@uid";
            SqlParameter[] parameters = {
                new SqlParameter("@uid",Session["uid"].ToString())
                 };
            DataSet ds = operate.GetTable(sql,parameters);
            ds.Dispose();
            String realname = ds.Tables[0].Rows[0][0].ToString();
            String postcode = ds.Tables[0].Rows[0][1].ToString();
            String address = ds.Tables[0].Rows[0][2].ToString();
            String phone = ds.Tables[0].Rows[0][3].ToString();
            TextBox_RealName.Text = realname;
            TextBox_PostCode.Text = postcode;
            TextBox_Address.Text = address;
            TextBox_PhoneNum.Text = phone;
        }

        public void BindDataList()
        {
            ds = operate.GetTable("select * from Cart_Info;");
            DataList1.DataSource = ds; // 设置数据源，用于填充控件中的项的值列表
            DataList1.DataBind();      // 将控件及其所有子控件绑定到指定的数据源
        }


        public void IsChecked() {
            CheckBox cb;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                cb = (CheckBox)DataList1.Items[i].FindControl("CheckBox1");
                if ((bool)ds.Tables[0].Rows[i][8])
                {
                    cb.Checked = true;
                }
                else
                {
                    cb.Checked = false;
                }
            }
        } 
    }
}