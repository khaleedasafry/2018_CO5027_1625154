<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Register</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="/Images/logo2.jpg" alt="logo" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Registration Form</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form4" runat="server" style="text-align: center">

        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtRegPassword" runat="server"></asp:TextBox>
        <br />

        <asp:Button ID="btnReg" runat="server" Text="Register" />
        <br />

        <asp:Literal ID="litRegError" runat="server"></asp:Literal>
        <br />
        
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
