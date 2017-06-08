﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCategory.SelectedValue == "1")
        {
            addSwitch.Visible = true;
            addRouter.Visible = false;
            addServer.Visible = false;
            addWireless.Visible = false;
        }
        
        if ( ddlCategory.SelectedValue == "2")
            {
                addSwitch.Visible = false;
                addRouter.Visible = true;
                addServer.Visible = false;
                addWireless.Visible = false;
            }
            
        if ( ddlCategory.SelectedValue == "3")
            {
                addSwitch.Visible = false;
                addRouter.Visible = false;
                addServer.Visible = true;
                addWireless.Visible = false;
            }
               
        if (ddlCategory.SelectedValue == "4")
        {
            addSwitch.Visible = false;
            addRouter.Visible = false;
            addServer.Visible = false;
            addWireless.Visible = true;
        }
    }


    protected void SubmitSwitch(object sender, EventArgs e)
    {

        String catid, series, serial, model, gbports, onehundredports, oneguplinks, tenguplinks, poe, poepower, softwarefeature, macadresses, ipv4routes, switchingcapacity, forwardingcapacity, stacking, stackingbandwidth, ram, flash, vlanids, dhcp, dtp, lacp, vtp, datasheet, sql;
        try
        {
            catid = ddlCategory.SelectedValue;
            series = txtboxSeriesSwitch.Text;
            serial = txtboxSerialSwitch.Text;
            model = txtboxModelSwitch.Text;
            gbports = txtboxGbPortsSwitch.Text;
            onehundredports = txtbox100PortsSwitch.Text;
            oneguplinks = txtbox1GPortsSwitch.Text;
            tenguplinks = txtbox10GPortsSwitch.Text;
            poe = ddlPoeSwitch.SelectedValue;
            poepower = txtboxPoePowerSwitch.Text;
            softwarefeature = txtboxSoftwareFeatureSwitch.Text;
            macadresses = txtboxMACAdressesSwitch.Text;
            ipv4routes = txtboxIpv4RoutesSwitch.Text;
            switchingcapacity = txtboxSwitchingCapacitySwitch.Text;
            forwardingcapacity = txtboxForwardingCapacitySwitch.Text;
            stacking = ddlStackingSwitch.Text;
            stackingbandwidth = txtboxStackingBandwidthSwitch.Text;
            ram = txtboxRAMSwitch.Text;
            flash = txtboxFlashSwitch.Text;
            vlanids = txtboxVlanIDSwitch.Text;
            dhcp = ddlDHCPSwitch.SelectedValue;
            dtp = ddlDTPSwitch.SelectedValue;
            lacp = ddlLACPSwitch.SelectedValue;
            vtp = ddlVTPSwitch.SelectedValue;
            datasheet = txtboxDatasheetSwitch.Text;


            sql = "INSERT INTO Products (catid, series, serial, model, gbports, onehundredports, oneguplinks, tenguplinks, poe, poepower, softwarefeature, macadresses, ipv4routes, switchingcapacity, forwardingcapacity, stacking, stackingbandwidth, ram, flash, vlanids, dhcp, dtp, lacp, vtp, datasheet) VALUES (@catid, @series, @serial, @model, @gbports, @onehundredports, @oneGUplinks, @tenguplinks, @poe, @poepower, @softwarefeature, @macadresses, @ipv4routes, @switchingcapacity, @forwardingcapacity, @stacking, @stackingbandwidth, @ram, @flash, @vlanids, @dhcp, @dtp, @lacp, @vtp, @datasheet)";
            SqlConnection sqlconnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectCronus\App_Data\Database.mdf;Integrated Security=True");
            sqlconnection.Open();
            SqlCommand sqlcomm = new SqlCommand(sql, sqlconnection);
            sqlcomm.Parameters.AddWithValue("catid", catid);
            sqlcomm.Parameters.AddWithValue("series", series);
            sqlcomm.Parameters.AddWithValue("serial", serial);
            sqlcomm.Parameters.AddWithValue("model", model);
            sqlcomm.Parameters.AddWithValue("gbports", gbports);
            sqlcomm.Parameters.AddWithValue("onehundredports", onehundredports);
            sqlcomm.Parameters.AddWithValue("oneguplinks", oneguplinks);
            sqlcomm.Parameters.AddWithValue("tenguplinks", tenguplinks);
            sqlcomm.Parameters.AddWithValue("poe", poe);
            sqlcomm.Parameters.AddWithValue("poepower", poepower);
            sqlcomm.Parameters.AddWithValue("softwarefeature", softwarefeature);
            sqlcomm.Parameters.AddWithValue("macadresses", macadresses);
            sqlcomm.Parameters.AddWithValue("ipv4routes", ipv4routes);
            sqlcomm.Parameters.AddWithValue("switchingcapacity", switchingcapacity);
            sqlcomm.Parameters.AddWithValue("forwardingcapacity", forwardingcapacity);
            sqlcomm.Parameters.AddWithValue("stacking", stacking);
            sqlcomm.Parameters.AddWithValue("stackingbandwidth", stackingbandwidth);
            sqlcomm.Parameters.AddWithValue("ram", ram);
            sqlcomm.Parameters.AddWithValue("flash", flash);
            sqlcomm.Parameters.AddWithValue("vlanids", vlanids);
            sqlcomm.Parameters.AddWithValue("dhcp", dhcp);
            sqlcomm.Parameters.AddWithValue("dtp", dtp);
            sqlcomm.Parameters.AddWithValue("lacp", lacp);
            sqlcomm.Parameters.AddWithValue("vtp", vtp);
            sqlcomm.Parameters.AddWithValue("datasheet", datasheet);


            sqlcomm.ExecuteNonQuery();
            sqlconnection.Close();
            ddlCategory.SelectedIndex = 0;
            txtboxSeriesSwitch.Text = "";
            txtboxSerialSwitch.Text = "";
            txtboxModelSwitch.Text = "";
            txtboxGbPortsSwitch.Text = "";
            txtbox100PortsSwitch.Text = "";
            txtbox1GPortsSwitch.Text = "";
            txtbox10GPortsSwitch.Text = "";
            ddlPoeSwitch.SelectedValue= "";
            txtboxPoePowerSwitch.Text = "";
            txtboxSoftwareFeatureSwitch.Text = "";
            txtboxMACAdressesSwitch.Text = "";
            txtboxIpv4RoutesSwitch.Text = "";
            txtboxSwitchingCapacitySwitch.Text = "";
            txtboxForwardingCapacitySwitch.Text = "";
            ddlStackingSwitch.SelectedIndex = 0;
            txtboxStackingBandwidthSwitch.Text = "";
            txtboxRAMSwitch.Text = "";
            txtboxFlashSwitch.Text = "";
            txtboxVlanIDSwitch.Text = "" ;
            txtboxDatasheetSwitch.Text = "";

            PageResponse.InnerHtml = "Product added";

        }

        catch (Exception ex)
        {
            PageResponse.InnerHtml = "Something went wrong." + ex.Message + "<br>" + ex.Source;
        }
        
    }









    protected void SubmitRouter(object sender, EventArgs e)
    {
        String catid, series, serial, model, gbports, onehundredports, oneguplinks, tenguplinks, softwarefeature, forwardingcapacity, ram, flash, formfactor, nim, esm, usbports, redundantpowersupply, ipsec, ospf, isis, bgp, eigrp, espslots, airflow, datasheet, sql;

        try
        {
            catid = ddlCategory.SelectedValue;
            series = txtboxSeriesRouter.Text;
            serial = txtboxSerialRouter.Text;
            model = txtboxModelRouter.Text;
            gbports = txtboxGbPortsRouter.Text;
            onehundredports = txtboxOneGUplinksRouter.Text;
            oneguplinks = txtboxOneGUplinksRouter.Text;
            tenguplinks = txtboxTenGUplinksRouter.Text;
            softwarefeature = txtboxSoftwareFeatureRouter.Text;
            forwardingcapacity = txtboxForwardingCapacityRouter.Text;
            ram = txtboxRAMRouter.Text;
            flash = txtboxFlashRouter.Text;
            formfactor = txtboxFormFactorRouter.Text;
            nim = txtboxNIMRouter.Text;
            esm = txtboxESMRouter.Text;
            usbports = txtboxUsbPortsRouter.Text;
            redundantpowersupply = ddlRedundandtPowerSupplyRouter.SelectedValue;
            ipsec = ddlIPSecRouter.SelectedValue;
            ospf = ddlOSPFRouter.SelectedValue;
            isis = ddlIsisRouter.SelectedValue;
            bgp = ddlBGPRouter.SelectedValue;
            eigrp = ddlEIGRPRouter.SelectedValue;
            espslots = txtboxEspSlotsRouter.Text;
            airflow = txtboxAirflowRouter.Text;
            datasheet = txtboxDatasheetRouter.Text;




            sql = "INSERT INTO Products (catid, series, serial, model, gbports, onehundredports, oneguplinks, tenguplinks, softwarefeature, forwardingcapacity, ram, flash, formfactor, nim, esm, usbports, redundantpowersupply, ipsec, ospf, isis, bgp, eigrp, espslots, airflow, datasheet) VALUES (@catid, @series, @serial, @model, @gbports, @onehundredports, @oneGUplinks, @tenguplinks, @softwarefeature, @forwardingcapacity, @ram, @flash, @formfactor, @nim, @esm, @usbports, @redundantpowersupply, @ipsec, @ospf, @isis, @bgp, @eigrp, @espslots, @airflow, @datasheet)";
            SqlConnection sqlconnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ProjectCronus\App_Data\Database.mdf;Integrated Security=True");
            sqlconnection.Open();
            SqlCommand sqlcomm = new SqlCommand(sql, sqlconnection);
            sqlcomm.Parameters.AddWithValue("catid", catid);
            sqlcomm.Parameters.AddWithValue("series", series);
            sqlcomm.Parameters.AddWithValue("serial", serial);
            sqlcomm.Parameters.AddWithValue("model", model);
            sqlcomm.Parameters.AddWithValue("gbports", gbports);
            sqlcomm.Parameters.AddWithValue("onehundredports", onehundredports);
            sqlcomm.Parameters.AddWithValue("oneguplinks", oneguplinks);
            sqlcomm.Parameters.AddWithValue("tenguplinks", tenguplinks);
            sqlcomm.Parameters.AddWithValue("softwarefeature", softwarefeature);
            sqlcomm.Parameters.AddWithValue("forwardingcapacity", forwardingcapacity);
            sqlcomm.Parameters.AddWithValue("ram", ram);
            sqlcomm.Parameters.AddWithValue("flash", flash);
            sqlcomm.Parameters.AddWithValue("formfactor", formfactor);
            sqlcomm.Parameters.AddWithValue("nim", nim);
            sqlcomm.Parameters.AddWithValue("esm", esm);
            sqlcomm.Parameters.AddWithValue("usbports", usbports);
            sqlcomm.Parameters.AddWithValue("redundantpowersupply", redundantpowersupply);
            sqlcomm.Parameters.AddWithValue("ipsec", ipsec);
            sqlcomm.Parameters.AddWithValue("ospf", ospf);
            sqlcomm.Parameters.AddWithValue("isis", isis);
            sqlcomm.Parameters.AddWithValue("bgp", bgp);
            sqlcomm.Parameters.AddWithValue("eigrp", eigrp);
            sqlcomm.Parameters.AddWithValue("espslots", espslots);
            sqlcomm.Parameters.AddWithValue("airflow", airflow);
            sqlcomm.Parameters.AddWithValue("datasheet", datasheet);


            sqlcomm.ExecuteNonQuery();
            sqlconnection.Close();
            ddlCategory.SelectedIndex = 0;
            txtboxSeriesRouter.Text = "";
            txtboxSerialRouter.Text = "";
            txtboxModelRouter.Text = "";
            txtboxGbPortsRouter.Text = "";
            txtboxOneGUplinksRouter.Text = "";
            txtboxOneGUplinksRouter.Text = "";
            txtboxTenGUplinksRouter.Text = "";
            txtboxSoftwareFeatureRouter.Text = "";
            txtboxForwardingCapacityRouter.Text = "";
            txtboxRAMRouter.Text = "";
            txtboxFlashRouter.Text = "";
            txtboxFormFactorRouter.Text = "";
            txtboxNIMRouter.Text = "";
            txtboxESMRouter.Text = "";
            txtboxUsbPortsRouter.Text = "";
            ddlRedundandtPowerSupplyRouter.SelectedValue = "Yes";
            ddlIPSecRouter.SelectedValue = "Yes";
            ddlOSPFRouter.SelectedValue = "Yes";
            ddlIsisRouter.SelectedValue = "Yes";
            ddlBGPRouter.SelectedValue = "Yes";
            ddlEIGRPRouter.SelectedValue = "Yes";
            txtboxEspSlotsRouter.Text = "";
            txtboxAirflowRouter.Text = "";
            txtboxDatasheetRouter.Text = "";

            PageResponse.InnerHtml = "Product added";

        }

        catch (Exception ex)
        {
            PageResponse.InnerHtml = "Something went wrong." + ex.Message + "<br>" + ex.Source;
        }
    }
}