<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Switch.aspx.cs" Inherits="Products" %>

<asp:Content ID="Switches" ContentPlaceHolderID="MainContent" Runat="Server" >



    <div ID="PageResponse" runat="server">
        <br />
        <asp:GridView ID="GridViewSwitch" runat="server" AutoGenerateColumns="False" DataSourceID="SDS_SwitchView" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ImageField DataImageUrlField="Image" HeaderText="Switch" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SDS_SwitchView" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductCats] WHERE Id=1">
        </asp:SqlDataSource>
        <br />

        <asp:DropDownList ID="DropDownListSeries" runat="server" DataTextField="Series" DataValueField="Series" OnSelectedIndexChanged="DropDownListSeries_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownListModel" runat="server" DataTextField="Model" DataValueField="Model">
        </asp:DropDownList>
        <br />
    </div>
</asp:Content>

