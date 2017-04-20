<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server" >

    <% if (! isSingleCategory)
        { %>
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="Server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-sm-4">
                        <a href="/Products/<%# Eval("Id") %>">
                            <asp:Image runat="Server" ImageUrl='<%# Eval("Image") %>' />
                            <p class="aligncenter"><%# Eval("Name") %></p>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductCats]"></asp:SqlDataSource>
        </div>

    <% } 
        else
        { %>

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
            </asp:SqlDataSource>
        </div>
    <% } %>

    <div></div>
</asp:Content>

