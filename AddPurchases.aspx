<%@ Page Title="AddPurchases" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddPurchases.aspx.cs" Inherits="AddPurchases" %>

<asp:Content ID="ContentAddPurchases" ContentPlaceHolderID="MainContent" Runat="Server">


    <div id="PageResponse" runat="server"></div>
    <div class="table_container">
        <div class="cell_left">
            Client name:
        </div>
        <div class="cell_right">
             <asp:DropDownList ID="DropDownListClient" runat="server" DataSourceID="SqlDataSourceClientName" DataTextField="Name" DataValueField="Id" >
             </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSourceClientName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Id] FROM [Clients]"></asp:SqlDataSource>
              <asp:RequiredFieldValidator ID="RequiredFildValidatorClient" runat="server" ErrorMessage="Please select a client" controlToValidate="DropDownListClient" ></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
            Product:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="DropDownListProduct" runat="server" DataSourceID="SqlDataSourceProductName" DataTextField="Model" DataValueField="Id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceProductName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Model], [Id] FROM [Products]"></asp:SqlDataSource>
           
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorProduct" runat="server" ErrorMessage="Select Product" ControlToValidate="DropDownListProduct"></asp:RequiredFieldValidator>
        </div>
         <div class="cell_left">
            Quantity:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="TextInputQuantity" runat="server" TextMode="Number" Text="1"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidatorQuantity" runat="server" ErrorMessage="Input Quantity" ControlToValidate="TextInputQuantity"></asp:RequiredFieldValidator>
        </div>
         
        <div class="cell_left">
            Purchase Date:
        </div>
        <div class="cell_right">
            <asp:Calendar ID="CalendarEndDate" runat="server" OnDayRender="CalendarEndDate_DayRender"  SelectedDate="<%# DateTime.Today %>"></asp:Calendar>
            <br />
        </div>

        <div class="cell_left">
            Support Type:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="DropDownListSupport" runat="server" >
                <asp:ListItem Value="NBD">Next Business Day</asp:ListItem>
                <asp:ListItem Value="4h">4 Hours</asp:ListItem>
                <asp:ListItem Value="6h">6 Hours</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSupport" runat="server" ErrorMessage="Select Support Type" ControlToValidate="DropDownListSupport"></asp:RequiredFieldValidator>
        </div>

        <div class="cell_left">
            Support Period:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="DropDownListSupportPeriod" runat="server" >
                <asp:ListItem Value="1">1 Year</asp:ListItem>
                <asp:ListItem Value="2">2 Years</asp:ListItem>
                <asp:ListItem Value="3">3 Years</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPeriod" runat="server" ErrorMessage="Select Support Period" ControlToValidate="DropDownListSupportPeriod"></asp:RequiredFieldValidator>
        </div>
        <br /><br />
        <div>
            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="Submit"/>
        </div>


    </div>


</asp:Content>

