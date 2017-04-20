<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server" >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible='<%# ! isSingleCategory %>'>
        <Columns>
            <asp:HyperlinkField DataTextField="Name" HeaderText="Name" DataNavigateUrlFields="Id"  DataNavigateUrlFormatString="/Products?cat_id={0}" SortExpression="Name" />
            <asp:ImageField DataImageUrlField="Image" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductCats]"></asp:SqlDataSource>


    <% if (isSingleCategory) { %>

        <div class="single-category-wrapper">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceProductCategories" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="CatId" HeaderText="CatId" SortExpression="CatId" />
                    <asp:BoundField DataField="Serial" HeaderText="Serial" SortExpression="Serial" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="GbPorts" HeaderText="GbPorts" SortExpression="GbPorts" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceProductCategories" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([CatId] = @cat_id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="cat_id" QueryStringField="cat_id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>


        </div>
    <% } %>

</asp:Content>

