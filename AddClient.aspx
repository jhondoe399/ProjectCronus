<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddClient.aspx.cs" Inherits="AddClient" %>

<asp:Content ID="ContentAddClients" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceAddClient" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Clients]">
    </asp:SqlDataSource>

    <div id="PageResponse" runat="server"></div>
    <div class="table_container">
        <div class="cell_left">
            Client name:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="TextBoxClientName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFildValidatorNumeClient" runat="server" ErrorMessage="Incorrect name" controlToValidate="TextBoxClientName" ></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
            Client Adress:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="TextBoxAdress" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAdress" runat="server" ErrorMessage="Incorrect adress" ControlToValidate="TextBoxAdress"></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
            Client CUI:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="TextBoxCUI" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCUI" runat="server" ErrorMessage="Incorrect CUI" ControlToValidate="TextBoxCUI"></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
            Client Image:
        </div>
        <div class="cell_right">
            <asp:FileUpload ID="FileUploadImage" runat="server" />
        </div>
        <div>
            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="Submit"/>
        </div>

    </div>


</asp:Content>

