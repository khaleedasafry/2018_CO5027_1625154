<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server"> 
Admin Page</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="/Images/logo2.jpg" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Welcome to Admin Page</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    
    <ul>
        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/adminadd.aspx">ADD PRODUCT</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin/adminedit.aspx">EDIT PRODUCT</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin/adminlist.aspx">PRODUCT LIST</asp:HyperLink></li>        
    </ul>

</asp:Content>


