<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="ContentAddProduct" ContentPlaceHolderID="MainContent" Runat="Server">
    
            <div id="PageResponse" runat="server"></div>
            <div class="table_container">
                <div class="cell_left">
                Product Category
                </div>
                <div class="cell_right">
                    <asp:DropDownList ID="ddlCategory" runat="server" DataTextField="Name" DataSourceID="SqlDataSourceProductCat" DataValueField="Id">
                        <asp:ListItem Value="0">Select Product Category</asp:ListItem>
                        <asp:ListItem Value="1">Switch</asp:ListItem>
                        <asp:ListItem Value="2">Router</asp:ListItem>
                        <asp:ListItem Value="3">Server</asp:ListItem>
                        <asp:ListItem Value="4">Wireless</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceProductCat" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Name], [Id] FROM [ProductCats]">
                    </asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFildValidatorProductCategory" runat="server" ErrorMessage="Please Select Category" controlToValidate="ddlCategory" ></asp:RequiredFieldValidator>
                </div>
                <div class="cell_left">
                    Serial:
                </div>
                <div class="cell_right">
                    <asp:TextBox ID="TextBoxSerial" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSerial" runat="server" ErrorMessage="Incorrect serial" ControlToValidate="TextBoxSerial"></asp:RequiredFieldValidator>
                </div>
                <div class="cell_left">
                    Model:
                </div>
                <div class="cell_right">
                    <asp:TextBox ID="TextBoxModel" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorModel" runat="server" ErrorMessage="Incorrect model" ControlToValidate="TextBoxModel"></asp:RequiredFieldValidator>
                </div>
                <div class="cell_left">
                    Gigabit Ports:
                </div>
                <div class="cell_right">
                    <asp:TextBox ID="TextBoxModeGbPorts" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGbPorts" runat="server" ErrorMessage="Incorrect Gigabit Ports" ControlToValidate="TextBoxModeGbPorts"></asp:RequiredFieldValidator>
                </div>
                <div>
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="Submit"/>
                </div>

                <asp:SqlDataSource ID="SqlDataSourceAddProduct" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]">
                </asp:SqlDataSource>
            </div>

</asp:Content>

