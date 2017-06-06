<%@ Page Title="Cronus eBusiness" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron">
        <h1 class="aligncenter mb35">Welcome to Cronus eBusiness</h1>

        <div class="alignright">
            <p>Hello, </p>
            <asp:LoginName runat="server"></asp:LoginName>
            <asp:LoginStatus runat="server"></asp:LoginStatus>
        </div>
       
    </div>

    </asp:Content>
