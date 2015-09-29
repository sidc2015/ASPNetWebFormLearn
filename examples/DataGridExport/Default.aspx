<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    yyyy
    <p />
        <asp:DataGrid ID="DataGrid1" runat="server" Width="100%" AutoGenerateColumns="False">
                <PagerStyle Visible="False"/>
                <Columns>
                    <asp:BoundColumn DataField="VerifyOpt" HeaderText="审核"></asp:BoundColumn>
                    <asp:BoundColumn DataField="IsGroupShoppingShow" HeaderText="是否团购"></asp:BoundColumn>
                    
                    <asp:BoundColumn DataField="SoSysNoName" HeaderText="销售单号"></asp:BoundColumn>
                    <asp:BoundColumn DataField="GCSysNoShow" HeaderText="礼品卡单号"></asp:BoundColumn>
                    <asp:BoundColumn DataField="SOID" HeaderText="销售单"></asp:BoundColumn>
                    <asp:BoundColumn DataField="PayTypeName" HeaderText="支付方式"></asp:BoundColumn>
                    <asp:BoundColumn DataField="PayAmount" HeaderText="支付金额"></asp:BoundColumn>
                    <asp:BoundColumn DataField="SourceName" HeaderText="来源"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ApproveUserName" HeaderText="审核人"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ApproveTime" HeaderText="审核时间"></asp:BoundColumn>
                    <asp:BoundColumn DataField="InputUserName" HeaderText="创建人"></asp:BoundColumn>
                    <asp:BoundColumn DataField="InputTime" HeaderText="创建时间"></asp:BoundColumn>
                    <asp:BoundColumn DataField="StatusName" HeaderText="状态"></asp:BoundColumn>
                    <asp:BoundColumn DataField="AlipayTradeNo" HeaderText="交易号"></asp:BoundColumn>
                    <asp:BoundColumn DataField="MPSysNo" HeaderText="合并支付号"></asp:BoundColumn>
                </Columns>
            </asp:DataGrid>
    yyyy
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:Content>
