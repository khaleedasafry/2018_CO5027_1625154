<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Home: My new website

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    Home - My new website
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    PRODUCTS
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <form id="form1" runat="server">

<ul class="items">
    <li>
        <a href="~/Products.aspx">
            <img src="/Images/mug.jpg" style="height: 165px; width: 178px">
            <h4>Unicorn Mug</h4>
            <p>$20.00</p>
        </a>
    </li>

    <li>
        <a href="~/Products.aspx">
            <img src="/Images/mug.jpg" style="height: 165px; width: 178px">
            <h4>Unicorn Mug</h4>
            <p>$20.00</p>
        </a>
    </li>

        <li>
        <a href="~/Products.aspx">
            <img src="/Images/mug.jpg" style="height: 165px; width: 178px">
            <h4>Unicorn Mug</h4>
            <p>$20.00 &ensp; <asp:Button ID="Button1" runat="server" Text="Add to Cart" />
            </p>
        </a>
    </li>

    <li>
        <a href="~/Products.axspx">
            <img src="/Images/logo2.jpg" style="height: 165px; width: 178px">
            <h4>Unicorn Mug</h4>
            <p>$20.00</p>
        </a>
    </li>
</ul>

    <ul class="items">
    <li>
        <a href="~/Products.axspx">
            <img src="/Images/mug.jpg" style="height: 165px; width: 178px">
            <h4>Unicorn Mug</h4>
            <p>$20.00</p>
        </a>
    </li>

    <li>
        <a href="~/Products.axspx">
            <img src="/Images/mug.jpg" style="height: 165px; width: 178px">
            <h4>Unicorn Mug</h4>
            <p>$20.00</p>
        </a>
    </li>

        <li>
        <a href="~/Products.axspx">
            <img src="/Images/mug.jpg" style="height: 165px; width: 178px">
            <h4>Unicorn Mug</h4>
            <p>$20.00</p>
        </a>
    </li>

    <li>
        <a href="~/Products.axspx">
            <img src="/Images/mug.jpg" style="height: 165px; width: 178px">
            <h4>Unicorn Mug</h4>
            <p>$20.00</p>
        </a>
    </li>
</ul>

    </form>

</asp:Content>