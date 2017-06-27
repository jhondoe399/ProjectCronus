<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="ContentProducts" ContentPlaceHolderID="MainContent" Runat="Server" >
    
    <div class="prodcategs mb35 row" runat="server">
        <asp:Repeater ID="RepeaterProducts" runat="Server" DataSourceID="sqlDataSourceProductCategories">
            <ItemTemplate>
                <div class="col-sm-3 prodimage mb35">
                    <a href="/Products/<%# Eval("Name") %>">
                        <asp:Image runat="Server" ImageUrl='<%# Eval("Image") %>' />
                        <p class="aligncenter"><%# Eval("Name") %></p>
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="sqlDataSourceProductCategories" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductCats]"></asp:SqlDataSource>
    </div>

    <div runat="server" id="switches" visible="false">
        <h2 class="subline aligncenter mb35"><%= categoryName %></h2>
        <table class="fixedTable productTable">
            <thead>
                <tr>
                    <th class="switchCatId smallCell">Category</th>
                    <th class="swtichSeries largeCell">Series</th>
                    <th class="swtichModel extralargeCell">Model</th>
                    <th class="swtichSerial extralargeCell">Serial</th>
                    <th class="swtichGbPorts smallCell">GbPorts</th>
                    <th class="smallCell">100Ports</th>
                    <th class="smallCell">1 Gb Uplinks</th>
                    <th class="smallCell">10 Gb Uplinks</th>
                    <th class="smallCell">PoE</th>
                    <th class="mediumCell">Software Feature</th>
                    <th class="mediumCell">Switching Capacity</th>
                    <th class="mediumCell">Forwarding Capacity</th>
                    <th class="mediumCell">Datasheet</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="smallCell"></td>
                    <td class="largeCell">
                        <asp:DropDownList ID="ddlSeries" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSoruceSeries" DataTextField="Series" DataValueField="Series">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="extralargeCell">
                        <asp:DropDownList ID="ddlModel" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceModel" DataTextField="Model" DataValueField="Model">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="extralargeCell"></td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlGbPorts" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceGbPorts" DataTextField="GbPorts" DataValueField="GbPorts">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlonehundredports" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceonehundredorts" DataTextField="onehundredports" DataValueField="onehundredports">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlOneGUplinks" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceOneGUplinks" DataTextField="OneGUplinks" DataValueField="OneGUplinks">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlTenGUplinks" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceTenGUplinks" DataTextField="TenGUplinks" DataValueField="TenGUplinks">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlPoe" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourcePoe" DataTextField="Poe" DataValueField="Poe">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="mediumCell"></td>
                    <td class="mediumCell"></td>
                    <td class="mediumCell"></td>
                    <td class="mediumCell"></td>
                </tr>
            </tbody>
        </table>
        <asp:GridView ID="GridViewSwitches" runat="server" 
            DataSourceID="sqlDataSourceGridViewSwitches" AutoGenerateColumns="False"
            GridLines="None" ShowHeader="False" DataKeyNames="Id"
            CssClass="fixedTable">

            <Columns>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="largeCell" DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="extralargeCell" DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="extralargeCell" DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="GbPorts" HeaderText="GbPorts" SortExpression="GbPorts" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="onehundredports" HeaderText="onehundredports" SortExpression="onehundredports" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="OneGUplinks" HeaderText="OneGUplinks" SortExpression="OneGUplinks" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="TenGUplinks" HeaderText="TenGUplinks" SortExpression="TenGUplinks" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="Poe" HeaderText="Poe" SortExpression="Poe" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="mediumCell" DataField="SoftwareFeature" HeaderText="SoftwareFeature" SortExpression="SoftwareFeature" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="mediumCell" DataField="SwitchingCapacity" HeaderText="SwitchingCapacity" SortExpression="SwitchingCapacity" />
                <asp:BoundField ItemStyle-CssClass="mediumCell" DataField="ForwardingCapacity" HeaderText="ForwardingCapacity" SortExpression="ForwardingCapacity" />
                <asp:HyperLinkField ItemStyle-CssClass="mediumCell" DataNavigateUrlFields="Datasheet" DataTextField="Datasheet" DataTextFormatString="Datasheet" />
            </Columns>
        </asp:GridView>

        <div>
            <asp:SqlDataSource ID="sqlDataSoruceSeries" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT [Series] FROM [Products]  where CatId = @CategoryId" OnSelecting="sqlDataSoruceSeries_Selecting">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>
        
            <asp:SqlDataSource ID="sqlDataSourceModel" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Model] FROM [Products] where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceGbPorts" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [GbPorts] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceonehundredorts" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [onehundredports] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>


            <asp:SqlDataSource ID="sqlDataSourceOneGUplinks" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [OneGUplinks] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceTenGUplinks" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [TenGUplinks] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourcePoe" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [Poe] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>


            <asp:SqlDataSource ID="sqlDataSourceGridViewSwitches" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [GbPorts], [Onehundredports], [OneGUplinks], [TenGUplinks], [Poe], [SoftwareFeature], [SwitchingCapacity], [ForwardingCapacity], [Datasheet] FROM [Products] where CatId = @CategoryId" 
                FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and Convert([GbPorts], 'System.String') like '{2}%' and Convert([Onehundredports], 'System.String') like '{3}%' and Convert([OneGUplinks], 'System.String') like '{4}%' and Convert([TenGUplinks], 'System.String') like '{5}%' and [Poe] like '{6}%'">
                <FilterParameters>
                    <asp:ControlParameter ControlID="ddlSeries" Name="Series" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlGbPorts" Name="GbPorts" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlonehundredports" Name="Onehundredports" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlOneGUplinks" Name="OneGUplinks" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlTenGUplinks" Name="TenGUplinks" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlPoe" Name="PoE" PropertyName="SelectedValue" Type="String" />
                </FilterParameters>
                 <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                  </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <h3 class="subline aligncenter mb35">Other specifications</h3>
        <asp:GridView ID="GridViewSwitchesCont" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceSwitchesCont" GridLines="None" ShowHeader="true" DataKeyNames="CatId" CssClass="fixedTable productTable">
            <Columns>
                <asp:BoundField DataField="CatId" HeaderText="CatId" SortExpression="CatId" />
                <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="MACAdresses" HeaderText="MAC Adresses" SortExpression="MACAdresses" />
                <asp:BoundField DataField="Ipv4Routes" HeaderText="Ipv4 Routes" SortExpression="Ipv4Routes" />
                <asp:BoundField DataField="Stacking" HeaderText="Stacking" SortExpression="Stacking" />
                <asp:BoundField DataField="StackingBandwidth" HeaderText="Stacking Bandwidth" SortExpression="StackingBandwidth" />
                <asp:BoundField DataField="RAM" HeaderText="RAM" SortExpression="RAM" />
                <asp:BoundField DataField="Flash" HeaderText="Flash" SortExpression="Flash" />
                <asp:BoundField DataField="VlanIDs" HeaderText="VlanIDs" SortExpression="VlanIDs" />
                <asp:BoundField DataField="DHCP" HeaderText="DHCP" SortExpression="DHCP" />
                <asp:BoundField DataField="DTP" HeaderText="DTP" SortExpression="DTP" />
                <asp:BoundField DataField="LACP" HeaderText="LACP" SortExpression="LACP" />
                <asp:BoundField DataField="VTP" HeaderText="VTP" SortExpression="VTP" />
            </Columns>

        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSourceSwitchesCont" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Products] where CatId = @CategoryId" 
                FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and Convert([GbPorts], 'System.String') like '{2}%' and Convert([Onehundredports], 'System.String') like '{3}%' and Convert([OneGUplinks], 'System.String') like '{4}%' and Convert([TenGUplinks], 'System.String') like '{5}%' and [Poe] like '{6}%'">
                <FilterParameters>
                    <asp:ControlParameter ControlID="ddlSeries" Name="Series" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlGbPorts" Name="GbPorts" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlonehundredports" Name="Onehundredports" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlOneGUplinks" Name="OneGUplinks" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlTenGUplinks" Name="TenGUplinks" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlPoe" Name="PoE" PropertyName="SelectedValue" Type="String" />
                </FilterParameters>
                 <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                  </SelectParameters>
            </asp:SqlDataSource>

    </div>

    <div runat="server" id="routers" visible="false">
        <h2 class="subline aligncenter mb35"><%= categoryName %></h2>
        <table class="fixedTable productTable">
            <thead>
                <tr>
                    <th class="smallCell">Category</th>
                    <th class="largeCell">Series</th>
                    <th class="extralargeCell">Model</th>
                    <th class="largeCell">Serial</th>
                    <th class="smallCell">1 Gb Uplinks</th>
                    <th class="smallCell">10 Gb Uplinks</th>
                    <th class="mediumCell">Forwarding Capacity</th>
                    <th class="smallCell">RAM</th>
                    <th class="smallCell">Flash</th>
                    <th class="mediumCell">Network Interface Module</th>
                    <th class="mediumCell">Enhanced Service Processor</th>
                    <th class="smallCell">Form Factor</th>
                    <th class="mediumCell">Datasheet</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="smallCell"></td>
                    <td class="largeCell">
                        <asp:DropDownList ID="ddlSeriesRouter" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSoruceSeriesRouter" DataTextField="Series" DataValueField="Series">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="extralargeCell">
                        <asp:DropDownList ID="ddlModelRouter" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceModelRouter" DataTextField="Model" DataValueField="Model">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="largeCell"></td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlOneGbUplinksRouter" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceOneGbUplinksRouter" DataTextField="OneGUplinks" DataValueField="OneGUplinks">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlTenGbUplinksRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceTenGbUplinksRouter" DataTextField="TenGUplinks" DataValueField="TenGUplinks">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="mediumCell"></td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlRAMRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceRAMRouter" DataTextField="RAM" DataValueField="RAM">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlFlashRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceFlashRouter" DataTextField="Flash" DataValueField="Flash">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="mediumCell">
                        <asp:DropDownList ID="ddlNIMRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceNIMRouter" DataTextField="NIM" DataValueField="NIM">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="mediumCell">
                        <asp:DropDownList ID="ddlESMRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceESMRouter" DataTextField="ESM" DataValueField="ESM">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlFormFactorRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceFormFactorRouter" DataTextField="FormFactor" DataValueField="FormFactor">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="mediumCell"></td>
                </tr>
            </tbody>
        </table>
        <asp:GridView ID="GridViewRouters" runat="server" CssClass="fixedTable" DataSourceID="sqlDataSourceGridViewRouters" AutoGenerateColumns="False" GridLines="None" ShowHeader="False" DataKeyNames="Id">
            <Columns>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="largeCell" DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="extralargeCell" DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="largeCell" DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="OneGUplinks" HeaderText="OneGUplinks" SortExpression="OneGUplinks" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="TenGUplinks" HeaderText="TenGUplinks" SortExpression="TenGUplinks" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="mediumCell" DataField="ForwardingCapacity" HeaderText="ForwardingCapacity" SortExpression="ForwardingCapacity" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="RAM" HeaderText="RAM" SortExpression="RAM" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="Flash" HeaderText="Flash" SortExpression="Flash" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="mediumCell" DataField="NIM" HeaderText="NIM" SortExpression="NIM" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="mediumCell" DataField="ESM" HeaderText="ESM" SortExpression="ESM" />
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="FormFactor" HeaderText="FormFactor" SortExpression="FormFactor" />
                <asp:HyperLinkField ItemStyle-CssClass="mediumCell" DataNavigateUrlFields="Datasheet" DataTextField="Datasheet" DataTextFormatString="Datasheet" />
            </Columns>
        </asp:GridView>

        <div>
            <asp:SqlDataSource ID="sqlDataSoruceSeriesRouter" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT [Series] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>
        
            <asp:SqlDataSource ID="sqlDataSourceModelRouter" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Model] FROM [Products] where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceOneGbUplinksRouter" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [OneGUplinks] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceTenGbUplinksRouter" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [TenGUplinks] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceRAMRouter" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [RAM] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceFlashRouter" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [Flash] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceNIMRouter" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [NIM] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceESMRouter" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [ESM] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceFormFactorRouter" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT distinct [FormFactor] FROM [Products]  where CatId = @CategoryId">
                <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sqlDataSourceGridViewRouters" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [OneGUplinks], [TenGUplinks], [ForwardingCapacity], [RAM], [Flash], [NIM], [ESM], [FormFactor], [Datasheet] FROM [Products] where CatId = @CategoryId" 
                FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and Convert([OneGUplinks], 'System.String') like '{2}%' and Convert([TenGUplinks], 'System.String') like '{3}%' and [RAM] like '{4}%' and [Flash] like '{5}%' and Convert([NIM], 'System.String') like '{6}%' and [ESM] like '{7}%' and [FormFactor] like '{8}%'">
                <FilterParameters>
                    <asp:ControlParameter ControlID="ddlSeriesRouter" Name="Series" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlModelRouter" Name="Model" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlOneGbUplinksRouter" Name="OneGUplinks" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlTenGbUplinksRouter" Name="TenGUplinks" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlRAMRouter" Name="RAM" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlFlashRouter" Name="Flash" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlNIMRouter" Name="NIM" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlESMRouter" Name="ESM" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlFormFactorRouter" Name="FormFactor" PropertyName="SelectedValue" Type="String" />
                </FilterParameters>
                 <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                  </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
        <asp:GridView ID="GridViewRoutersCont" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceRoutersCont" DataKeyNames="CatId" ShowHeader="true" GridLines="None" CssClass="fixedTable productTable">
            <Columns>
                <asp:BoundField DataField="CatId" HeaderText="CatId" SortExpression="CatId" />
                <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="UsbPorts" HeaderText="UsbPorts" SortExpression="UsbPorts" />
                <asp:BoundField DataField="RedundantPowerSupply" HeaderText="Redundant Power Supply" SortExpression="RedundantPowerSupply" />
                <asp:BoundField DataField="IPSec" HeaderText="IPSec" SortExpression="IPSec" />
                <asp:BoundField DataField="OSPF" HeaderText="OSPF" SortExpression="OSPF" />
                <asp:BoundField DataField="Isis" HeaderText="Isis" SortExpression="Isis" />
                <asp:BoundField DataField="BGP" HeaderText="BGP" SortExpression="BGP" />
                <asp:BoundField DataField="EIGRP" HeaderText="EIGRP" SortExpression="EIGRP" />
                <asp:BoundField DataField="Airflow" HeaderText="Airflow" SortExpression="Airflow" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceRoutersCont" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Products] where CatId = @CategoryId" 
                FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and Convert([OneGUplinks], 'System.String') like '{2}%' and Convert([TenGUplinks], 'System.String') like '{3}%' and [RAM] like '{4}%' and [Flash] like '{5}%' and Convert([NIM], 'System.String') like '{6}%' and [ESM] like '{7}%' and [FormFactor] like '{8}%'">
                <FilterParameters>
                    <asp:ControlParameter ControlID="ddlSeriesRouter" Name="Series" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlModelRouter" Name="Model" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlOneGbUplinksRouter" Name="OneGUplinks" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlTenGbUplinksRouter" Name="TenGUplinks" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlRAMRouter" Name="RAM" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlFlashRouter" Name="Flash" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlNIMRouter" Name="NIM" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlESMRouter" Name="ESM" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlFormFactorRouter" Name="FormFactor" PropertyName="SelectedValue" Type="String" />
                </FilterParameters>
                 <SelectParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32"/>
                  </SelectParameters>
            </asp:SqlDataSource>
    </div>

    <div runat="server" id="servers" visible="false">
        <h2 class="subline aligncenter mb35"><%= categoryName %></h2>
        <table class="fixedTable productTable">
            <thead>
                <tr>
                    <th class="smallCell">Id</th>
                    <th class="smallCell">Category</th>
                    <th class="largeCell">Series</th>
                    <th class="largeCell">Model</th>
                    <th class="largeCell">Serial</th>
                    <th class="smallCell">Form Factor</th>
                    <th class="smallCell">Memory Slots</th>
                    <th class="smallCell">Mezanine Adapter Slots</th>
                    <th class="smallCell">Disk Drives</th>
                    <th class="smallCell">Maximum Internal Storage</th>
                    <th class="smallCell">UCS Manager</th>
                    <th class="mediumCell">Datasheet</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="smallCell"></td>
                    <td class="smallCell"></td>
                    <td class="largeCell">
                        <asp:DropDownList ID="DropDownListSeriesServer" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSoruceSeriesServer" DataTextField="Series" DataValueField="Series">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="largeCell">
                        <asp:DropDownList ID="DropDownListModelServer" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceModelServer" DataTextField="Model" DataValueField="Model">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="largeCell"></td>
                    <td class="smallCell">
                        <asp:DropDownList ID="DropDownListFormFactorServer" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceFormFactorServer" DataTextField="FormFactor" DataValueField="FormFactor">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="DropDownListMemorySlotsServer" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceMemorySlotsServer" DataTextField="MemorySlots" DataValueField="MemorySlots">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="DropDownListMezanineAdapterSlotsServer" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceMezanineAdapterSlotsServer" DataTextField="MezanineAdapterSlots" DataValueField="MezanineAdapterSlots">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="DropDownListDiskDrivesServer" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceDiskDrivesServer" DataTextField="DiskDrives" DataValueField="DiskDrives">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell"></td>
                    <td class="smallCell">
                        <asp:DropDownList ID="DropDownListUCSManagerServer" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceUCSManagerServer" DataTextField="UCSManager" DataValueField="UCSManager">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="mediumCell"></td>
                </tr>
            </tbody>
        </table>

        <asp:GridView ID="GridViewServers" runat="server" 
            DataSourceID="sqlDataSourceGridViewServers" AutoGenerateColumns="False"
            GridLines="None" ShowHeader="False" DataKeyNames="Id" CssClass="fixedTable">
            <Columns>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="largeCell" DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="largeCell" DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="largeCell" DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="FormFactor" HeaderText="FormFactor" SortExpression="FormFactor" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="MemorySlots" HeaderText="MemorySlots" SortExpression="MemorySlots" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="MezanineAdapterSlots" HeaderText="MezanineAdapterSlots" SortExpression="MezanineAdapterSlots" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="DiskDrives" HeaderText="DiskDrives" SortExpression="DiskDrives" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="MaxInternalStorage" HeaderText="MaxInternalStorage" SortExpression="MaxInternalStorage" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="UCSManager" HeaderText="UCSManager" SortExpression="UCSManager" />
                <asp:HyperLinkField ItemStyle-CssClass="mediumCell" DataNavigateUrlFields="Datasheet" DataTextField="Datasheet" DataTextFormatString="Datasheet" />
            </Columns>
        </asp:GridView>

        <div>
        <asp:SqlDataSource ID="sqlDataSoruceSeriesServer" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [Series] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="sqlDataSourceModelServer" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Model] FROM [Products] where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceFormFactorServer" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [FormFactor] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceMemorySlotsServer" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [MemorySlots] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceMezanineAdapterSlotsServer" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [MezanineAdapterSlots] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceDiskDrivesServer" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [DiskDrives] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceMaxInternalStorageServer" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [MaxInternalStorage] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceUCSManagerServer" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [UCSManager] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceGridViewServers" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [FormFactor], [MemorySlots], [MezanineAdapterSlots], [DiskDrives], [MaxInternalStorage], [UCSManager], [Datasheet] FROM [Products] where CatId = @CategoryId" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and [FormFactor] like '{2}%' and Convert([MemorySlots], 'System.String') like '{3}%' and Convert([MezanineAdapterSlots], 'System.String') like '{4}%' and Convert([DiskDrives], 'System.String') like '{5}%' and [UCSManager] like '{6}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="DropDownListSeriesServer" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListModelServer" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListFormFactorServer" Name="FormFactor" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListMemorySlotsServer" Name="MemorySlots" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListMezanineAdapterSlotsServer" Name="MezanineAdapterSlots" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListDiskDrivesServer" Name="DiskDrives" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListUCSManagerServer" Name="UCSManager" PropertyName="SelectedValue" Type="String" />
            </FilterParameters>
                <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
        </asp:SqlDataSource>
        </div>
        <br />
        <h3>Processors options</h3>
        <asp:GridView ID="GriedViewServersProcessorDetails" runat="server" DataSourceID="sqlDataSourceGridViewServersProcessorDetails" AllowSorting="False" AutoGenerateColumns="False" GridLines="None" ShowHeader="True" DataKeyNames="Id" CssClass="fixedTable productTable">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" ></asp:BoundField>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" ></asp:BoundField>
                <asp:BoundField DataField="ProcessorFamily" HeaderText="Processor Family" SortExpression="ProcessorFamily" ></asp:BoundField>
                <asp:BoundField DataField="Processor" HeaderText="Processor" SortExpression="Processor" ></asp:BoundField>
                <asp:BoundField DataField="ProcessorCores" HeaderText="Cores" SortExpression="ProcessorCores" ></asp:BoundField>
                <asp:BoundField DataField="ProcessorCache" HeaderText="Cache" SortExpression="ProcessorCache" />
                <asp:BoundField DataField="ProcessorFreq" HeaderText="Frequency" SortExpression="ProcessorFreq" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlDataSourceGridViewServersProcessorDetails" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Products], [ServerProcessorDetails] where CatId = @CategoryId AND Products.Id = ServerProcessorDetails.ProductID" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and [FormFactor] like '{2}%' and Convert([MemorySlots], 'System.String') like '{3}%' and Convert([MezanineAdapterSlots], 'System.String') like '{4}%' and Convert([DiskDrives], 'System.String') like '{5}%' and [UCSManager] like '{6}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="DropDownListSeriesServer" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListModelServer" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListFormFactorServer" Name="FormFactor" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListMemorySlotsServer" Name="MemorySlots" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListMezanineAdapterSlotsServer" Name="MezanineAdapterSlots" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListDiskDrivesServer" Name="DiskDrives" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListUCSManagerServer" Name="UCSManager" PropertyName="SelectedValue" Type="String" />
            </FilterParameters>
                <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
        </asp:SqlDataSource>

        <br />
        <h3>Memories options</h3>
        <table class="fixedTable productTable">
                <tr>
                    <th class="smallCell">Id</th>
                    <th class="smallCell">ProductID</th>
                    <th class="smallCell">Frequency</th>
                    <th class="smallCell">Size</th>
                    <th class="largeCell">Part Number</th>
                    <th class="extralargeCell">Description</th>
                    <th class="smallCell">Voltage</th>
                    <th class="smallCell">Ranks/DIMM</th>
                </tr>
        </table>
        <asp:GridView ID="GriedViewServersMemoryDetails" runat="server" DataSourceID="sqlDataSourceGridViewServersMemoryDetails" AllowSorting="True" AutoGenerateColumns="False" GridLines="None" ShowHeader="False" DataKeyNames="Id" CssClass="fixedTable productTable">
            <Columns>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="MemoryFreq" HeaderText="MemoryFreq" SortExpression="MemoryFreq" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="MemorySize" HeaderText="MemorySize" SortExpression="MemorySize" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="largeCell" DataField="MemoryPN" HeaderText="MemoryPN" SortExpression="MemoryPN" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="extralargeCell" DataField="MemoryDescr" HeaderText="MemoryDescr" SortExpression="MemoryDescr" />
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="MemoryVoltage" HeaderText="MemoryVoltage" SortExpression="MemoryVoltage" />
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="MemoryRanksDIMM" HeaderText="MemoryRanksDIMM" SortExpression="MemoryRanksDIMM" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlDataSourceGridViewServersMemoryDetails" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Products], [ServerMemoryDetails] where CatId = @CategoryId AND Products.Id = ServerMemoryDetails.ProductID" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and [FormFactor] like '{2}%' and Convert([MemorySlots], 'System.String') like '{3}%' and Convert([MezanineAdapterSlots], 'System.String') like '{4}%' and Convert([DiskDrives], 'System.String') like '{5}%' and [UCSManager] like '{6}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="DropDownListSeriesServer" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListModelServer" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListFormFactorServer" Name="FormFactor" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListMemorySlotsServer" Name="MemorySlots" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListMezanineAdapterSlotsServer" Name="MezanineAdapterSlots" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListDiskDrivesServer" Name="DiskDrives" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListUCSManagerServer" Name="UCSManager" PropertyName="SelectedValue" Type="String" />
            </FilterParameters>
                <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
        </asp:SqlDataSource>

        <br />
        <h3>Storage options</h3>
        <table class="fixedTable productTable">
                <tr>
                    <th class="smallCell">Id</th>
                    <th class="smallCell">ProductID</th>
                    <th class="smallCell">Type</th>
                    <th class="smallCell">Connector</th>
                    <th class="smallCell">Size</th>
                    <th class="smallCell">Speed</th>
                    <th class="extralargeCell">Part Number</th>
                </tr>
        </table>
        <asp:GridView ID="GridViewServerDiskDetails" runat="server" DataSourceID="sqlDataSourceGridViewServerStorageDetails" AutoGenerateColumns="False" AllowSorting="True" GridLines="None" ShowHeader="False" DataKeyNames="Id" CssClass="fixedTable productTable">
            <Columns>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="Id" HeaderText="Id" SortExpression="Id"></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="DiskType" HeaderText="DiskType" SortExpression="DiskType" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="DiskConnector" HeaderText="DiskConnector" SortExpression="DiskConnector" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="DiskSize" HeaderText="DiskSize" SortExpression="DiskSize" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="DiskSpeed" HeaderText="DiskSpeed" SortExpression="DiskSpeed" />
                <asp:BoundField ItemStyle-CssClass="extralargeCell" DataField="DiskPN" HeaderText="DiskPN" SortExpression="DiskPN" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlDataSourceGridViewServerStorageDetails" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Products], [ServerDiskDetails] where CatId = @CategoryId AND Products.Id = ServerDiskDetails.ProductID" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and [FormFactor] like '{2}%' and Convert([MemorySlots], 'System.String') like '{3}%' and Convert([MezanineAdapterSlots], 'System.String') like '{4}%' and Convert([DiskDrives], 'System.String') like '{5}%' and [UCSManager] like '{6}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="DropDownListSeriesServer" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListModelServer" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListFormFactorServer" Name="FormFactor" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListMemorySlotsServer" Name="MemorySlots" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListMezanineAdapterSlotsServer" Name="MezanineAdapterSlots" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListDiskDrivesServer" Name="DiskDrives" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListUCSManagerServer" Name="UCSManager" PropertyName="SelectedValue" Type="String" />
            </FilterParameters>
                <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
                </SelectParameters>
        </asp:SqlDataSource>

    </div>

    <div runat="server" id="wireless" visible="false">
        <h2 class="subline aligncenter mb35"><%= categoryName %></h2>
        <table class="fixedTable productTable">
            <thead>
                <tr>
                    <th class="smallCell">Category</th>
                    <th class="largeCell">Series</th>
                    <th class="largeCell">Model</th>
                    <th class="extralargeCell">Serial</th>
                    <th class="smallCell">Type</th>
                    <th class="smallCell">2.4 GHz</th>
                    <th class="smallCell">5 GHz</th>
                    <th class="smallCell">802.11n</th>
                    <th class="smallCell">802.11ac</th>
                    <th class="smallCell">802.aaac wave2</th>
                    <th class="smallCell">MIMO</th>
                    <th class="mediumCell">Spatial Streams</th>
                    <th class="mediumCell">Maximum Data Rate</th>
                    <th class="mediumCell">Maximum Transmit Power</th>
                    <th class="mediumCell">Datasheet</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="smallCell"></td>
                    <td class="largeCell">
                        <asp:DropDownList ID="ddlSeriesWireless" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSoruceSeriesWireless" DataTextField="Series" DataValueField="Series">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="largeCell">
                        <asp:DropDownList  ID="ddlModelWireless" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceModelWireless" DataTextField="Model" DataValueField="Model">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="extralagreCell"></td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlTypeWireless" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceTypeWireless" DataTextField="Type" DataValueField="Type">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlSpectrum1Wireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceSpectrum1Wireless" DataTextField="Spectrum1" DataValueField="Spectrum1">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlSpectrum2Wireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceSpectrum2Wireless" DataTextField="Spectrum2" DataValueField="Spectrum2">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlProtocolNWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceProtocolNWireless" DataTextField="ProtocolN" DataValueField="ProtocolN">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlProtocolACWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceProtocolACWireless" DataTextField="ProtocolAC" DataValueField="ProtocolAC">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlProtocolACwaveWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceProtocolACwaveWireless" DataTextField="ProtocolACwave" DataValueField="ProtocolACwave">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="smallCell">
                        <asp:DropDownList ID="ddlMIMOWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceMIMOWireless" DataTextField="MIMO" DataValueField="MIMO">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="mediumCell">
                        <asp:DropDownList ID="ddlSpatialStreamsWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                            DataSourceID="sqlDataSourceSpatialStreamsWireless" DataTextField="SpatialStreams" DataValueField="SpatialStreams">
                            <asp:ListItem Value="%">All</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="mediumCell"></td>
                    <td class="mediumCell"></td>
                    <td class="mediumCell"></td>
                </tr>
            </tbody>
        </table>
        <asp:GridView ID="GridViewWireless" runat="server" 
            DataSourceID="sqlDataSourceGridViewWireless" AutoGenerateColumns="False"
            GridLines="None" ShowHeader="False" DataKeyNames="CatId" CssClass="fixedTable">
            <Columns>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="CatId" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField ItemStyle-CssClass="largeCell" DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="largeCell" DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="extralargeCell" DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="Type" HeaderText="Type" SortExpression="Type" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="Spectrum1" HeaderText="Spectrum1" SortExpression="Spectrum1" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="Spectrum2" HeaderText="Spectrum2" SortExpression="Spectrum2" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="ProtocolN" HeaderText="ProtocolN" SortExpression="ProtocolN" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="ProtocolAC" HeaderText="ProtocolACwave" SortExpression="ProtocolAC" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="ProtocolACwave" HeaderText="ProtocolACwave" SortExpression="ProtocolACwave" ></asp:BoundField>
                <asp:BoundField ItemStyle-CssClass="smallCell" DataField="MIMO" HeaderText="MIMO" SortExpression="MIMO" />
                <asp:BoundField ItemStyle-CssClass="mediumCell" DataField="SpatialStreams" HeaderText="SpatialStreams" SortExpression="SpatialStreams" />
                <asp:BoundField ItemStyle-CssClass="mediumCell" DataField="MaxDataRate" HeaderText="MaxDataRate" SortExpression="MaxDataRate" />
                <asp:BoundField ItemStyle-CssClass="mediumCell" DataField="MaxTransmitPower" HeaderText="MaxTransmitPower" SortExpression="MaxTransmitPower" />
                <asp:HyperLinkField ItemStyle-CssClass="mediumCell" DataNavigateUrlFields="Datasheet" DataTextField="Datasheet" DataTextFormatString="Datasheet" />
            </Columns>
        </asp:GridView>

        <div>
        <asp:SqlDataSource ID="sqlDataSoruceSeriesWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [Series] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="sqlDataSourceModelWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Model] FROM [Products] where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceTypeWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [Type] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceSpectrum1Wireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [Spectrum1] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="sqlDataSourceSpectrum2Wireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [Spectrum2] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceProtocolNWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [ProtocolN] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceProtocolACWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [ProtocolAC] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceProtocolACwaveWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [ProtocolACwave] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceMIMOWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [MIMO] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceSpatialStreamsWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [SpatialStreams] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceMaxDataRateWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [MaxDataRate] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSourceMaxTransmitPowerWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [MaxTransmitPower] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="sqlDataSourceGridViewWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [Type], [Spectrum1], [Spectrum2], [ProtocolN], [ProtocolAC], [ProtocolACwave], [MIMO], [SpatialStreams], [MaxDataRate], [MaxTransmitPower], [Datasheet] FROM [Products] where CatId = @CategoryId" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and [Type] like '{2}%' and [Spectrum1] like '{3}%' and [Spectrum2] like '{4}%' and [ProtocolN] like '{5}%' and [ProtocolAC] like '{6}%' and [ProtocolACwave] like '{7}%' and [MIMO] like '{8}%' and Convert([SpatialStreams], 'System.String') like '{9}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="ddlSeriesWireless" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlModelWireless" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlTypeWireless" Name="Type" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlSpectrum1Wireless" Name="Spectrum" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlSpectrum2Wireless" Name="Spectrum2" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlProtocolNWireless" Name="ProtocolN" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlProtocolACWireless" Name="ProtocolAC" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlProtocolACwaveWireless" Name="ProtocolACwave" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlMIMOWireless" Name="MIMO" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlSpatialStreamsWireless" Name="SpatialStreams" PropertyName="SelectedValue" Type="String" />
            </FilterParameters>
             <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
              </SelectParameters>
        </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>

