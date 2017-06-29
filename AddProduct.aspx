<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="ContentAddProduct" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div id="PageResponse" runat="server"></div>

    <asp:LoginView ID="LoginViewAddProduct" runat="server">
        
        <LoggedInTemplate>
                 
        </LoggedInTemplate>

        <AnonymousTemplate>
            <h3> Please login to view this page</h3>
            <asp:Literal ID="Failuretext" />
        </AnonymousTemplate>
    </asp:LoginView>

    <div class="table_container">
        <h2>
        Please Select Product Category
        </h2>
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
        <div>
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
                        <asp:TextBox ID="txtboxGbPortsSwitch" TextMode="Number" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFieldValidatorGbPortsSwitch" SetFocusOnError="true" runat="server" ErrorMessage="*Incorrect Gigabit Ports" Display="Dynamic" ControlToValidate="txtboxGbPortsSwitch"></asp:RequiredFieldValidator>

                        <asp:Label id="lbl100PortsSwitch" AssociatedControlId="txtbox100PortsSwitch" Text="10/100 Ports:" runat="server" />
                        <asp:TextBox ID="txtbox100PortsSwitch" TextMode="Number" runat="server"></asp:TextBox>

                        <asp:Label id="lbl1GbPortsSwitch" AssociatedControlId="txtbox1GPortsSwitch" Text="1Gb Uplinks:" runat="server" />
                        <asp:TextBox ID="txtbox1GPortsSwitch" TextMode="Number" runat="server"></asp:TextBox>

                        <asp:Label id="lbl10GbPortsSwitch" AssociatedControlId="txtbox10GPortsSwitch" Text="10Gb Uplinks:" runat="server" />
                        <asp:TextBox ID="txtbox10GPortsSwitch" TextMode="Number" runat="server"></asp:TextBox>

                        <asp:Label id="lblPoeSwitch" AssociatedControlId="ddlPoeSwitch" Text="Power over Ethernet:" runat="server" />
                        <asp:DropDownList ID="ddlPoeSwitch" CssClass="ddlOption" runat="server">
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
                        <asp:TextBox ID="txtboxIpv4RoutesSwitch" TextMode="Number" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-6">

                        <asp:Label id="lblSwitchingCapacitySwitch" AssociatedControlId="txtboxSwitchingCapacitySwitch" Text="Switching Capacity:" runat="server" />
                        <asp:TextBox ID="txtboxSwitchingCapacitySwitch" runat="server"></asp:TextBox>


                        <asp:Label id="lblForwardingCapacitySwitch" AssociatedControlId="txtboxForwardingCapacitySwitch" Text="Forwarding Capacity:" runat="server" />
                        <asp:TextBox ID="txtboxForwardingCapacitySwitch" runat="server"></asp:TextBox>

                        <asp:Label id="lblStackingSwitch" AssociatedControlID="ddlStackingSwitch" Text="Stacking:" runat="server" />
                        <asp:DropDownList ID="ddlStackingSwitch" CssClass="ddlOption" runat="server">
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
                        <asp:DropDownList ID="ddlDHCPSwitch" CssClass="ddlOption" runat="server">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:DropDownList>

                        <asp:Label id="lblDTP" AssociatedControlId="ddlDTPSwitch" Text="DTP:" runat="server" />
                        <asp:DropDownList ID="ddlDTPSwitch" CssClass="ddlOption" runat="server">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:DropDownList>

                        <asp:Label id="lblLACPSwitch" AssociatedControlId="ddlLACPSwitch" Text="LACP:" runat="server" />
                        <asp:DropDownList ID="ddlLACPSwitch" CssClass="ddlOption" runat="server">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:DropDownList>

                        <asp:Label id="lblVTPSwitch" AssociatedControlId="ddlVTPSwitch" Text="VTP:" runat="server" />
                        <asp:DropDownList ID="ddlVTPSwitch" CssClass="ddlOption" runat="server">
                            <asp:ListItem Text="Yes" Value="Yes" />
                            <asp:ListItem Text="No" Value="No" />
                        </asp:DropDownList>

                        <asp:Label id="lblDatasheetSwitch" AssociatedControlId="txtboxDatasheetSwitch" Text="Datasheet:" runat="server" />
                        <asp:TextBox ID="txtboxDatasheetSwitch" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-12 aligncenter">
                    <asp:Button ID="ButtonSubmitSwitch" CssClass=" btn btn-default" runat="server" Text="Add Product" OnClick="SubmitSwitch"/>
                </div>
            </div>

                <div class="AddRouter" runat="server" ID="addRouter" visible="false">
            <div class="row">
                <div class="col-md-12">
                    <h1>Add Router</h1>
                </div>
                <div class="col-md-6">
                    <asp:Label id="lblSeriesRouter" AssociatedControlId="txtboxSeriesRouter" Text="Series:" runat="server" ValidateRequestMode="Enabled" />
                    <asp:TextBox ID="txtboxSeriesRouter" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSeriesRouter" CssClass="RequiredFieldValidator" runat="server" ErrorMessage="*Incorrect series" ControlToValidate="txtboxSeriesRouter"></asp:RequiredFieldValidator>

                    <asp:Label id="lblModelRouter" AssociatedControlId="txtboxModelRouter" Text="Model:" runat="server" />
                    <asp:TextBox ID="txtboxModelRouter" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorModelRouter" CssClass="RequiredFieldValidator" runat="server" ErrorMessage="*Incorrect model" ControlToValidate="txtboxModelRouter"></asp:RequiredFieldValidator>

                    <asp:Label id="lblSerialRouter" AssociatedControlId="txtboxSerialRouter" Text="Serial:" runat="server" />
                    <asp:TextBox ID="txtboxSerialRouter" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSerialRouter" CssClass="RequiredFieldValidator" runat="server" ErrorMessage="*Incorrect serial" ControlToValidate="txtboxSerialRouter"></asp:RequiredFieldValidator>

                    <asp:Label id="lblGbPortsRouter" AssociatedControlId="txtboxGbPortsRouter" Text="Gigabit Ports:" runat="server" />
                    <asp:TextBox ID="txtboxGbPortsRouter" TextMode="Number" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGbPortsRouter" CssClass="RequiredFieldValidator" runat="server" ErrorMessage="*Incorrect Gigabit Ports" ControlToValidate="txtboxGbPortsRouter"></asp:RequiredFieldValidator>

                    <asp:Label id="lbl100PortsRouter" AssociatedControlId="txtboxonehundredportsRouter" Text="10/100 Ports:" runat="server" />
                    <asp:TextBox ID="txtboxonehundredportsRouter" TextMode="Number" runat="server"></asp:TextBox>
            
                    <asp:Label id="lblOneGUplinksRouter" AssociatedControlId="txtboxOneGUplinksRouter" Text="1Gb Uplinks:" runat="server" />
                    <asp:TextBox ID="txtboxOneGUplinksRouter" TextMode="Number" runat="server"></asp:TextBox>

                    <asp:Label id="lbl10GbUplinksRouter" AssociatedControlId="txtboxTenGUplinksRouter" Text="10Gb Uplinks:" runat="server" />
                    <asp:TextBox ID="txtboxTenGUplinksRouter" TextMode="Number" runat="server"></asp:TextBox>

                    <asp:Label id="lblSoftwareFeatureRouter" AssociatedControlId="txtboxSoftwareFeatureRouter" Text="Software Feature:" runat="server" />
                    <asp:TextBox ID="txtboxSoftwareFeatureRouter" runat="server"></asp:TextBox>

                    <asp:Label id="lblForwardingCapacityRouter" AssociatedControlId="txtboxForwardingCapacityRouter" Text="Forwarding Capacity:" runat="server" />
                    <asp:TextBox ID="txtboxForwardingCapacityRouter" runat="server"></asp:TextBox>

                    <asp:Label id="lblRAMRouter" AssociatedControlId="txtboxRAMRouter" Text="RAMs:" runat="server" />
                    <asp:TextBox ID="txtboxRAMRouter" runat="server"></asp:TextBox>

                    <asp:Label id="lblFlashRouter" AssociatedControlId="txtboxFlashRouter" Text="Flash:" runat="server" />
                    <asp:TextBox ID="txtboxFlashRouter" runat="server"></asp:TextBox>

                    <asp:Label id="lblFormFactorRouter" AssociatedControlId="txtboxFormFactorRouter" Text="Form Factor:" runat="server" />
                    <asp:TextBox ID="txtboxFormFactorRouter" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label id="lblNIMRouter" AssociatedControlId="txtboxNIMRouter" Text="Network Interface Modules:" runat="server" />
                    <asp:TextBox ID="txtboxNIMRouter" runat="server"></asp:TextBox>

                    <asp:Label id="lblESMRouter" AssociatedControlId="txtboxESMRouter" Text="Enhanced Service Module:" runat="server" />
                    <asp:TextBox ID="txtboxESMRouter" runat="server"></asp:TextBox>

                    <asp:Label id="lblUSBPortsRouter" AssociatedControlId="txtboxUsbPortsRouter" Text="USB Ports:" runat="server" />
                    <asp:TextBox ID="txtboxUsbPortsRouter" TextMode="Number" runat="server"></asp:TextBox>

                    <asp:Label id="lblRedundandtPowerSupplyRouter" AssociatedControlId="ddlRedundandtPowerSupplyRouter" Text="Redundant Power Supply:" runat="server" />
                    <asp:DropDownList ID="ddlRedundandtPowerSupplyRouter" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label id="lblIPSecRouter" AssociatedControlId="ddlIPSecRouter" Text="IPSec:" runat="server" />
                    <asp:DropDownList ID="ddlIPSecRouter" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label id="lblOSPFRouter" AssociatedControlId="ddlOSPFRouter" Text="OSPF:" runat="server" />
                    <asp:DropDownList ID="ddlOSPFRouter" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label id="lblIsisRouter" AssociatedControlId="ddlIsisRouter" Text="IS-IS:" runat="server" />
                    <asp:DropDownList ID="ddlIsisRouter" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label id="lblBGPRouter" AssociatedControlId="ddlBGPRouter" Text="BGP:" runat="server" />
                    <asp:DropDownList ID="ddlBGPRouter" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label id="lblEIGRPRouter" AssociatedControlId="ddlEIGRPRouter" Text="EIGRP:" runat="server" />
                    <asp:DropDownList ID="ddlEIGRPRouter" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label id="lblESPSlotsRouter" AssociatedControlId="txtboxEspSlotsRouter" Text="ESP Slots:" runat="server" />
                    <asp:TextBox ID="txtboxEspSlotsRouter" TextMode="Number" runat="server"></asp:TextBox>

                    <asp:Label id="lblAirflowRouter" AssociatedControlId="txtboxAirflowRouter" Text="Airflow:" runat="server" />
                    <asp:TextBox ID="txtboxAirflowRouter" runat="server"></asp:TextBox>

                    <asp:Label id="lblDatasheetRouter" AssociatedControlId="txtboxDatasheetRouter" Text="Datasheet link:" runat="server" />
                    <asp:TextBox ID="txtboxDatasheetRouter" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-12 aligncenter">
                <asp:Button ID="ButtonRouter" CssClass=" btn btn-default" runat="server" Text="Add Product" OnClick="SubmitRouter" />
            </div>
        </div>

                <div class="AddServer" runat="server" id ="addServer" visible="false">
            <div class="row">
	            <div class="col-md-12">
                    <h1>Add Server</h1>
                </div>
                <div class="col-md-4">
                    
                    <asp:Label ID="LabelSeriesServer" AssociatedControlID="TextBoxSeriesServer" runat="server" Text="Series"></asp:Label>
                    <asp:TextBox ID="TextBoxSeriesServer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSeriesServer" ControlToValidate="TextBoxSeriesServer" CssClass="RequiredFieldValidator" runat="server" ErrorMessage="*Incorect Series"></asp:RequiredFieldValidator>

                    <asp:Label ID="LabelModelServer" AssociatedControlID="TextBoxModelServer" runat="server" Text="Model"></asp:Label>
                    <asp:TextBox ID="TextBoxModelServer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorModelServer" ControlToValidate="TextBoxModelServer" CssClass="RequiredFieldValidator" runat="server" ErrorMessage="*Incorect Model"></asp:RequiredFieldValidator>

                    <asp:Label ID="LabelSerialServer" AssociatedControlID="TextBoxSerialServer" runat="server" Text="Serial"></asp:Label>
                    <asp:TextBox ID="TextBoxSerialServer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSerialServer" ControlToValidate="TextBoxSerialServer" CssClass="RequiredFieldValidator" runat="server" ErrorMessage="*Incorect Serial"></asp:RequiredFieldValidator>

                    <asp:Label ID="LabelFormFactorServer" AssociatedControlID="DropDownListFormFactorServer" runat="server" Text="Form Factor"></asp:Label>
                    <asp:DropDownList ID="DropDownListFormFactorServer" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Half-width</asp:ListItem>
                        <asp:ListItem>Full-width</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="LabelMemorySlotsServer" AssociatedControlID="TextBoxMemorySlotsServer" runat="server" Text="Memory Slots"></asp:Label>
                    <asp:TextBox ID="TextBoxMemorySlotsServer" runat="server"></asp:TextBox>

                    <asp:Label ID="LabelMezzanineServer" AssociatedControlID="TextBoxMezzanineServer" runat="server" Text="Mezanine Adapter Slots"></asp:Label>
                    <asp:TextBox ID="TextBoxMezzanineServer" runat="server"></asp:TextBox>

                    <asp:Label ID="LabelDiskDrivesServer" AssociatedControlID="TextBoxDiskDrivesServer" runat="server" Text="Disk Drives"></asp:Label>
                    <asp:TextBox ID="TextBoxDiskDrivesServer" runat="server"></asp:TextBox>

                    <asp:Label ID="LabelMaximumInternalStorageServer" AssociatedControlID="TextBoxMaximumInternalStorageServer" runat="server" Text="Maximum Internal Storage"></asp:Label>
                    <asp:TextBox ID="TextBoxMaximumInternalStorageServer" runat="server"></asp:TextBox>

                    <asp:Label ID="LabelUCSDirectorServer" AssociatedControlID="DropDownListUCSDirectorServer" runat="server" Text="UCS Director"></asp:Label>
                    <asp:DropDownList ID="DropDownListUCSDirectorServer" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="LabelDatasheetServer" AssociatedControlID="TextBoxDatasheetServer" runat="server" Text="Datasheet"></asp:Label>
                    <asp:TextBox ID="TextBoxDatasheetServer" runat="server"></asp:TextBox>
                </div>
                <div class="clearfix"></div>
                <div class="col-md-4 ">
                <asp:Button ID="ButtonServer" CssClass=" btn btn-default" runat="server" Text="Add Product" OnClick="SubmitServer" />
            </div>
            </div>
        </div>

                <div class="AddWireless" runat="server" id ="addWireless" visible="false">
            <div class="row">
                <div class="col-md-12">
                    <h1>AddWireless</h1>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="lblSeriesWireless" AssociatedControlID="TextBoxSeriesWireless" Text="Series:" runat="server" ValidateRequestMode="Enabled" />
                    <asp:TextBox ID="TextBoxSeriesWireless" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFieldValidatorSeriesWirelesss" SetFocusOnError="true" runat="server" ErrorMessage="*Incorrect series" Display="Dynamic" ControlToValidate="TextBoxSeriesWireless" />

                <asp:Label ID="lblModelWireless" AssociatedControlID="TextBoxModelWireless" Text="Model:" runat="server" ValidateRequestMode="Enabled" />
                <asp:TextBox ID="TextBoxModelWireless" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFieldValidatorModelWireless" SetFocusOnError="true" runat="server" ErrorMessage="*Incorrect model" Display="Dynamic" ControlToValidate="TextBoxModelWireless" />

                <asp:Label ID="lblSerialWireless" AssociatedControlID="TextBoxSerialWireless" Text="Serial:" runat="server" ValidateRequestMode="Enabled" />
                <asp:TextBox ID="TextBoxSerialWireless" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="RequiredFieldValidator" ID="RequiredFieldValidatorSerialWireless" SetFocusOnError="true" runat="server" ErrorMessage="*Incorrect serial" Display="Dynamic" ControlToValidate="TextBoxSerialWireless" />

                <asp:Label ID="lblTypeWireless" AssociatedControlID="ddlTypeWireless" Text="Type:" runat="server" ValidateRequestMode="Enabled" />
                <asp:DropDownList ID="ddlTypeWireless" CssClass="ddlOption" runat="server">
                    <asp:ListItem>Indoor</asp:ListItem>
                    <asp:ListItem>Outdoor</asp:ListItem>
                </asp:DropDownList>

                <asp:Label ID="lblGbPortsWireless" AssociatedControlID="TextBoxGbPortsWireless" Text="Gb Ports:" runat="server" ValidateRequestMode="Enabled" />
                <asp:TextBox ID="TextBoxGbPortsWireless" TextMode="Number" runat="server"></asp:TextBox>

                <asp:Label ID="lblPoeWireless" AssociatedControlID="ddlPoeWireless" Text="Power over Ethernet:" runat="server" ValidateRequestMode="Enabled" />
                <asp:DropDownList ID="ddlPoeWireless" CssClass="ddlOption" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>

                <asp:Label ID="lblPoePowerWireless" AssociatedControlID="TextBoxPoePowerWireless" Text="Power over Ethernet Power:" runat="server" ValidateRequestMode="Enabled" />
                <asp:TextBox ID="TextBoxPoePowerWireless" runat="server"></asp:TextBox>

                <asp:Label ID="lblProtocolNWireless" AssociatedControlID="ddlProtocolNWireless" Text="802.11n:" runat="server" ValidateRequestMode="Enabled" />
                <asp:DropDownList ID="ddlProtocolNWireless" CssClass="ddlOption" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>

                <asp:Label ID="lblProtocolACWireless" AssociatedControlID="ddlProtocolACWireless" Text="802.11ac:" runat="server" ValidateRequestMode="Enabled" />
                <asp:DropDownList ID="ddlProtocolACWireless" CssClass="ddlOption" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="lblProtocolACwaveWireless" AssociatedControlID="ddlProtocolACwaveWireless" Text="802.11ac wave 2:" runat="server" ValidateRequestMode="Enabled" />
                    <asp:DropDownList ID="ddlProtocolACwaveWireless" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="lblSpectrum1Wireless" AssociatedControlID="ddlSpectrum1Wireless" Text="2.4 GHz:" runat="server" ValidateRequestMode="Enabled" />
                    <asp:DropDownList ID="ddlSpectrum1Wireless" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="lblSpectrum2Wireless" AssociatedControlID="ddlSpectrum2Wireless" Text="5 GHz:" runat="server" ValidateRequestMode="Enabled" />
                    <asp:DropDownList ID="ddlSpectrum2Wireless" CssClass="ddlOption" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="lblMIMOWireless" AssociatedControlID="TextBoxMIMOWireless" Text="MIMO:" runat="server" ValidateRequestMode="Enabled" />
                    <asp:TextBox ID="TextBoxMIMOWireless" runat="server"></asp:TextBox>

                    <asp:Label ID="lblSpatialStreamsWireless" AssociatedControlID="TextBoxSpatialStreamsWireless" Text="Spatial Streams:" runat="server" ValidateRequestMode="Enabled" />
                    <asp:TextBox ID="TextBoxSpatialStreamsWireless" TextMode="Number" runat="server"></asp:TextBox>

                    <asp:Label ID="lblMaxDataRateWireless" AssociatedControlID="TextBoxMaxDataRateWireless" Text="Maximum Data Rate:" runat="server" ValidateRequestMode="Enabled" />
                    <asp:TextBox ID="TextBoxMaxDataRateWireless" runat="server"></asp:TextBox>

                    <asp:Label ID="lblMaxTransmitPowerWireless" AssociatedControlID="TextBoxMaxTransmitPowerWireless" Text="Maximum Transmit Power:" runat="server" ValidateRequestMode="Enabled" />
                    <asp:TextBox ID="TextBoxMaxTransmitPowerWireless" TextMode="Number" runat="server"></asp:TextBox> (dBm)

                    <asp:Label ID="lblDatasheetWireless" AssociatedControlID="TextBoxDatasheetWireless" Text="Datasheet:" runat="server" ValidateRequestMode="Enabled" />
                    <asp:TextBox ID="TextBoxDatasheetWireless" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-12 aligncenter">
                <asp:Button ID="ButtonWireless" CssClass=" btn btn-default" runat="server" Text="Add Product" OnClick="SubmitWireless" />
            </div>
        </div>    
            </div>   
        </div>
    </div>
</asp:Content>

