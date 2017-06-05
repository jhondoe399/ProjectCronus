<%@ Page Title="Cronus eBusiness" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron">
        <h1 class="aligncenter mb35">Welcome to Cronus eBusiness</h1>

        <p class="aligncenter">
            <a href="/Products" class="btn btn-primary btn-lg">Products</a>
            <asp:LoginView ID="LoginViewClients" runat="server">
                <AnonymousTemplate>
                </AnonymousTemplate>

                <LoggedInTemplate>
                        <a href="/Clients" class="btn btn-primary btn-lg">Clients</a>
                </LoggedInTemplate>
            </asp:LoginView>
            
        </p>
       
    </div>

    </asp:Content>
