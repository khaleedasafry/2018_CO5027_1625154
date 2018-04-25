<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server"> 
Admin Page</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="/Images/logo2.jpg" alt="logo" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Welcome to Admin Page</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <ul>
<li><a href="~/Admin/adminadd.aspx" runat="server">Add Product</a></li>
<li><a href="~/Admin/adminedit.aspx" runat="server">Edit Product</a></li>
<li><a href="~/Admin/adminlist.aspx" runat="server">List Product</a></li>
</ul>



</asp:Content>

