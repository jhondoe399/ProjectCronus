<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="ContentProducts" ContentPlaceHolderID="MainContent" Runat="Server" >
    
    <div class="prodcategs mb35" runat="server">
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
        <br />
        <p><%= categoryName %></p>
        <br />

        <table>
            <tr>
                <th class="switchCatId">Category</th>
                <th class="swtichSeries">Series</th>
                <th class="swtichModel">Model</th>
                <th class="swtichSerial">Serial</th>
                <th class="swtichGbPorts">GbPorts</th>
                <th>100Ports</th>
                <th>1 Gb Uplinks</th>
                <th>10 Gb Uplinks</th>
                <th>PoE</th>
                <th>Software Feature</th>
                <th>SwitchingCapacity</th>
                <th>ForwardingCapacity</th>
                <th>StackingBandwidth</th>
                <th>Datasheet</th>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:DropDownList ID="ddlSeries" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSoruceSeries" DataTextField="Series" DataValueField="Series">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlModel" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceModel" DataTextField="Model" DataValueField="Model">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td></td>
                <td>
                    <asp:DropDownList ID="ddlGbPorts" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceGbPorts" DataTextField="GbPorts" DataValueField="GbPorts">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlonehundredports" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceonehundredorts" DataTextField="onehundredports" DataValueField="onehundredports">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlOneGUplinks" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceOneGUplinks" DataTextField="OneGUplinks" DataValueField="OneGUplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTenGUplinks" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceTenGUplinks" DataTextField="TenGUplinks" DataValueField="TenGUplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlPoe" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourcePoe" DataTextField="Poe" DataValueField="Poe">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="13">
                    <asp:GridView ID="GridViewSwitches" runat="server" 
                        DataSourceID="sqlDataSourceGridViewSwitches" AutoGenerateColumns="False"
                        GridLines="None" ShowHeader="False" DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="50px" DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="GbPorts" HeaderText="GbPorts" SortExpression="GbPorts" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="onehundredports" HeaderText="onehundredports" SortExpression="onehundredports" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="OneGUplinks" HeaderText="OneGUplinks" SortExpression="OneGUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="TenGUplinks" HeaderText="TenGUplinks" SortExpression="TenGUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="Poe" HeaderText="Poe" SortExpression="Poe" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="SoftwareFeature" HeaderText="SoftwareFeature" SortExpression="SoftwareFeature" ></asp:BoundField>
                            <asp:BoundField DataField="SwitchingCapacity" HeaderText="SwitchingCapacity" SortExpression="SwitchingCapacity" />
                            <asp:BoundField DataField="ForwardingCapacity" HeaderText="ForwardingCapacity" SortExpression="ForwardingCapacity" />
                            <asp:HyperLinkField DataNavigateUrlFields="Datasheet" DataTextField="Datasheet" DataTextFormatString="Datasheet" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>

        <br />

        <asp:SqlDataSource ID="sqlDataSoruceSeries" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [Series] FROM [Products]  where CatId = @CategoryId">
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

    <div runat="server" id="routers" visible="false">
        <br />
        <p><%= categoryName %></p>
        <br />

        <table>
            <tr>
                <th>Category</th>
                <th>Series</th>
                <th>Model</th>
                <th>Serial</th>
                <th>1 Gb Uplinks</th>
                <th>10 Gb Uplinks</th>
                <th>Forwarding Capacity</th>
                <th>RAM</th>
                <th>Flash</th>
                <th>Network Interface Module</th>
                <th>Enhanced Service Processor</th>
                <th>Form Factor</th>
                <th>Datasheet</th>
            </tr>
            <tr>
                <td class="routerCatId"></td>
                <td class="routerSeries">
                    <asp:DropDownList ID="ddlSeriesRouter" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSoruceSeriesRouter" DataTextField="Series" DataValueField="Series">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="routerModel">
                    <asp:DropDownList ID="ddlModelRouter" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceModelRouter" DataTextField="Model" DataValueField="Model">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td></td>
                <td class="router1GbUplinks">
                    <asp:DropDownList ID="ddlOneGbUplinksRouter" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceOneGbUplinksRouter" DataTextField="OneGUplinks" DataValueField="OneGUplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTenGbUplinksRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceTenGbUplinksRouter" DataTextField="TenGUplinks" DataValueField="TenGUplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td></td>
                <td>
                    <asp:DropDownList ID="ddlRAMRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceRAMRouter" DataTextField="RAM" DataValueField="RAM">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlFlashRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceFlashRouter" DataTextField="Flash" DataValueField="Flash">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlNIMRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceNIMRouter" DataTextField="NIM" DataValueField="NIM">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlESMRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceESMRouter" DataTextField="ESM" DataValueField="ESM">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlFormFactorRouter" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceFormFactorRouter" DataTextField="FormFactor" DataValueField="FormFactor">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="12">
                    <asp:GridView ID="GridViewRouters" runat="server" 
                        DataSourceID="sqlDataSourceGridViewRouters" AutoGenerateColumns="False"
                        GridLines="None" ShowHeader="False" DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="50px" DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="OneGUplinks" HeaderText="OneGUplinks" SortExpression="OneGUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="TenGUplinks" HeaderText="TenGUplinks" SortExpression="TenGUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="ForwardingCapacity" HeaderText="ForwardingCapacity" SortExpression="ForwardingCapacity" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="RAM" HeaderText="RAM" SortExpression="RAM" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="Flash" HeaderText="Flash" SortExpression="Flash" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="NIM" HeaderText="NIM" SortExpression="NIM" ></asp:BoundField>
                            <asp:BoundField DataField="ESM" HeaderText="ESM" SortExpression="ESM" />
                            <asp:BoundField DataField="FormFactor" HeaderText="FormFactor" SortExpression="FormFactor" />
                            <asp:HyperLinkField DataNavigateUrlFields="Datasheet" DataTextField="Datasheet" DataTextFormatString="Datasheet" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>

        <br />

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

    <div runat="server" id="servers" visible="false">
        <br />
        <p><%= categoryName %></p>
        <br />

        
    </div>

    <div runat="server" id="wireless" visible="false">
        <br />
        <p><%= categoryName %></p>
        <br />

        <table>
            <tr>
                <th>Category</th>
                <th>Series</th>
                <th>Model</th>
                <th>Serial</th>
                <th>Type</th>
                <th>2.4 GHz</th>
                <th>5 GHz</th>
                <th>802.11n</th>
                <th>802.11ac</th>
                <th>802.aaac wave2</th>
                <th>MIMO</th>
                <th>Spatial Streams</th>
                <th>Maximum Data Rate</th>
                <th>Maximum Transmit Power</th>
                <th>Datasheet</th>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:DropDownList ID="ddlSeriesWireless" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSoruceSeriesWireless" DataTextField="Series" DataValueField="Series">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td">
                    <asp:DropDownList  ID="ddlModelWireless" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceModelWireless" DataTextField="Model" DataValueField="Model">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td">
                <td></td>
                <td>
                    <asp:DropDownList ID="ddlTypeWireless" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceTypeWireless" DataTextField="Type" DataValueField="Type">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl24GHzWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSource24GHzWireless" DataTextField="2.4GHz" DataValueField="2.4GHz">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl5GHzWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSource5GHzWireless" DataTextField="5GHz" DataValueField="5GHz">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl802nWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSource802nWireless" DataTextField="802.11n" DataValueField="802.11n">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl802ac1Wireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSource802ac1Wireless" DataTextField="802.11ac1" DataValueField="802.11ac1">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl802ac2Wireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSource802ac2Wireless" DataTextField="802.11ac2" DataValueField="802.11ac2">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlMIMOWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceMIMOWireless" DataTextField="MIMO" DataValueField="MIMO">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSpatialStreamsWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceSpatialStreamsWireless" DataTextField="SpatialStreams" DataValueField="SpatialStreams">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="14">
                    <asp:GridView ID="GridViewWireless" runat="server" 
                        DataSourceID="sqlDataSourceGridViewWireless" AutoGenerateColumns="False"
                        GridLines="None" ShowHeader="False" DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
                            <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                            <asp:BoundField DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" ></asp:BoundField>
                            <asp:BoundField DataField="2.4GHz" HeaderText="2.4GHz" SortExpression="2.4GHz" ></asp:BoundField>
                            <asp:BoundField DataField="5GHz" HeaderText="5GHz" SortExpression="5GHz" ></asp:BoundField>
                            <asp:BoundField DataField="802.11n" HeaderText="802.11n" SortExpression="802.11n" ></asp:BoundField>
                            <asp:BoundField DataField="802.11ac1" HeaderText="802.11ac1" SortExpression="802.11ac1" ></asp:BoundField>
                            <asp:BoundField DataField="802.11ac2" HeaderText="802.11ac2" SortExpression="802.11ac2" ></asp:BoundField>
                            <asp:BoundField DataField="MIMO" HeaderText="MIMO" SortExpression="MIMO" />
                            <asp:BoundField DataField="SpatialStreams" HeaderText="SpatialStreams" SortExpression="SpatialStreams" />
                            <asp:BoundField DataField="MaxDataRate" HeaderText="MaxDataRate" SortExpression="MaxDataRate" />
                            <asp:BoundField DataField="MaxTransmitPower" HeaderText="MaxTransmitPower" SortExpression="MaxTransmitPower" />
                            <asp:HyperLinkField DataNavigateUrlFields="Datasheet" DataTextField="Datasheet" DataTextFormatString="Datasheet" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>

        <br />

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

        <asp:SqlDataSource ID="sqlDataSource24GHzWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [2.4GHz] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="sqlDataSource5GHzWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [5GHz] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource802nWireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [802.11n] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource802ac1Wireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [802.11ac1] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource802ac2Wireless" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [802.11ac2] FROM [Products]  where CatId = @CategoryId">
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
            SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [Type], [2.4GHz], [5GHz], [802.11n], [802.11ac1], [802.11ac2], [MIMO], [SpatialStreams], [MaxDataRate], [MaxTransmitPower], [Datasheet] FROM [Products] where CatId = @CategoryId" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and [Type] like '{2}%' and [2.4GHz] like '{3}%' and [5GHz] like '{4}%' and [802.11n] like '{5}%' and [802.11ac1] like '{6}%' and [802.11ac2] like '{7}%' and [MIMO] like '{8}%' and Convert([SpatialStreams], 'System.String') like '{9}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="ddlSeriesWireless" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlModelWireless" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlTypeWireless" Name="Type" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddl24GHzWireless" Name="2.4GHz" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddl5GHzWireless" Name="5GHz" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddl802nWireless" Name="802.11n" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddl802ac1Wireless" Name="802.11ac1" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddl802ac2Wireless" Name="802.11ac2" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlMIMOWireless" Name="MIMO" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlSpatialStreamsWireless" Name="SpatialStreams" PropertyName="SelectedValue" Type="String" />
            </FilterParameters>
             <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
              </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

