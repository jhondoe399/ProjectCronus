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

        <asp:DropDownList ID="DropDownListSeries" runat="server"  DataTextField="Series" DataValueField="Series"  OnSelectedIndexChanged="DropDownListSeries_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SDS_Series">
            <asp:ListItem Selected="True">Select Series</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownListModel" runat="server" DataTextField="Model" DataValueField="Model" OnSelectedIndexChanged="DropDownListModel_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Selected="True">Select Model</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownListGbPorts" runat="server" DataTextField="GbPortds" DataValueField="GbPorts">
            <asp:ListItem Selected="True">Select GbPorts</asp:ListItem>
        </asp:DropDownList>

        <asp:SqlDataSource ID="SDS_Series" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Series] FROM [Products]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridViewSwitch" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceGridViewSwitch">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="CatId" HeaderText="CatId" SortExpression="CatId" />
                <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Serial" HeaderText="Serial" SortExpression="Serial" />
                <asp:BoundField DataField="GbPorts" HeaderText="GbPorts" SortExpression="GbPorts" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceGridViewSwitch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] ORDER BY [Series], [Model], [Serial]" OnSelecting="SqlDataSourceGridViewSwitch_Selecting"></asp:SqlDataSource>
        <br />
    </div>
</asp:Content>

