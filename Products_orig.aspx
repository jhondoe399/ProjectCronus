<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products_orig.aspx.cs" Inherits="Products" %>

<asp:Content ID="ContentProducts" ContentPlaceHolderID="MainContent" Runat="Server" >

    <% if (! isSingleCategory)
        { %>
        <div class="row">
            <asp:Repeater ID="RepeaterProducts" runat="Server" DataSourceID="sqlDataSourceProductCategories">
                <ItemTemplate>
                    <div class="col-sm-4">
                        <a href="/Products/<%# Eval("Name") %>">
                            <asp:Image runat="Server" Width="250px" Height="250px" ImageUrl='<%# Eval("Image") %>' />
                            <p class="aligncenter"><%# Eval("Name") %></p>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="sqlDataSourceProductCategories" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductCats]"></asp:SqlDataSource>
        </div>

    <% } 
        else
        { %>

    <p>    <%= categoryName %> </p>


        <div class="single-category-wrapper" runat="server">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceProductCategories2" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="CatId" HeaderText="CatId" SortExpression="CatId" />
                    <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="Serial" HeaderText="Serial" SortExpression="Serial" />
                    <asp:BoundField DataField="GbPorts" HeaderText="GbPorts" SortExpression="GbPorts" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceProductCategories2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]">
            </asp:SqlDataSource>
        </div>

        <div class="single-category-wrapper2" ID="router1">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceProductCategories3" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceProductCategories3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Series] FROM Products">
            </asp:SqlDataSource>
        </div>



    <% } %>


</asp:Content>

