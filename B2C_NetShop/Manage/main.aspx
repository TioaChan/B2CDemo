<%@ Page Title="" Language="C#" MasterPageFile="~/WithoutLogin.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="B2C_NetShop.Manage.main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #div_left {
            float: left;
            display: block;
            /*
            background-color: green;
            */
            width: 310px;
            height: 800px;
        }

        #div_right {
            display: block;
            float: right;
            /*
            background-color: red;
            */
            width: 860px;
            height: 800px;
        }

        .clear {
            clear: both;
        }

        .auto-style1 {
            margin: 0 auto;
            text-align: center;
            /*
            background-color: #999;
                */
            width: 100%;
            height: 800px;
        }

        .div_button {
            text-align: center;
        }
    </style>
    <h2>欢迎您，<asp:Label ID="Label_UID1" runat="server" Text="Label_UID"></asp:Label></h2>
    <br />
    <div id="div_content" class="auto-style1">
        <div id="div_left">
            <div class="text-right">
                <asp:Button ID="Button_Default" runat="server" Text="欢迎   " CssClass="btn-link" OnClick="Button_Default_Click" />
            </div>
            <div class="text-right">
                <asp:Button ID="Button_RootUser" runat="server" Text="管理员管理" CssClass="btn-link" OnClick="Button_RootUser_Click" />
            </div>
            <div class="text-right">
                <asp:Button ID="Button1" runat="server" Text="用户管理 " CssClass="btn-link" OnClick="Button1_Click" />
            </div>
            <div class="text-right">
                <asp:Button ID="Button_Goods" runat="server" Text="商品管理 " CssClass="btn-link" />
            </div>
            <div class="text-right">
                <asp:Button ID="Button_Exit" runat="server" Text="退出   " CssClass="btn-link" />
            </div>
        </div>
        <div id="div_right">

            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View_Main" runat="server">
                    <br />
                    <div>
                        欢迎页面</div>
                </asp:View>
                <asp:View ID="View_RootUser" runat="server">
                    <br />
                    <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="844px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID" />
                                <asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
                                <asp:BoundField DataField="Money" HeaderText="Money" SortExpression="Money" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="level_user" runat="server" Text="降权" Visible="true" OnClick="level_user_Click"
                                            CommandArgument="<%# Container.DataItemIndex %>" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
                            DeleteCommand="DELETE FROM [User_Info] WHERE [UID] = @UID"
                            InsertCommand="INSERT INTO [User_Info] ([UID], [NickName], [Money], [UserType]) VALUES (@UID, @NickName, @Money, @UserType)"
                            SelectCommand="SELECT * FROM [User_Info] WHERE ([UserType] &gt;= @UserType)"
                            UpdateCommand="UPDATE [User_Info] SET [NickName] = @NickName, [Money] = @Money WHERE [UID] = @UID">
                            <DeleteParameters>
                                <asp:Parameter Name="UID" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="UID" Type="String" />
                                <asp:Parameter Name="NickName" Type="String" />
                                <asp:Parameter Name="Money" Type="Decimal" />
                                <asp:Parameter Name="UserType" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:Parameter DefaultValue="2" Name="UserType" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ID" Type="Int32" />
                                <asp:Parameter Name="NickName" Type="String" />
                                <asp:Parameter Name="Money" Type="Decimal" />
                                <asp:Parameter Name="UserType" Type="Int32" />
                                <asp:Parameter Name="UID" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </asp:View>
                <asp:View ID="View_User" runat="server">
                    <br />
                    <div>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UID" DataSourceID="SqlDataSource2" GridLines="Horizontal" Width="844px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID" />
                                <asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
                                <asp:BoundField DataField="Money" HeaderText="Money" SortExpression="Money" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="level_root" runat="server" Text="提权" Visible="true" OnClick="level_root_Click"
                                            CommandArgument="<%# Container.DataItemIndex %>" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                            ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>"
                            DeleteCommand="DELETE FROM [User_Info] WHERE [UID] = @UID"
                            InsertCommand="INSERT INTO [User_Info] ([UID], [NickName], [Money], [UserType]) VALUES (@UID, @NickName, @Money, @UserType)"
                            SelectCommand="SELECT * FROM [User_Info] WHERE ([UserType] = @UserType)"
                            UpdateCommand="UPDATE [User_Info] SET [NickName] = @NickName, [Money] = @Money WHERE [UID] = @UID">
                            <DeleteParameters>
                                <asp:Parameter Name="UID" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="UID" Type="String" />
                                <asp:Parameter Name="NickName" Type="String" />
                                <asp:Parameter Name="Money" Type="Decimal" />
                                <asp:Parameter Name="UserType" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="UserType" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ID" Type="Int32" />
                                <asp:Parameter Name="NickName" Type="String" />
                                <asp:Parameter Name="Money" Type="Decimal" />
                                <asp:Parameter Name="UserType" Type="Int32" />
                                <asp:Parameter Name="UID" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </asp:View>
                <asp:View ID="View_Goods" runat="server">
                    <br />
                    <div>
                        <div style="text-align:left">新增商品信息</div>
                    </div>

                </asp:View>
            </asp:MultiView>
        </div>
        <div class="clear" id="div_clr">
        </div>
    </div>
</asp:Content>
