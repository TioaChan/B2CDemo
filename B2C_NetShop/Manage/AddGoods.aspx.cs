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
            /**
             * 上传文件
             * **/
            Boolean fileOK = false;
            //获取上传的文件名
            string fileName = this.FileUpload1.FileName;
            //获取物理路径
            String path = Server.MapPath("~/Goods/img/");
            //判断上传控件是否上传文件
            if (FileUpload1.HasFile)
            {
                //判断上传文件的扩展名是否为允许的扩展名".gif", ".png", ".jpeg", ".jpg" ,".bmp"
                String fileExtension = System.IO.Path.GetExtension(fileName).ToLower();
                String[] Extensions = { ".gif", ".png", ".jpeg", ".jpg", ".bmp" };
                for (int n = 0; n < Extensions.Length; n++)
                {
                    if (fileExtension == Extensions[n])
                    {
                        fileOK = true;
                    }
                }
            }
            //如果上传文件扩展名为允许的扩展名，则将文件保存在服务器上指定的目录中
            if (fileOK)
            {
                try
                {
                    this.FileUpload1.PostedFile.SaveAs(path + fileName);
                    //MessageBox("文件上传完毕");
                    //Response.Write("<script type='text/javascript'>alert('上传成功');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script type='text/javascript'>alert('上传失败：" + ex.Message + "');</script>");
                    //MessageBox("文件不能上传，原因：" + ex.Message);
                }
            }
            else
            {
                //MessageBox("不能上传这种类型的文件");
                Response.Write("<script type='text/javascript'>alert('你不能上传这种类型的文件');</script>");
            }
            /**
             * 上传成功
             * **/

            String BookName = TextBox_Name.Text.ToString();
            String classid = DropDownList_Class.SelectedValue.ToString();
            String BookIntroduce = TextBox_BookIntroduce.Text.ToString();
            String Author = TextBox_Author.Text.ToString();
            String Company = TextBox_Company.Text.ToString();
            String MarketPrice = TextBox_MarketPrice.Text.ToString();
            String time = DateTime.Now.ToString();
            String sql = "insert into Goods_Info (ClassID,BookName,BookIntroduce,Author,Company,MarketPrice,HotPrice,Isrefinement,IsHot,IsDiscount,LoadDate,picUrl) " +
                "values(" + classid + ",'" + BookName + "','" + BookIntroduce + "','" + Author + "','" + Company + "','" + MarketPrice + "',0,0,0,0,'" + time + "','" + path + fileName + "')";
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

        public void UploadPic()
        {
            Boolean fileOK = false;
            //获取上传的文件名
            //string fileName = this.FileUpload1.FileName;
            String fileName = DateTime.Now.ToLocalTime().ToString();
            //获取物理路径
            String path = Server.MapPath("~/Goods/img/");
            //判断上传控件是否上传文件
            if (FileUpload1.HasFile)
            {
                //判断上传文件的扩展名是否为允许的扩展名".gif", ".png", ".jpeg", ".jpg" ,".bmp"
                String fileExtension = System.IO.Path.GetExtension(fileName).ToLower();
                String[] Extensions = { ".gif", ".png", ".jpeg", ".jpg", ".bmp" };
                for (int i = 0; i < Extensions.Length; i++)
                {
                    if (fileExtension == Extensions[i])
                    {
                        fileOK = true;
                    }
                }
            }
            //如果上传文件扩展名为允许的扩展名，则将文件保存在服务器上指定的目录中
            if (fileOK)
            {
                try
                {
                    this.FileUpload1.PostedFile.SaveAs(path + fileName);
                    //MessageBox("文件上传完毕");
                    //Response.Write("<script type='text/javascript'>alert('上传成功');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script type='text/javascript'>alert('上传失败：" + ex.Message + "');</script>");
                    //MessageBox("文件不能上传，原因：" + ex.Message);
                }
            }
            else
            {
                //MessageBox("不能上传这种类型的文件");
                Response.Write("<script type='text/javascript'>alert('你不能上传这种类型的文件');</script>");
            }

        }

        protected void Button_Upload_Click(object sender, EventArgs e)
        {
           
        }
    }
}