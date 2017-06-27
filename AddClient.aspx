<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddClient.aspx.cs" Inherits="AddClient" %>

<asp:Content ID="ContentAddClients" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceAddClient" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Clients]">
    </asp:SqlDataSource>

    <div id="PageResponse" runat="server"></div>
    <div class="col-md-4 mb15">
        <asp:Label ID="lblClientName" AssociatedControlID="TextBoxClientName" Text="Client name:" runat="server" ValidateRequestMode="Enabled" />
        <asp:TextBox ID="TextBoxClientName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFildValidatorClientName" runat="server" SetFocusOnError="true" ErrorMessage="*Incorrect client name" controlToValidate="TextBoxClientName" ></asp:RequiredFieldValidator>
        <asp:Label ID="lblClientAdress" AssociatedControlID="TextBoxAdress" Text="Client Adress:" runat="server" ValidateRequestMode="Enabled" />
        <asp:TextBox ID="TextBoxAdress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFieldValidatorAdress" runat="server" SetFocusOnError="true" ErrorMessage="*Incorrect adress" ControlToValidate="TextBoxAdress"></asp:RequiredFieldValidator>
        <asp:Label ID="lblClientCUI" AssociatedControlID="TextBoxCUI" Text="Client CUI:" runat="server" ValidateRequestMode="Enabled" />
        <asp:TextBox ID="TextBoxCUI" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFieldValidatorCUI" runat="server" ErrorMessage="*Incorrect CUI" ControlToValidate="TextBoxCUI"></asp:RequiredFieldValidator>
        <asp:Label ID="lblClientImage" runat="server" AssociatedControlID="FileUploadImage" Text="Client Image:" ValidateRequestMode="Enabled" />
        <asp:FileUpload ID="FileUploadImage" runat="server" />
    </div>
    <div class="clearfix" ></div>
    <div class="col-md-2 aligncenter mb35">
        <asp:Button CssClass="btn btn-default" ID="ButtonSubmit" runat="server" Text="Submit" OnClick="Submit"/>
    </div>


</asp:Content>

