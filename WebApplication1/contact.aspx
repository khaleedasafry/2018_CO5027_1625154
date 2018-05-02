<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication1.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Contact Page</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="~/Images/logo2.jpg" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Contact Us</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <form id="form4" runat="server" style="text-align: center; height: 458px;">

        <p>

        </p>
        <asp:ValidationSummary ID="Valsumcontact" runat="server" ForeColor="#990000" Height="36px" DisplayMode="List" />
        <p>

            <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>

            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email must be filled" ForeColor="#CC0000" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>


            <asp:RegularExpressionValidator ID="valEmail" runat="server" ErrorMessage="Invalid email address" ForeColor="#990000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" Display="None"></asp:RegularExpressionValidator>


            </p>
<p>

    <asp:Label ID="Subject" runat="server" Text="Subject"></asp:Label>

    <asp:TextBox ID="txtSubject" runat="server" Height="16px" Width="110px"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject must be filled" ControlToValidate="txtSubject" ForeColor="#CC0000" Display="None"></asp:RequiredFieldValidator>

</p>    
<p>
    
    <asp:Label ID="Name" runat="server" Text="Body"></asp:Label>
    
    <asp:TextBox ID="txtName" runat="server" BackColor="#CCCCFF" Height="56px" Width="163px" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Body cannot be empty" ControlToValidate="txtName" ForeColor="#CC0000" Display="None"></asp:RequiredFieldValidator>
</p>
            <p>
                <asp:Button ID="BtnSendEmail" runat="server" Height="37px" Text="SEND EMAIL" Width="225px" OnClick="BtnSendEmail_Click" />            
</p>

            <p>
                <asp:Literal ID="litResult" runat="server"></asp:Literal>
 
 </p>
        <br />
            <asp:Label ID="location" runat="server" Text="Location"></asp:Label>

        </form>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
    <div id="map">
    <script>
        var uluru;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 4.8950323, lng: 114.89897010000004 },
                zoom: 15,
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map,
            });
        }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDD9HfBWdRw8bSP9p8c-4xjFJm29YAxI2M&callback=initMap">
    </script>
    </div>
</asp:Content>
