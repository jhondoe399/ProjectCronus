<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddClient.aspx.cs" Inherits="AddClient" %>

<asp:Content ID="ContentAddClients" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceAddClient" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Clients]">
    </asp:SqlDataSource>




</asp:Content>

