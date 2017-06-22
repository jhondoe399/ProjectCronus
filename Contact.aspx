<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h2 class="aligncenter subline mb35"><%: Title %>.</h2>
        </div>
        <div class="col-md-6">
            <h3>Cronus eBusiness</h3>
            <address>
                87 Nicolae Caramfil Str.<br />
                Bucharest<br />
                <abbr title="Phone">P:</abbr>
                +4021 204 36 36
            </address>

            <address>
                <strong>Office:</strong>   <a href="mailto:office@cronus.ro">Office@cronus.ro</a><br />
            </address>
        </div>
        <div class="col-md-6">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2846.5031000050694!2d26.089626415107666!3d44.4843571791016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40b2025d96ac4a9b%3A0x6c2049f43cbe55db!2sCronus+eBusiness+SRL!5e0!3m2!1sen!2sro!4v1498153502968" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div>
    

</asp:Content>
