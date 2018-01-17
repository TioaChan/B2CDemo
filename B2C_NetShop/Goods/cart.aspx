<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="B2C_NetShop.Goods.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<table style=" font-size: 9pt; font-family: 宋体; width:574px; height :806px; background-repeat :no-repeat; background-image: url(images/显示页面当前位置.jpg);">
			<tr>
			<td style ="height :20px" valign="middle" align="left">
                <br /><br />&nbsp;
			  目前位置：首页 &gt; 购物车
			</td>
			</tr>
			<tr>
			<td valign =top style ="height :786px" >
						<table cellSpacing="0" cellPadding="0" width="95%" align="center" border="0" style="FONT-SIZE: 9pt">
						     <tr>
						     <td align="center">
                                <asp:Label ID="labMessage" runat="server" Visible="False"></asp:Label></td>
							</tr>
							<tr>
						     <td align="left" height =30px>
                                <asp:Label ID="labTotalPrice" runat="server" Text="0.00 " ></asp:Label>￥</td>
							</tr>
							<tr style =" font :9pt; font-family :宋体;"  valign =top >
							<td align="left" style="height: 135px">
							
							 <asp:GridView ID="gvShopCart" DataKeyNames ="BookID"   runat="server"  AutoGenerateColumns="False"  AllowPaging="True" OnPageIndexChanging="gvShopCart_PageIndexChanging" >
                                 <Columns>
                                     <asp:BoundField DataField="No" HeaderText="序号" ReadOnly="True">
                                         <ItemStyle HorizontalAlign="Center" />
                                         <HeaderStyle HorizontalAlign="Center" />
                                     </asp:BoundField>  
                                      <asp:BoundField DataField="BookID" HeaderText="书籍ID" ReadOnly="True">
                                         <ItemStyle HorizontalAlign="Center" />
                                         <HeaderStyle HorizontalAlign="Center" />
                                     </asp:BoundField>                                    
                                     <asp:BoundField DataField="BookName" HeaderText="书籍名称" ReadOnly="True">
                                      <ItemStyle HorizontalAlign="Center" />
                                      <HeaderStyle HorizontalAlign="Center" />
                                     </asp:BoundField>  
                                     <asp:TemplateField HeaderText="数量">
                                    <ItemTemplate >
                                       <asp:TextBox ID="txtNum" runat="server" Text =<%#Eval("Num") %> Width =60px  OnTextChanged="txtNum_TextChanged"></asp:TextBox>
                                       <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNum"
                                ErrorMessage="×" ValidationExpression="^\+?[1-9][0-9]*$"></asp:RegularExpressionValidator>
                                </ItemTemplate>
                                </asp:TemplateField>
                                   
                                     <asp:TemplateField HeaderText =单价>
                                         <HeaderStyle HorizontalAlign=Center />
                                         <ItemStyle HorizontalAlign =Center />
                                         <ItemTemplate >
                                            <%#Eval("price")%>￥
                                         </ItemTemplate>    
                                     </asp:TemplateField>
                                    <asp:TemplateField HeaderText =总价>
                                         <HeaderStyle HorizontalAlign=Center />
                                         <ItemStyle HorizontalAlign =Center />
                                         <ItemTemplate >
                                            <%#Eval("totalPrice")%>￥
                                         </ItemTemplate>    
                                     </asp:TemplateField>
                                     <asp:TemplateField>
                                         <HeaderStyle HorizontalAlign=Center />
                                         <ItemStyle HorizontalAlign =Center />
                                         <ItemTemplate >
                                             <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandArgument ='<%#Eval("BookID") %>' OnCommand ="lnkbtnDelete_Command">删除</asp:LinkButton>
                                         </ItemTemplate>    
                                     </asp:TemplateField>
                                     
                                 </Columns>
                                </asp:GridView>
							</td>
							</tr>
							<tr align =left valign =top  >
								<td align="center"  >
                                    <asp:LinkButton ID="lnkbtnUpdate" runat="server" OnClick="lnkbtnUpdate_Click">更新购物车</asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="lnkbtnClear" runat="server" OnClick="lnkbtnClear_Click" >清空购物车</asp:LinkButton>
                                    <asp:LinkButton ID="lnkbtnContinue" runat="server" OnClick="lnkbtnContinue_Click" >继续购物</asp:LinkButton>  
                                    <asp:LinkButton ID="lnkbtnCheck" runat="server" OnClick="lnkbtnCheck_Click" >前往服务台</asp:LinkButton>
									</td>
							</tr>
							<tr>
							<td align="left"  >
                                <br />
                                &nbsp;<li>如果要修改商品数量，请单击“更新购物车”按钮 &nbsp;&nbsp;&nbsp;</li>&nbsp;<li>如果要取消某个商品，请单击“删除”
                            <br />
                            </li>
                            </td>
							</tr>
						</table>
			</td>
			</tr>
			</table>
</asp:Content>
