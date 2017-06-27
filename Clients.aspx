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
        <asp:Button ID="AddClient" CssClass="btn btn-default mb35" runat="server" Text="Add Client" OnClick="AddClient_Click" />

    </div>
    
    <asp:GridView ID="GridViewClients" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceClients" AllowSorting="True" GridLines="None">
        <Columns>
            <asp:ImageField DataAlternateTextField="Image" HeaderText="Logo" DataImageUrlField="Image" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="CUI" HeaderText="CUI" SortExpression="CUI" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="EditButton"
                                    runat="server"
                                    CssClass="EditButton"
                                    CommandName="Edit" 
                                    Text="Edit" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="UpdateButton"
                                    runat="server"
                                    CssClass="UpdateButton"
                                    CommandName="Update"
                                    Text="Update" />&nbsp;
                    <asp:LinkButton ID="Cancel"
                                    runat="server"
                                    CssClass="CancelButton"
                                    CommandName="Cancel"
                                    Text="Cancel" />
                </EditItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
                 <ItemTemplate>
                   <asp:LinkButton ID="DeleteButton"
                                CssClass="DeleteButton"
                                Text="Delete"
                                CommandName="Delete" 
                                runat="server" />
                 </ItemTemplate>
             </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
  
             </LoggedInTemplate>
    </asp:LoginView>

    

</asp:Content>

