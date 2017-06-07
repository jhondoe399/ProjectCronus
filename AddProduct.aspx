<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="ContentAddProduct" ContentPlaceHolderID="MainContent" Runat="Server">
    
            <div id="PageResponse" runat="server"></div>
            <div class="table_container">
                <div class="cell_left">
                Product Category
                </div>
                <div>
                    <asp:DropDownList ID="ddlCategory" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnDataBinding="ddlCategory_DataBinding" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"
                        DataSourceID="SqlDataSourceProductCategory" DataTextField="Name" DataValueField="Id">
                        <asp:ListItem Value="%" Selected="True">All</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceProductCategory" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Name], [Id] FROM [ProductCats]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlCategory"  Name="Name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

            <div class="AddSwitch" runat="server" id="addSwitch" visible="false">
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

            <div class="AddRouter" runat="server" id ="addRouter" visible="false">
                <p>Add Router</p>
            </div>

            <div class="AddServer" runat="server" id ="addServer" visible="false">
                <p>Add Server</p>
            </div>

            <div class="AddWireless" runat="server" id ="addWireless" visible="false">
                <p>AddWireless</p>
            </div>
            
                

</asp:Content>

