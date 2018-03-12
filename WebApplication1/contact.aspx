<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication1.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Contact Page</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="/Images/logo2.jpg" alt="logo" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Contact Us</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <form id="form4" runat="server" style="text-align: center">
    <div>

        <p>


            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>


            </p>
<p>

    <asp:Label ID="Subject" runat="server" Text="Subject"></asp:Label>

    <asp:TextBox ID="txtSubject" runat="server" Height="16px" Width="110px"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

</p>    
<p>
    
    <asp:Label ID="Name" runat="server" Text="Body"></asp:Label>
    
    <asp:TextBox ID="txtName" runat="server" BackColor="#CCCCFF" Height="56px" Width="163px" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
</p>
            <p>
                <asp:Button ID="BtnSendEmail" runat="server" Height="37px" Text="SEND EMAIL" Width="225px" OnClick="BtnSendEmail_Click" />            
</p>
            <p>
                <asp:Literal ID="litResult" runat="server"></asp:Literal>
</p>    


            <br />
            <asp:Label ID="location" runat="server" Text="Location"></asp:Label>
            <br />
      </div>
        </form>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
    <div id="map">  </div>
    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: -34.397, lng: 150.644 },
                zoom: 8
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDD9HfBWdRw8bSP9p8c-4xjFJm29YAxI2M&callback=initMap"
    async defer></script>

</asp:Content>
