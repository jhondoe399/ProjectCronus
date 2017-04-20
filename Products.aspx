<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server" Visible='<%# string.IsNullOrEmpty(Request.QueryString["cat_id"]) %>'>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceProductCategories">
        <Columns>
            <asp:HyperlinkField DataTextField="Name" HeaderText="Name" DataNavigateUrlFields="Id"  DataNavigateUrlFormatString="/Products?cat_id={0}" SortExpression="Name" />
            <asp:ImageField DataImageUrlField="Image" />
        </Columns>


    </asp:GridView>
    <div runat="server" Visible='<%# !string.IsNullOrEmpty(Request.QueryString["cat_id"]) %>'>
       hjghj
    </div>

    <asp:SqlDataSource ID="SqlDataSourceProductCategories" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductCats]"></asp:SqlDataSource>


</asp:Content>

