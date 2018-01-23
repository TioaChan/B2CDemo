<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="B2C_NetShop.Goods.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main_content" style="display: block; width: 100%; height: 600px; " runat="server">
        <div id="welcome" style="" runat="server">
            <p style="font-size: xx-large; font-family: 微软雅黑;">欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label>。</p>
        </div>
        <div id="head_nav" runat="server">当前位置：<a href="../Default.aspx">首页</a> > 购物车</div>
        <div id="Gcart" style="text-align: center; padding-top: 15px; padding-left: 10px;" runat="server">
            <asp:GridView ID="gvShopCart" DataKeyNames="BookID" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1100px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                        <ItemTemplate>
                            <asp:TextBox ID="txtNum" runat="server" Text='<%#Eval("Num") %>' Width="60px" ></asp:TextBox>
                            <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNum"
                                ErrorMessage="×" ValidationExpression="^\+?[1-9][0-9]*$"></asp:RegularExpressionValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="单价">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            ￥<%#Eval("price")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="总价">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            ￥<%#Eval("totalPrice")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandArgument='<%#Eval("BookID") %>' OnCommand="lnkbtnDelete_Command">删除</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <div id="jiesuan" style="width: 1100px; height: 60px; display: block; float">
                <div id="gongneng" style="text-align: left; float: left; margin-top: 20px; margin-left: 10px;">
                    <asp:LinkButton ID="lnkbtnUpdate" runat="server" OnClick="lnkbtnUpdate_Click">更新购物车</asp:LinkButton>&nbsp;
                    <asp:LinkButton ID="lnkbtnClear" runat="server" OnClick="lnkbtnClear_Click">清空购物车</asp:LinkButton>&nbsp;
                    <asp:LinkButton ID="lnkbtnContinue" runat="server" OnClick="lnkbtnContinue_Click">继续购物</asp:LinkButton>&nbsp;
                    </div>
                <div style="text-align: right; float: right; margin-top: 10px;">
                    总价：<asp:Label ID="labTotalPrice" runat="server" Text="0.00 " Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label><asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/img/tijiaodingdan.png" Width="140px" OnClick="ImageButton1_Click" />
                </div>
            </div>
            <div id="div_clear" style="clear: both"></div>
        </div>
    </div>
</asp:Content>
