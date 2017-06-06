<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="ContentProducts" ContentPlaceHolderID="MainContent" Runat="Server" >
    
    //Header - Categories
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
                <td class="switchCatId"></td>
                <td class="swtichSeries">
                    <asp:DropDownList class="swtichSeries" ID="ddlSeries" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSoruceSeries" DataTextField="Series" DataValueField="Series">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="swtichModel">
                    <asp:DropDownList  class="swtichModel" ID="ddlModel" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceModel" DataTextField="Model" DataValueField="Model">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td class="swtichSerial">
                <td></td>
                <td class="swtichGbPorts">
                    <asp:DropDownList class="swtichGbPorts" ID="ddlGbPorts" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceGbPorts" DataTextField="GbPorts" DataValueField="GbPorts">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl100Ports" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource100Ports" 
                        DataTextField="100Ports" DataValueField="100Ports">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl1GUplinks" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource1GUplinks" 
                        DataTextField="1Gb Uplinks" DataValueField="1Gb Uplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl10GUplinks" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource10GUplinks" 
                        DataTextField="10Gb Uplinks" DataValueField="10Gb Uplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlPoe" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSourcePoe" 
                        DataTextField="PoE" DataValueField="PoE">
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
                            <asp:BoundField ItemStyle-Width="100px" DataField="100Ports" HeaderText="100Ports" SortExpression="100Ports" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="1GUplinks" HeaderText="1GUplinks" SortExpression="1GUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="10GUplinks" HeaderText="1 Gb Uplinks" SortExpression="10GUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="PoE" HeaderText="PoE" SortExpression="PoE" ></asp:BoundField>
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

        <asp:SqlDataSource ID="sqlDataSource100Ports" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [100Ports] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="sqlDataSource1GUplinks" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [1GUplinks] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource10GUplinks" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [10GUplinks] FROM [Products]  where CatId = @CategoryId">
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
            SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [GbPorts], [100Ports], [1GUplinks], [10GUplinks], [PoE], [SoftwareFeature], [SwitchingCapacity], [ForwardingCapacity], [Datasheet] FROM [Products] where CatId = @CategoryId" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and Convert([GbPorts], 'System.String') like '{2}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="ddlSeries" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlGbPorts" Name="GbPorts" PropertyName="SelectedValue" Type="String" />
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
                <td class="switchCatId"></td>
                <td class="swtichSeries">
                    <asp:DropDownList class="swtichSeries" ID="DropDownList1" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSoruceSeries" DataTextField="Series" DataValueField="Series">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="swtichModel">
                    <asp:DropDownList  class="swtichModel" ID="DropDownList2" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceModel" DataTextField="Model" DataValueField="Model">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td class="swtichSerial">
                <td></td>
                <td class="swtichGbPorts">
                    <asp:DropDownList class="swtichGbPorts" ID="DropDownList3" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceGbPorts" DataTextField="GbPorts" DataValueField="GbPorts">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource100Ports" 
                        DataTextField="100Ports" DataValueField="100Ports">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource1GUplinks" 
                        DataTextField="1Gb Uplinks" DataValueField="1Gb Uplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList6" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource10GUplinks" 
                        DataTextField="10Gb Uplinks" DataValueField="10Gb Uplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList7" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSourcePoe" 
                        DataTextField="PoE" DataValueField="PoE">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="13">
                    <asp:GridView ID="GridView1" runat="server" 
                        DataSourceID="sqlDataSourceGridViewSwitches" AutoGenerateColumns="False"
                        GridLines="None" ShowHeader="False" DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="50px" DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="GbPorts" HeaderText="GbPorts" SortExpression="GbPorts" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="100Ports" HeaderText="100Ports" SortExpression="100Ports" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="1GUplinks" HeaderText="1GUplinks" SortExpression="1GUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="10GUplinks" HeaderText="1 Gb Uplinks" SortExpression="10GUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="PoE" HeaderText="PoE" SortExpression="PoE" ></asp:BoundField>
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [Series] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="sqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Model] FROM [Products] where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [GbPorts] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [100Ports] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="sqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [1GUplinks] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [10GUplinks] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource7" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [Poe] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="sqlDataSource8" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [GbPorts], [100Ports], [1GUplinks], [10GUplinks], [PoE], [SoftwareFeature], [SwitchingCapacity], [ForwardingCapacity], [Datasheet] FROM [Products] where CatId = @CategoryId" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and Convert([GbPorts], 'System.String') like '{2}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="ddlSeries" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlGbPorts" Name="GbPorts" PropertyName="SelectedValue" Type="String" />
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
                <td class="switchCatId"></td>
                <td class="swtichSeries">
                    <asp:DropDownList class="swtichSeries" ID="DropDownList8" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSoruceSeries" DataTextField="Series" DataValueField="Series">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="swtichModel">
                    <asp:DropDownList  class="swtichModel" ID="DropDownList9" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceModel" DataTextField="Model" DataValueField="Model">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td class="swtichSerial">
                <td></td>
                <td class="swtichGbPorts">
                    <asp:DropDownList class="swtichGbPorts" ID="DropDownList10" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceGbPorts" DataTextField="GbPorts" DataValueField="GbPorts">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList11" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource100Ports" 
                        DataTextField="100Ports" DataValueField="100Ports">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList12" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource1GUplinks" 
                        DataTextField="1Gb Uplinks" DataValueField="1Gb Uplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList13" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource10GUplinks" 
                        DataTextField="10Gb Uplinks" DataValueField="10Gb Uplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList14" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSourcePoe" 
                        DataTextField="PoE" DataValueField="PoE">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="13">
                    <asp:GridView ID="GridView2" runat="server" 
                        DataSourceID="sqlDataSourceGridViewSwitches" AutoGenerateColumns="False"
                        GridLines="None" ShowHeader="False" DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="50px" DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="GbPorts" HeaderText="GbPorts" SortExpression="GbPorts" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="100Ports" HeaderText="100Ports" SortExpression="100Ports" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="1GUplinks" HeaderText="1GUplinks" SortExpression="1GUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="10GUplinks" HeaderText="1 Gb Uplinks" SortExpression="10GUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="PoE" HeaderText="PoE" SortExpression="PoE" ></asp:BoundField>
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

        <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [Series] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="sqlDataSource10" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Model] FROM [Products] where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource11" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [GbPorts] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource12" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [100Ports] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="sqlDataSource13" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [1GUplinks] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource14" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [10GUplinks] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource15" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [Poe] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="sqlDataSource16" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [GbPorts], [100Ports], [1GUplinks], [10GUplinks], [PoE], [SoftwareFeature], [SwitchingCapacity], [ForwardingCapacity], [Datasheet] FROM [Products] where CatId = @CategoryId" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and Convert([GbPorts], 'System.String') like '{2}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="ddlSeries" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlGbPorts" Name="GbPorts" PropertyName="SelectedValue" Type="String" />
            </FilterParameters>
             <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
              </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <div runat="server" id="wireless" visible="false">
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
                <td class="switchCatId"></td>
                <td class="swtichSeries">
                    <asp:DropDownList class="swtichSeries" ID="DropDownList15" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSoruceSeries" DataTextField="Series" DataValueField="Series">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="swtichModel">
                    <asp:DropDownList  class="swtichModel" ID="DropDownList16" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceModel" DataTextField="Model" DataValueField="Model">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td class="swtichSerial">
                <td></td>
                <td class="swtichGbPorts">
                    <asp:DropDownList class="swtichGbPorts" ID="DropDownList17" runat="server" AppendDataBoundItems="true" AutoPostBack="true" 
                        DataSourceID="sqlDataSourceGbPorts" DataTextField="GbPorts" DataValueField="GbPorts">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList18" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource100Ports" 
                        DataTextField="100Ports" DataValueField="100Ports">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList19" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource1GUplinks" 
                        DataTextField="1Gb Uplinks" DataValueField="1Gb Uplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList20" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSource10GUplinks" 
                        DataTextField="10Gb Uplinks" DataValueField="10Gb Uplinks">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList21" runat="server"  AppendDataBoundItems="true" AutoPostBack="true" DataSourceID="sqlDataSourcePoe" 
                        DataTextField="PoE" DataValueField="PoE">
                        <asp:ListItem Value="%">All</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="13">
                    <asp:GridView ID="GridView3" runat="server" 
                        DataSourceID="sqlDataSourceGridViewSwitches" AutoGenerateColumns="False"
                        GridLines="None" ShowHeader="False" DataKeyNames="Id">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="50px" DataField="CatId" HeaderText="CatId" SortExpression="CatId" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Series" HeaderText="Series" SortExpression="Series" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Model" HeaderText="Model" SortExpression="Model" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="300px" DataField="Serial" HeaderText="Serial" SortExpression="Serial" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="GbPorts" HeaderText="GbPorts" SortExpression="GbPorts" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="100Ports" HeaderText="100Ports" SortExpression="100Ports" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="1GUplinks" HeaderText="1GUplinks" SortExpression="1GUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="10GUplinks" HeaderText="1 Gb Uplinks" SortExpression="10GUplinks" ></asp:BoundField>
                            <asp:BoundField ItemStyle-Width="100px" DataField="PoE" HeaderText="PoE" SortExpression="PoE" ></asp:BoundField>
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

        <asp:SqlDataSource ID="SqlDataSource17" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [Series] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="sqlDataSource18" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Model] FROM [Products] where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource19" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [GbPorts] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource20" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [100Ports] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="sqlDataSource21" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [1GUplinks] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource22" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [10GUplinks] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlDataSource23" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct [Poe] FROM [Products]  where CatId = @CategoryId">
            <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:SqlDataSource ID="sqlDataSource24" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Id], [CatId], [Series], [Model], [Serial], [GbPorts], [100Ports], [1GUplinks], [10GUplinks], [PoE], [SoftwareFeature], [SwitchingCapacity], [ForwardingCapacity], [Datasheet] FROM [Products] where CatId = @CategoryId" 
            FilterExpression="[Series] like '{0}%' and [Model] like '{1}%' and Convert([GbPorts], 'System.String') like '{2}%'">
            <FilterParameters>
                <asp:ControlParameter ControlID="ddlSeries" Name="Series" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlGbPorts" Name="GbPorts" PropertyName="SelectedValue" Type="String" />
            </FilterParameters>
             <SelectParameters>
                <asp:Parameter Name="CategoryId" Type="Int32"/>
              </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

