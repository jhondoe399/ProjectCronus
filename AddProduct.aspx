<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="ContentAddProduct" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div id="PageResponse" runat="server"></div>
    <div class="table_container">
        <div class="cell_left">
        Product Category
        </div>
        <div>
            <asp:DropDownList ID="ddlCategory" runat="server" EnableViewState="true" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"
                DataSourceID="SqlDataSourceProductCategory" DataTextField="Name" DataValueField="Id">
                <asp:ListItem Value="%" Selected="True">All</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceProductCategory" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT DISTINCT [Name], [Id] FROM [ProductCats]">
            </asp:SqlDataSource>
        </div>
    </div>
    <div class="addProducts">
        <div class="AddSwitch" runat="server" id="addSwitch" visible="false">
            <div class="row">
                <div class="col-md-12">
                    <h1>Add switch</h1>
                </div>
                <div class="col-md-6">
                    <asp:Label id="lblSeriesSwitch" AssociatedControlId="txtboxSeriesSwitch" Text="Series:" runat="server" ValidateRequestMode="Enabled"/>
                    <asp:TextBox ID="txtboxSeriesSwitch" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFieldValidatorSeriesSwitch" SetFocusOnError="true" runat="server" ErrorMessage="*Incorrect series"  Display="Dynamic" ControlToValidate="txtboxSeriesSwitch"></asp:RequiredFieldValidator>

                    <asp:Label id="lblSerialSwitch" AssociatedControlId="txtboxSerialSwitch" Text="Serial:" runat="server" />
                    <asp:TextBox ID="txtboxSerialSwitch" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFieldValidatorSerialSwitch" SetFocusOnError="true" runat="server" ErrorMessage="*Incorrect serial" Display="Dynamic" ControlToValidate="txtboxSerialSwitch"></asp:RequiredFieldValidator>

                    <asp:Label id="lblModelSwitch" AssociatedControlId="txtboxModelSwitch" Text="Model:" runat="server" />
                    <asp:TextBox ID="txtboxModelSwitch" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFieldValidatorModelSwitch" SetFocusOnError="true" runat="server" ErrorMessage="*Incorrect model" Display="Dynamic" ControlToValidate="txtboxModelSwitch"></asp:RequiredFieldValidator>

                    <asp:Label id="lblGbPortsSwitch" AssociatedControlId="txtboxGbPortsSwitch" Text="Gigabit Ports:" runat="server" />
                    <asp:TextBox ID="txtboxGbPortsSwitch" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFieldValidatorGbPortsSwitch" SetFocusOnError="true" runat="server" ErrorMessage="*Incorrect Gigabit Ports" Display="Dynamic" ControlToValidate="txtboxGbPortsSwitch"></asp:RequiredFieldValidator>

                    <asp:Label id="lbl100PortsSwitch" AssociatedControlId="txtbox100PortsSwitch" Text="10/100 Ports:" runat="server" />
                    <asp:TextBox ID="txtbox100PortsSwitch" runat="server"></asp:TextBox>

                    <asp:Label id="lbl1GbPortsSwitch" AssociatedControlId="txtbox1GPortsSwitch" Text="1Gb Uplinks:" runat="server" />
                    <asp:TextBox ID="txtbox1GPortsSwitch" runat="server"></asp:TextBox>

                    <asp:Label id="lbl10GbPortsSwitch" AssociatedControlId="txtbox10GPortsSwitch" Text="10Gb Uplinks:" runat="server" />
                    <asp:TextBox ID="txtbox10GPortsSwitch" runat="server"></asp:TextBox>

                    <asp:Label id="lblPoeSwitch" AssociatedControlId="ddlPoeSwitch" Text="Power over Ethernet:" runat="server" />
                    <asp:DropDownList ID="ddlPoeSwitch" runat="server">
                        <asp:ListItem Text="Yes" Value="Yes" />
                        <asp:ListItem Text="No" Value="No" />
                    </asp:DropDownList>

                    <asp:Label id="lblPoePowerSwitch" AssociatedControlId="txtboxPoePowerSwitch" Text="Power over Ethernet Power:" runat="server" />
                    <asp:TextBox ID="txtboxPoePowerSwitch" runat="server"></asp:TextBox>

                    <asp:Label id="lblSoftwareFeatureSwitch" AssociatedControlId="txtboxSoftwareFeatureSwitch" Text="Sodftware Feature:" runat="server" />
                    <asp:TextBox ID="txtboxSoftwareFeatureSwitch" runat="server"></asp:TextBox>

                    <asp:Label id="lblMACAdressesSwitch" AssociatedControlId="txtboxMACAdressesSwitch" Text="MAC Adresses:" runat="server" />
                    <asp:TextBox ID="txtboxMACAdressesSwitch" runat="server"></asp:TextBox>

                    <asp:Label id="lblIpv4RoutesSwitch" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                    <asp:TextBox ID="txtboxIpv4RoutesSwitch" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">

                        <asp:Label id="lblSwitchingCapacitySwitch" AssociatedControlId="txtboxSwitchingCapacitySwitch" Text="Switching Capacity:" runat="server" />
                        <asp:TextBox ID="txtboxSwitchingCapacitySwitch" runat="server"></asp:TextBox>


                        <asp:Label id="lblForwardingCapacitySwitch" AssociatedControlId="txtboxForwardingCapacitySwitch" Text="Forwarding Capacity:" runat="server" />
                        <asp:TextBox ID="txtboxForwardingCapacitySwitch" runat="server"></asp:TextBox>

                        <asp:Label id="lblStackingSwitch" AssociatedControlID="ddlStackingSwitch" Text="Stacking:" runat="server" />
                        <asp:DropDownList ID="ddlStackingSwitch" runat="server">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:DropDownList>

                        <asp:Label id="lblStackingBandwidthSwitch" AssociatedControlId="txtboxStackingBandwidthSwitch" Text="Stacking Bandwidth:" runat="server" />
                        <asp:TextBox ID="txtboxStackingBandwidthSwitch" runat="server"></asp:TextBox>

                        <asp:Label id="lblRAM" AssociatedControlId="txtboxRAMSwitch" Text="RAM:" runat="server" />
                        <asp:TextBox ID="txtboxRAMSwitch" runat="server"></asp:TextBox>

                        <asp:Label id="lblFlash" AssociatedControlId="txtboxFlashSwitch" Text="Flash:" runat="server" />
                        <asp:TextBox ID="txtboxFlashSwitch" runat="server"></asp:TextBox>
                    
                        <asp:Label id="lblVlanIDSwitch" AssociatedControlId="txtboxVlanIDSwitch" Text="VLAN IDs:" runat="server" />
                        <asp:TextBox ID="txtboxVlanIDSwitch" runat="server"></asp:TextBox>

                        <asp:Label id="lblDHCPSwitch" AssociatedControlId="ddlDHCPSwitch" Text="DHCP:" runat="server" />
                        <asp:DropDownList ID="ddlDHCPSwitch" runat="server">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:DropDownList>

                        <asp:Label id="lblDTP" AssociatedControlId="ddlDTPSwitch" Text="DTP:" runat="server" />
                        <asp:DropDownList ID="ddlDTPSwitch" runat="server">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:DropDownList>

                        <asp:Label id="lblLACPSwitch" AssociatedControlId="ddlLACPSwitch" Text="LACP:" runat="server" />
                        <asp:DropDownList ID="ddlLACPSwitch" runat="server">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:DropDownList>

                        <asp:Label id="lblVTPSwitch" AssociatedControlId="ddlVTPSwitch" Text="VTP:" runat="server" />
                        <asp:DropDownList ID="ddlVTPSwitch" runat="server">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:DropDownList>

                        <asp:Label id="lblDatasheetSwitch" AssociatedControlId="txtboxDatasheetSwitch" Text="Datasheet:" runat="server" />
                        <asp:TextBox ID="txtboxDatasheetSwitch" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-12 aligncenter">
                    <asp:Button ID="ButtonSubmitSwitch" CssClass=" btn btn-default" runat="server" Text="Submit Switch" OnClick="SubmitSwitch"/>
                </div>

        </div>

        <div class="AddRouter" runat="server" id ="addRouter" visible="false">
        
            <h1>Add Router</h1>
        
            <asp:Label id="lblSeriesRouter" AssociatedControlId="txtboxSeriesRouter" Text="Series:" runat="server" />
            <asp:TextBox ID="txtboxSeriesRouter" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSeriesRouter" runat="server" ErrorMessage="Incorrect series" ControlToValidate="txtboxSeriesRouter"></asp:RequiredFieldValidator>

                <asp:Label id="lblModelRouter" AssociatedControlId="txtboxModelRouter" Text="Model:" runat="server" />
                <asp:TextBox ID="txtboxModelRouter" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorModelRouter" runat="server" ErrorMessage="Incorrect model" ControlToValidate="txtboxModelRouter"></asp:RequiredFieldValidator>

                <asp:Label id="lblSerialRouter" AssociatedControlId="txtboxSerialRouter" Text="Serial:" runat="server" />
                <asp:TextBox ID="txtboxSerialRouter" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSerialRouter" runat="server" ErrorMessage="Incorrect serial" ControlToValidate="txtboxSerialRouter"></asp:RequiredFieldValidator>

                <asp:Label id="lblGbPortsRouter" AssociatedControlId="txtboxGbPortsRouter" Text="Gigabit Ports:" runat="server" />
                <asp:TextBox ID="txtboxGbPortsRouter" TextMode="Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorGbPortsRouter" runat="server" ErrorMessage="Incorrect Gigabit Ports" ControlToValidate="txtboxGbPortsRouter"></asp:RequiredFieldValidator>

                <asp:Label id="lbl100PortsRouter" AssociatedControlId="txtboxonehundredportsRouter" Text="10/100 Ports:" runat="server" />
                <asp:TextBox ID="txtboxonehundredportsRouter" TextMode="Number" runat="server"></asp:TextBox>
            </div>
            <div class="cell_left">
            1Gb Uplinks:
            </div>
            <div class="cell_right">
                <asp:Label id="Label4" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxOneGUplinksRouter" TextMode="Number" runat="server"></asp:TextBox>
            </div>
            <div class="cell_left">
            10Gb Uplinks:
            </div>
            <div class="cell_right">
                <asp:Label id="Label5" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxTenGUplinksRouter" TextMode="Number" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            Software Feature:
            </div>
            <div class="cell_right">
                <asp:Label id="Label6" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxSoftwareFeatureRouter" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            Forwarding Capacity:
            </div>
            <div class="cell_right">
                <asp:Label id="Label7" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxForwardingCapacityRouter" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            RAM:
            </div>
            <div class="cell_right">
                <asp:Label id="Label8" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxRAMRouter" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            Flash:
            </div>
            <div class="cell_right">
                <asp:Label id="Label9" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxFlashRouter" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            Form Factor:
            </div>
            <div class="cell_right">
                <asp:Label id="Label10" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxFormFactorRouter" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            Network Interface Modules:
            </div>
            <div class="cell_right">
                <asp:Label id="Label11" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxNIMRouter" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            Enhanced Service Module:
            </div>
            <div class="cell_right">
                <asp:Label id="Label12" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxESMRouter" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            USB Ports:
            </div>
            <div class="cell_right">
                <asp:Label id="Label13" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxUsbPortsRouter" TextMode="Number" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            Redundant Power Supply:
            </div>
            <div class="cell_right">
                <asp:Label id="Label14" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:DropDownList ID="ddlRedundandtPowerSupplyRouter" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="cell_left">
            IPSec:
            </div>
            <div class="cell_right">
                <asp:Label id="Label15" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:DropDownList ID="ddlIPSecRouter" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="cell_left">
            OSPF:
            </div>
            <div class="cell_right">
                <asp:Label id="Label16" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:DropDownList ID="ddlOSPFRouter" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="cell_left">
            IS-IS:
            </div>
            <div class="cell_right">
                <asp:Label id="Label17" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:DropDownList ID="ddlIsisRouter" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
             <div class="cell_left">
            BGP:
            </div>
            <div class="cell_right">
                <asp:Label id="Label18" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:DropDownList ID="ddlBGPRouter" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
             <div class="cell_left">
            EIGRP:
            </div>
            <div class="cell_right">
                <asp:Label id="Label19" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:DropDownList ID="ddlEIGRPRouter" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
             <div class="cell_left">
            ESP Slots:
            </div>
            <div class="cell_right">
                <asp:Label id="Label20" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxEspSlotsRouter" TextMode="Number" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            Airflow:
            </div>
            <div class="cell_right">
                <asp:Label id="Label21" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxAirflowRouter" runat="server"></asp:TextBox>
            </div>
             <div class="cell_left">
            Datasheet link:
            </div>
            <div class="cell_right">
                <asp:Label id="Label22" AssociatedControlId="txtboxIpv4RoutesSwitch" Text="IPv4 Routes:" runat="server" />
                <asp:TextBox ID="txtboxDatasheetRouter" runat="server"></asp:TextBox>
            </div>

            <div>
            <asp:Button ID="ButtonRouter" runat="server" Text="Submit Router" OnClick="SubmitRouter" />
            </div>




        </div>

        <div class="AddServer" runat="server" id ="addServer" visible="false">
            <h1>Add Server</h1>
        </div>

        <div class="AddWireless" runat="server" id ="addWireless" visible="false">
            <h1>AddWireless</h1>
             <div class="cell_left">
                 Series:
            </div>
            <div class="cell_right">
                <asp:TextBox ID="TextBoxSeriesWireless" runat="server"></asp:TextBox>
            </div>
            <div>
                Model:
            </div>
            <div>
                <asp:TextBox ID="TextBoxModelWireless" runat="server"></asp:TextBox>
            </div>
            <div>
                Serial:
            </div>
            <div>
                <asp:TextBox ID="TextBoxSerialWireless" runat="server"></asp:TextBox>
            </div>
            <div>
                Type:
            </div>
            <div>
                <asp:DropDownList ID="ddlTypeWireless" runat="server">
                    <asp:ListItem>Indoor</asp:ListItem>
                    <asp:ListItem>Outdoor</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                Gigabit Ports:
            </div>
            <div>
                <asp:TextBox ID="TextBoxGbPortsWireless" TextMode="Number" runat="server"></asp:TextBox>
            </div>
            <div>
                Power over Ethernet:
            </div>
            <div>
                <asp:DropDownList ID="ddlPoeWireless" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                Power over Ethernet Power:
            </div>
            <div>
                <asp:TextBox ID="TextBoxPoePowerWireless" runat="server"></asp:TextBox>
            </div>
            <div>
                802.11n:
            </div>
            <div>
                <asp:DropDownList ID="ddlProtocolNWireless" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                802.11ac:
            </div>
            <div>
                <asp:DropDownList ID="ddlProtocolACWireless" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                802.11ac wave 2:
            </div>
            <div>
                <asp:DropDownList ID="ddlProtocolACwaveWireless" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                2.4 GHz:
            </div>
            <div>
                <asp:DropDownList ID="ddlSpectrum1Wireless" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                5 GHz:
            </div>
            <div>
                <asp:DropDownList ID="ddlSpectrum2Wireless" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                Mimo:
            </div>
            <div>
                <asp:TextBox ID="TextBoxMIMOWireless" runat="server"></asp:TextBox>
            </div>
            <div>
                Spatial Streams:
            </div>
            <div>
                <asp:TextBox ID="TextBoxSpatialStreamsWireless" TextMode="Number" runat="server"></asp:TextBox>
            </div>
            <div>
                Maximum Data Rate:
            </div>
            <div>
                <asp:TextBox ID="TextBoxMaxDataRateWireless" runat="server"></asp:TextBox>
            </div>
            <div>
                Maximum Transmit Power:
            </div>
            <div>
                <asp:TextBox ID="TextBoxMaxTransmitPowerWireless" TextMode="Number" runat="server"></asp:TextBox> (dBm)
            </div>
            <div>
                Datasheet:
            </div>
            <div>
                <asp:TextBox ID="TextBoxDatasheetWireless" runat="server"></asp:TextBox>
            </div>

            <asp:Button ID="ButtonWireless" runat="server" Text="Add Product" OnClick="SubmitWireless" />

        
        </div>
   </div>         
                

</asp:Content>

