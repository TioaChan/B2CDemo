#数据库数据表说明

##电商项目数据库（B2C_Demo）内有四个表，分别为：

User_Account

User_Info

Goods_Info

Goods_Cart

各表用途如下：

##表User_Account用于记录用户名及密码；
ID列自动增长，初始值为1

UID列为用户登录时输入的用户名

Password列为用户设置的密码


##表User_Info用于记录每个用户的账户类型（普通注册用户或系统管理员），昵称及账户余额；
ID列自动增长，初始值为1

UID列为用户名

NickName列为用户设置的昵称

UserType列为用户组，用户组分为普通用户和管理员

Money列记录用户的余额

##表Goods_Info用于记录商品信息；
GoodsID列为商品编码

GoodsName列为商品名称

GoodsKind列为商品类型

GoodsPrice列为商品价格

GoodsPhoto列为商品照片


##表Goods_Cart用于记录用户的购物车信息（期望改进，将购物车信息存于Cookie或Seesion内）
ID列自动增长，初始值为1

UID列为用户名

CartID列为购物车编号

GoodsID为商品编码

GoodsName为商品名称

GoodsPrice为商品价格

Num列为商品数量

##修改如下

Goods_Info表新添加了三个列

GoodsProducer列为生产商

ProductionDate列为生产日期

GoodsIntroduction为商品介绍

新增了Goods_Kind表，用于保存所有的商品类型，表有两个列
KindID和KindName
