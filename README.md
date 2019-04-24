# B2CDemo
## A B2C Website Demo

## 项目说明


本项目定位为一个电子图书商城，为应付期末实训作业而独立编写的程序，可能还会应付以后的期末实训。

目前使用Visual Stuio 2019进行改进，目标框架 `.NET Framework 4.5`。

### 功能说明


仅实现了简陋都算不上的交互及功能。
### 测试账户说明

数据库内已建立以下下账户用于调试：


|账号|密码|账户类型|
|:-----:|:-----:|:-----:|
|admin|admin|系统管理员|
|user1|user1|普通用户|



## 数据库访问说明


本项目连接数据库使用的字符串`B2C_DemoConnectionString`具体如下：
```
<connectionStrings>
  <add name="B2C_DemoConnectionString" connectionString="Data Source=.;Initial Catalog=B2C_Demo;Persist Security Info=True;User ID=debug;Password=123456"
    providerName="System.Data.SqlClient" />
</connectionStrings>
```
你可能需要向SQL Server中添加新的用户，或者修改web.config来配置连接字符串以便访问数据库。
