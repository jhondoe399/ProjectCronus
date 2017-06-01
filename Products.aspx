<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="ContentProducts" ContentPlaceHolderID="MainContent" Runat="Server" >

<div class="prodcategs mb35" runat="server">
    <asp:Repeater ID="RepeaterProducts" runat="Server" DataSourceID="sqlDataSourceProductCategories">
        <ItemTemplate>
            <div class="col-sm-3 prodimage mb35">
                <a href="/Products/<%# Eval("Name") %>">
                    <asp:Image runat="Server" ImageUrl='<%# Eval("Image") %>' />
                    <p class="aligncenter"><%# Eval("Name") %></p>
                </a>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="sqlDataSourceProductCategories" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductCats]"></asp:SqlDataSource>
</div>




<div runat="server" id="switches" visible="false">
    <br />
    <p><%= categoryName %></p>
    <br />

    <table>
        <tr>
            <th class="switchCatId">Category</th>
            <th class="swtichSeries">Series</th>
            <th class="swtichModel">Model</th>
            <th class="swtichSerial">Serial</th>
            <th class="swtichGbPorts">GbPorts</th>
        </tr>
        <tr>
            <td class="switchCatId"></td>
            <td class="swtichSeries">
                <asp:DropDownList class="swtichSeries" ID="ddlSeries" runat="server" AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSoruceSeries" DataTextField="Series" DataValueField="Series">
                    <asp:ListItem Value="%">All</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="swtichModel">
                <asp:DropDownList  class="swtichModel" ID="ddlModel" runat="server" AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSourceModel" DataTextField="Model" DataValueField="Model">
                    <asp:ListItem Value="%">All</asp:ListItem>
                </asp:DropDownList>
            </td class="swtichSerial">
            <td></td>
            <td class="swtichGbPorts">
                <asp:DropDownList class="swtichGbPorts" ID="ddlGbPorts" runat="server" AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSourceGbPorts" DataTextField="GbPorts" DataValueField="GbPorts">
                    <asp:ListItem Value="%">All</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="6" style="width:800px;">
                <asp:GridView ID="GridViewSwitch" runat="server" 
                    DataSourceID="sqlDataSourceGridViewSwitch" AutoGenerateColumns="false"
                    GridLines="None" ShowHeader="False" DataKeyNames="Id">
                    <Columns>
                        <asp:BoundField ItemStyle-Width="50px" DataField="CatId" HeaderText="CatId" SortExpression="CatId" />
                        <asp:BoundField ItemStyle-Width="300px" DataField="Series" HeaderText="Series" SortExpression="Series" />
                        <asp:BoundField ItemStyle-Width="300px" DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField ItemStyle-Width="300px" DataField="Serial" HeaderText="Serial" SortExpression="Serial" />
                        <asp:BoundField ItemStyle-Width="100px" DataField="GbPorts" HeaderText="GbPorts" SortExpression="GbPorts" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>

    <br />

    <asp:SqlDataSource ID="sqlDataSoruceSeries" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT DISTINCT [Series] FROM [Products]  where CatId = @CategoryId">
        <SelectParameters>
            <asp:Parameter Name="CategoryId" Type="Int32"/>
        </SelectParameters>
    </asp:SqlDataSource>
        
    <asp:SqlDataSource ID="sqlDataSourceModel" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Model] FROM [Products] where CatId = @CategoryId">
        <SelectParameters>
            <asp:Parameter Name="CategoryId" Type="Int32"/>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlDataSourceGbPorts" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT distinct [GbPorts] FROM [Products]  where CatId = @CategoryId">
        <SelectParameters>
            <asp:Parameter Name="CategoryId" Type="Int32"/>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlDataSourceGridViewSwitch" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [GbPorts] FROM [Products] where CatId = @CategoryId" 
        FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and Convert([GbPorts], 'System.String') like '{2}%'">
        <FilterParameters>
            <asp:ControlParameter ControlID="ddlSeries" Name="Series" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlGbPorts" Name="GbPorts" PropertyName="SelectedValue" Type="String" />
        </FilterParameters>
         <SelectParameters>
            <asp:Parameter Name="CategoryId" Type="Int32"/>
          </SelectParameters>
    </asp:SqlDataSource>
</div>



</asp:Content>

