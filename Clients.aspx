<%@ Page Title="Clients" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Clients.aspx.cs" Inherits="_Clients" %>

<asp:Content ID="ContentdClients" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:LoginView ID="LoginViewClients" runat="server">

        <AnonymousTemplate>
            <div>
                <h3> Please login to view this page</h3>
            </div>
        </AnonymousTemplate>

        <LoggedInTemplate>
    
    <asp:SqlDataSource ID="SqlDataSourceClients" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Clients]" DeleteCommand="DELETE FROM [Clients] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Clients] ([Name], [Address], [CUI], [Image]) VALUES (@Name, @Address, @CUI, @Image)" UpdateCommand="UPDATE [Clients] SET [Name] = @Name, [Address] = @Address, [CUI] = @CUI, [Image] = @Image WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="CUI" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="CUI" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div runat="server">
        <asp:Button ID="AddClient" runat="server" Text="Add Client" OnClick="AddClient_Click" />

    </div>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceClients" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:ImageField DataAlternateTextField="Image" DataImageUrlField="Image" ControlStyle-Width="200px" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="CUI" HeaderText="CUI" SortExpression="CUI" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    
             </LoggedInTemplate>
    </asp:LoginView>

    

</asp:Content>

