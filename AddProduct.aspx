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

    <div class="AddSwitch" runat="server" id="addSwitch" visible="false">
        <h1>Add switch</h1>
        <div class="cell_left">
        Series:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxSeriesSwitch" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSeriesSwitch" runat="server" ErrorMessage="Incorrect series" ControlToValidate="txtboxSeriesSwitch"></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
        Serial:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxSerialSwitch" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSerialSwitch" runat="server" ErrorMessage="Incorrect serial" ControlToValidate="txtboxSerialSwitch"></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
        Model:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxModelSwitch" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorModelSwitch" runat="server" ErrorMessage="Incorrect model" ControlToValidate="txtboxModelSwitch"></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
        Gigabit Ports:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxGbPortsSwitch" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGbPortsSwitch" runat="server" ErrorMessage="Incorrect Gigabit Ports" ControlToValidate="txtboxGbPortsSwitch"></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
        100Ports:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtbox100PortsSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        1Gb Uplinks:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtbox1GPortsSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        10Gb Uplinks:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtbox10GPortsSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        Power over Ethernet:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlPoeSwitch" runat="server">
                <asp:ListItem Text="Yes" Value="Yes" />
                <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList>
        </div>
        <div class="cell_left">
        Power over Ethernet Power:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxPoePowerSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        Sodftware Feature:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxSoftwareFeatureSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        MAC Adresses:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxMACAdressesSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        IPv4 Routes:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxIpv4RoutesSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        Switching Capacity:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxSwitchingCapacitySwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        Forwarding Capacity:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxForwardingCapacitySwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        Stacking:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlStackingSwitch" runat="server">
                <asp:ListItem Text="Yes" Value="Yes" />
                <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList>
        </div>
        <div class="cell_left">
        Stacking Bandwidth:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxStackingBandwidthSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        RAM:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxRAMSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        Flash:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxFlashSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        VLAN IDs:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxVlanIDSwitch" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        DHCP:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlDHCPSwitch" runat="server">
                <asp:ListItem Text="Yes" Value="Yes" />
                <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList>
        </div>
        <div class="cell_left">
        DTP:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlDTPSwitch" runat="server">
                <asp:ListItem Text="Yes" Value="Yes" />
                <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList>
        </div>
        <div class="cell_left">
        LACP:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlLACPSwitch" runat="server">
                <asp:ListItem Text="Yes" Value="Yes" />
                <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList>
        </div>
        <div class="cell_left">
        VTP:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlVTPSwitch" runat="server">
                <asp:ListItem Text="Yes" Value="Yes" />
                <asp:ListItem Text="No" Value="No" />
            </asp:DropDownList>
        </div>
        <div>
        <div class="cell_left">
        Datasheet:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxDatasheetSwitch" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="ButtonSubmitSwitch" runat="server" Text="Submit Switch" OnClick="SubmitSwitch"/>
        </div>

    </div>

    <div class="AddRouter" runat="server" id ="addRouter" visible="false">
        
        <h1>Add Router</h1>
        
        <div class="cell_left">
        Series:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxSeriesRouter" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSeriesRouter" runat="server" ErrorMessage="Incorrect series" ControlToValidate="txtboxSeriesRouter"></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
        Model:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxModelRouter" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorModelRouter" runat="server" ErrorMessage="Incorrect model" ControlToValidate="txtboxModelRouter"></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
        Serial:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxSerialRouter" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSerialRouter" runat="server" ErrorMessage="Incorrect serial" ControlToValidate="txtboxSerialRouter"></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
        Gigabit Ports:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxGbPortsRouter" TextMode="Number" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGbPortsRouter" runat="server" ErrorMessage="Incorrect Gigabit Ports" ControlToValidate="txtboxGbPortsRouter"></asp:RequiredFieldValidator>
        </div>
        <div class="cell_left">
        10/100 Ports:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxonehundredportsRouter" TextMode="Number" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        1Gb Uplinks:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxOneGUplinksRouter" TextMode="Number" runat="server"></asp:TextBox>
        </div>
        <div class="cell_left">
        10Gb Uplinks:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxTenGUplinksRouter" TextMode="Number" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        Software Feature:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxSoftwareFeatureRouter" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        Forwarding Capacity:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxForwardingCapacityRouter" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        RAM:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxRAMRouter" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        Flash:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxFlashRouter" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        Form Factor:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxFormFactorRouter" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        Network Interface Modules:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxNIMRouter" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        Enhanced Service Module:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxESMRouter" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        USB Ports:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxUsbPortsRouter" TextMode="Number" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        Redundant Power Supply:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlRedundandtPowerSupplyRouter" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="cell_left">
        IPSec:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlIPSecRouter" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="cell_left">
        OSPF:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlOSPFRouter" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="cell_left">
        IS-IS:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlIsisRouter" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </div>
         <div class="cell_left">
        BGP:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlBGPRouter" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </div>
         <div class="cell_left">
        EIGRP:
        </div>
        <div class="cell_right">
            <asp:DropDownList ID="ddlEIGRPRouter" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </div>
         <div class="cell_left">
        ESP Slots:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxEspSlotsRouter" TextMode="Number" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        Airflow:
        </div>
        <div class="cell_right">
            <asp:TextBox ID="txtboxAirflowRouter" runat="server"></asp:TextBox>
        </div>
         <div class="cell_left">
        Datasheet link:
        </div>
        <div class="cell_right">
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
                <p>AddWireless</p>
            </div>
            
                

</asp:Content>

