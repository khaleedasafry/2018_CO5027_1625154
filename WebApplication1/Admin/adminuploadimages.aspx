<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminuploadimages.aspx.cs" Inherits="WebApplication1.Admin.adminuploadimages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Admin Upload Page</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Upload Product Image Page</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <p>
        <asp:FileUpload ID="FileUploadImage" runat="server" />
        </p>
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:Image ID="currentimage" runat="server" Height="245px" Width="333px" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
