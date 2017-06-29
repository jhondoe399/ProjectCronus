<%@ Page Title="Purchases" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Purchases.aspx.cs" Inherits="Purchases" %>


<asp:Content ID="ContentPurchase" ContentPlaceHolderID="MainContent" Runat="Server">

    
    <asp:LoginView runat="server">

        <AnonymousTemplate>
            <div>
                <h3> Please login to view this page</h3>
            </div>
        </AnonymousTemplate>
    
        <LoggedInTemplate>
    
            <asp:Button CssClass="btn btn-default mb15" ID="AddPurchase" runat="server" Text="Add Purchase" OnClick="AddPurchase_Click" />

            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourcePurchase"  GridLines="None"> 
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="ClientName" HeaderText="Client Name" SortExpression="ClientName" />
                    <asp:BoundField DataField="ProductModel" HeaderText="Product Model" SortExpression="ProductModel" />
                    <asp:BoundField DataField="PurchaseDate" HeaderText="Purchase Date" SortExpression="PurchaseDate" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="SupportType" HeaderText="Support Type" SortExpression="SupportType" />
                    <asp:BoundField DataField="SupportEndDate" HeaderText="Support End Date" SortExpression="SupportEndDate" DataFormatString="{0:d}" />
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
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcePurchase" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="select p.id, c.name as ClientName, prod.Model as ProductModel, p.PurchaseDate, p.Quantity, p.SupportType, p.SupportEndDate from Clients as c, Purchases as p, Products as prod where p.ClientID = c.Id and p.ProductID = prod.Id" 
                DeleteCommand="DELETE FROM [Purchases] WHERE [Id] = @Id"
                UpdateCommand="UPDATE [Purchases] SET [PurchaseDate] = @PurchaseDate, [SupportType] = @SupportType, [Quantity] = @Quantity WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="PurchaseDate" />
                    <asp:Parameter Name="SupportType" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
    
        </LoggedInTemplate>
   
    </asp:LoginView>


</asp:Content>

