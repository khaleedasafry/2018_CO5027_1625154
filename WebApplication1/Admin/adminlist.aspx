<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminlist.aspx.cs" Inherits="WebApplication1.Admin.adminlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Admin List Page</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="/Images/logo2.jpg" alt="logo" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    List of Products</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">














    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource">
            <Columns>
                <asp:BoundField DataField="Prod_Desc" HeaderText="Prod_Desc" SortExpression="Prod_Desc" />
                <asp:BoundField DataField="Prod_Name" HeaderText="Prod_Name" SortExpression="Prod_Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625154_co5027_asgaConnectionString %>" SelectCommand="SELECT [Prod_Desc], [Prod_Name] FROM [tblProd]"></asp:SqlDataSource>
    </form>














</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
