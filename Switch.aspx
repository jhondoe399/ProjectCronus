<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Switch.aspx.cs" Inherits="Products" %>

<asp:Content ID="Switches" ContentPlaceHolderID="MainContent" Runat="Server" >



    <div ID="PageResponse" runat="server">
        <br />

        <table style="width:650px" border="0" cellspacing="0" class="GridViewStyle">
            <tr class="HeaderStyle">
                <th>ID</th>
                <th>CatId</th>
                <th>Series</th>
                <th>Model</th>
                <th>Serial</th>
                <th>GbPorts</th>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>
                    <asp:DropDownList ID="ddlSeries" runat="server" AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSoruceSeries" DataTextField="Series" DataValueField="Series">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlModel" runat="server" AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSourceModel" DataTextField="Model" DataValueField="Model">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td></td>
                <td>
                    <asp:DropDownList ID="ddlGbPorts" runat="server" AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSourceGbPorts" DataTextField="GbPorts" DataValueField="GbPorts">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:GridView ID="GridViewSwitch" runat="server" 
                        DataSourceID="sqlDataSourceGridViewSwitch" 
                        AutoGenerateColumns="False" GridLines="None" ShowHeader="False" DataKeyNames="Id">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="CatId" HeaderText="CatId" SortExpression="CatId" />
                            <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" />
                            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                            <asp:BoundField DataField="Serial" HeaderText="Serial" SortExpression="Serial" />
                            <asp:BoundField DataField="GbPorts" HeaderText="GbPorts" SortExpression="GbPorts" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>

        <br />

        <asp:SqlDataSource ID="sqlDataSoruceSeries" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [Series] FROM [Products]">
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="sqlDataSourceModel" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Model] FROM [Products]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlDataSourceGbPorts" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [GbPorts] FROM [Products]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlDataSourceGridViewSwitch" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [GbPorts] FROM [Products]" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and Convert([GbPorts], 'System.String') like '{2}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="ddlSeries" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlGbPorts" Name="GbPorts" PropertyName="SelectedValue" Type="String" />
            </FilterParameters>
        </asp:SqlDataSource>


    </div>
</asp:Content>

