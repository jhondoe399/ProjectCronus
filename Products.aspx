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
        <table class="table-bordered">
            <thead>
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
            </thead>
            <tbody>
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
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <asp:GridView ID="GridViewSwitches" runat="server" 
                            DataSourceID="sqlDataSourceGridViewSwitches" AutoGenerateColumns="False"
                            GridLines="None" ShowHeader="False" DataKeyNames="Id">
                            <Columns>
                                <asp:BoundField ItemStyle-Width="65px" DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
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

        <br />

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
        <asp:GridView ID="GridViewSwitchesCont" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceSwitchesCont">
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
            SelectCommand="SELECT [CatId], [Series], [Model], [MACAdresses], [Ipv4Routes], [Stacking], [StackingBandwidth], [RAM], [Flash], [VlanIDs], [DHCP], [DTP], [LACP], [VTP] FROM [Products] WHERE ([CatId] = @CatId)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="CatId" QueryStringField="CatId" Type="Int32" />
            </SelectParameters>

        </asp:SqlDataSource>

    </div>

    <div runat="server" id="routers" visible="false">
        <h2 class="subline aligncenter mb35"><%= categoryName %></h2>
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
        
        <div>
            <asp:GridView ID="GridViewRoutersCont" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceRoutersCont">
                <Columns>
                    <asp:BoundField DataField="CatId" HeaderText="CatId" SortExpression="CatId" />
                    <asp:BoundField DataField="Series" HeaderText="Series" SortExpression="Series" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="UsbPorts" HeaderText="UsbPorts" SortExpression="UsbPorts" />
                    <asp:BoundField DataField="RedundantPowerSupply" HeaderText="RedundantPowerSupply" SortExpression="RedundantPowerSupply" />
                    <asp:BoundField DataField="IPSec" HeaderText="IPSec" SortExpression="IPSec" />
                    <asp:BoundField DataField="OSPF" HeaderText="OSPF" SortExpression="OSPF" />
                    <asp:BoundField DataField="Isis" HeaderText="Isis" SortExpression="Isis" />
                    <asp:BoundField DataField="BGP" HeaderText="BGP" SortExpression="BGP" />
                    <asp:BoundField DataField="EIGRP" HeaderText="EIGRP" SortExpression="EIGRP" />
                    <asp:BoundField DataField="Airflow" HeaderText="Airflow" SortExpression="Airflow" />
                </Columns>

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceRoutersCont" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CatId], [Series], [Model], [UsbPorts], [RedundantPowerSupply], [IPSec], [OSPF], [Isis], [BGP], [EIGRP], [Airflow] FROM [Products] WHERE ([CatId] = @CatId)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="2" Name="CatId" QueryStringField="CatId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

    <div runat="server" id="servers" visible="false">
        <h2 class="subline aligncenter mb35"><%= categoryName %></h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Category</th>
                <th>Series</th>
                <th>Model</th>
                <th>Serial</th>
                <th>Form Factor</th>
                <th>Memory Slots</th>
                <th>Mezanine Adapter Slots</th>
                <th>Disk Drives</th>
                <th>Maximum Internal Storage</th>
                <th>UCS Manager</th>
                <th>Datasheet</th>
            </tr>
            <tr>
                <td class="serverID"></td>
                <td class="serverCatId"></td>
                <td class="serverSeries">
                    <asp:DropDownList ID="DropDownListSeriesServer" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSoruceSeriesServer" DataTextField="Series" DataValueField="Series">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="serverModel">
                    <asp:DropDownList ID="DropDownListModelServer" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceModelServer" DataTextField="Model" DataValueField="Model">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="serverSerial"></td>
                <td class="serverFormFactor">
                    <asp:DropDownList ID="DropDownListFormFactorServer" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceFormFactorServer" DataTextField="FormFactor" DataValueField="FormFactor">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="serverMemorySlots">
                    <asp:DropDownList ID="DropDownListMemorySlotsServer" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceMemorySlotsServer" DataTextField="MemorySlots" DataValueField="MemorySlots">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="serverMezanineAdapterSlots">
                    <asp:DropDownList ID="DropDownListMezanineAdapterSlotsServer" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceMezanineAdapterSlotsServer" DataTextField="MezanineAdapterSlots" DataValueField="MezanineAdapterSlots">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="serverDiskDrives">
                    <asp:DropDownList ID="DropDownListDiskDrivesServer" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceDiskDrivesServer" DataTextField="DiskDrives" DataValueField="DiskDrives">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="serverMaxInternalStorage"></td>
                <td class="serverUCSManager">
                    <asp:DropDownList ID="DropDownListUCSManagerServer" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceUCSManagerServer" DataTextField="UCSManager" DataValueField="UCSManager">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="serverDatasheet"></td>
            </tr>
            <tr>
                <td colspan="11">
                    <asp:GridView ID="GridViewServers" runat="server" 
                        DataSourceID="sqlDataSourceGridViewServers" AutoGenerateColumns="False"
                        GridLines="None" ShowHeader="False" DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="50px" DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="FormFactor" HeaderText="FormFactor" SortExpression="FormFactor" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="MemorySlots" HeaderText="MemorySlots" SortExpression="MemorySlots" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="MezanineAdapterSlots" HeaderText="MezanineAdapterSlots" SortExpression="MezanineAdapterSlots" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="DiskDrives" HeaderText="DiskDrives" SortExpression="DiskDrives" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="MaxInternalStorage" HeaderText="MaxInternalStorage" SortExpression="MaxInternalStorage" ></asp:BoundField>
                            <asp:BoundField DataField="UCSManager" HeaderText="UCSManager" SortExpression="UCSManager" />
                            <asp:HyperLinkField DataNavigateUrlFields="Datasheet" DataTextField="Datasheet" DataTextFormatString="Datasheet" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>

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

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceServers2">
        <Columns>
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:GridView ID="GridViewProcessorDetails" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceProcessorDetails">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                            <asp:BoundField DataField="ProcessorFamily" HeaderText="ProcessorFamily" SortExpression="ProcessorFamily" />
                            <asp:BoundField DataField="Processor" HeaderText="Processor" SortExpression="Processor" />
                            <asp:BoundField DataField="ProcessorCores" HeaderText="ProcessorCores" SortExpression="ProcessorCores" />
                            <asp:BoundField DataField="ProcessorCache" HeaderText="ProcessorCache" SortExpression="ProcessorCache" />
                            <asp:BoundField DataField="ProcessorFreq" HeaderText="ProcessorFreq" SortExpression="ProcessorFreq" />
                        </Columns>
                    </asp:GridView>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSourceServers2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Model] FROM [Products] WHERE ([CatId] = @CatId)">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="CatId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceProcessorDetails" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [ServerProcessorDetails] WHERE ServerProcessorDetails.ProductID = 43">
    </asp:SqlDataSource>

    </div>

    <div runat="server" id="wireless" visible="false">
        <h2 class="subline aligncenter mb35"><%= categoryName %></h2>
        <div>
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
                    <asp:DropDownList ID="ddlSpectrum1Wireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceSpectrum1Wireless" DataTextField="Spectrum1" DataValueField="Spectrum1">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSpectrum2Wireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceSpectrum2Wireless" DataTextField="Spectrum2" DataValueField="Spectrum2">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProtocolNWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceProtocolNWireless" DataTextField="ProtocolN" DataValueField="ProtocolN">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProtocolACWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceProtocolACWireless" DataTextField="ProtocolAC" DataValueField="ProtocolAC">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProtocolACwaveWireless" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceProtocolACwaveWireless" DataTextField="ProtocolACwave" DataValueField="ProtocolACwave">
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
                            <asp:BoundField DataField="Spectrum1" HeaderText="Spectrum1" SortExpression="Spectrum1" ></asp:BoundField>
                            <asp:BoundField DataField="Spectrum2" HeaderText="Spectrum2" SortExpression="Spectrum2" ></asp:BoundField>
                            <asp:BoundField DataField="ProtocolN" HeaderText="ProtocolN" SortExpression="ProtocolN" ></asp:BoundField>
                            <asp:BoundField DataField="ProtocolAC" HeaderText="ProtocolACwave" SortExpression="ProtocolAC" ></asp:BoundField>
                            <asp:BoundField DataField="ProtocolACwave" HeaderText="ProtocolACwave" SortExpression="ProtocolACwave" ></asp:BoundField>
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

