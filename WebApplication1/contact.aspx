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
<font face="Verdana">Name: </font><asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFFF" Height="22px" Width="163px"></asp:TextBox>
</p> 
<p>
<font face="Verdana">Telephone:</font><asp:TextBox ID="TextBox2" runat="server" BackColor="#FFCCCC" Height="22px" Width="163px"></asp:TextBox>
</p>    
<p>
<font face="Verdana">Email Address:</font><asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCFF" Height="22px" Width="163px"></asp:TextBox>
</p>
            <p>
                <asp:Button ID="Button1" runat="server" Height="37px" Text="Submit" Width="105px" />
</p>
<p>
<font face="Verdana"> Our Location</font></p>
        <p style="height: 215px">
    &nbsp;<img src="/Images/map.png" alt="map" style="width: 600px; height: 165px">
</p>
</div>
 
</form>
</asp:Content>
