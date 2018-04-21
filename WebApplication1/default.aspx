<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Unicorn Store
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="/Images/logo2.jpg" alt="logo" style="width: 881px; height: 200px"></asp:Image>Unicorn Store
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    FEATURE ITEMS
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <form id="form1" runat="server">

        <asp:Repeater ID="ProdList" runat="server" DataSourceID="SqlDataSource">
        <HeaderTemplate><ul></HeaderTemplate>

        <ItemTemplate>

            <ul class ="repeater">
            <li>
                <img src="Images/<%#Eval("Prod_Id")%>.jpg"/><br />
                <a href="<%#Eval("Prod_Id","Products.aspx?Id={0}")%>"><%#Eval("Prod_Name") %>
                </a>
                <p><b>Name</b><%#Eval("Prod_Name")%></p>
                <p><b>Price</b><%#Eval("Price")%></p>

        
            </li>
            </ul>
        </ItemTemplate>
        
        <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625154_co5027_asgaConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
    
    </form>

</asp:Content>