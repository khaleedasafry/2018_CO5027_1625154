﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Unicorn Store
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="~/Images/logo2.jpg" style="width: 881px; height: 200px"></asp:Image>Unicorn Store
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    FEATURE ITEMS
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
        <link href="~/css/Styles.css" rel="stylesheet" type="text/css">
    <style type="text/css">

       .repeater ul li {
    height: 500px;
    margin-top: 40px;
}

.repeater li {
    display: inline-block;
    float: left;
    width: 24%;
}

.repeater ul li a {
    text-decoration: none;
    color: white;
    font-size: 50px;
}

    .repeater ul li a p {
        text-align: center;
    }

    </style>

    <form id="form1" runat="server">

        <asp:Repeater ID="ProdList" runat="server" DataSourceID="SqlDataSource">
        <HeaderTemplate><ul></HeaderTemplate>

        <ItemTemplate>

            <ul class="repeater">
           
            <li>
                <p><asp:Image ID="Img" runat="server" width="200" height="200" ImageUrl='<%#"~/Productimage/" + Eval("prod_Id")+ ".jpg"%>' AlternateText='<%#Eval("Prod_Name")%>' ToolTip='<%#Eval("Prod_Name") %>'/></p>
                <p><b>Name</b><a href="<%#Eval("Prod_Id","Products.aspx?Id={0}")%>"><%#Eval("Prod_Name") %></a></p>
                <p><b>Available Qty</b><%#Eval("Quantity")%></p>
                <p><b>Price</b><%#Eval("Price")%></p>
            </li>
            
            </ul>
        </ItemTemplate>
        
        <FooterTemplate></ul></FooterTemplate>

        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625154_co5027_asgaConnectionString %>" SelectCommand="SELECT Prod_Id, Prod_Name, Prod_Desc, Quantity, Price FROM tblProduct WHERE (Quantity &gt; 0)">
        </asp:SqlDataSource>
    
    </form>

</asp:Content>