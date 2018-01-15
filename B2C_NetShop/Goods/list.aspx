<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="B2C_NetShop.Goods.list" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main" style="width:1020px;height:auto;">
        <div id="list_detail" style="height: 500px; width: 900px;text-align:center;margin-left:60px;margin-right:60px;margin-top:20px; padding-top: 10px; padding-right: 25px; padding-left: 25px;">
            <asp:GridView ID="GridView1" runat="server" Width="850px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" PageSize="3">
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                    <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                    <asp:BoundField DataField="MarketPrice" HeaderText="MarketPrice" SortExpression="MarketPrice" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:B2C_DemoConnectionString %>" SelectCommand="SELECT [BookID], [BookName], [Author], [Company], [MarketPrice] FROM [Goods_Info] WHERE ([ClassID] = @ClassID)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="ClassID" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
