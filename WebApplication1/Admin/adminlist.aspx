<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminlist.aspx.cs" Inherits="WebApplication1.Admin.adminlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Admin List Page</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="/Images/logo2.jpg" alt="logo" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    List of Products</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">



    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Prod_Id" DataSourceID="SqlDataSource" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="808px">
            <Columns>
                <asp:BoundField DataField="Prod_Id" HeaderText="Prod_Id" ReadOnly="True" SortExpression="Prod_Id" />
                <asp:BoundField DataField="Prod_Name" HeaderText="Prod_Name" SortExpression="Prod_Name" />
                <asp:BoundField DataField="Prod_Desc" HeaderText="Prod_Desc" SortExpression="Prod_Desc" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:HyperLinkField DataNavigateUrlFields="Prod_Id" DataNavigateUrlFormatString="adminedit.aspx?Prod_Id={0}" HeaderText="Edit" Text="Edit" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:HyperLinkField HeaderText="Upload Image" NavigateUrl="adminuploadimages.aspx?Prod_Id={0}" Text="upload image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1625154_co5027_asgaConnectionString2 %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [Prod_Id] = @original_Prod_Id AND (([Prod_Name] = @original_Prod_Name) OR ([Prod_Name] IS NULL AND @original_Prod_Name IS NULL)) AND (([Prod_Desc] = @original_Prod_Desc) OR ([Prod_Desc] IS NULL AND @original_Prod_Desc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([Prod_Id], [Prod_Name], [Prod_Desc], [Quantity], [Price]) VALUES (@Prod_Id, @Prod_Name, @Prod_Desc, @Quantity, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [Prod_Name] = @Prod_Name, [Prod_Desc] = @Prod_Desc, [Quantity] = @Quantity, [Price] = @Price WHERE [Prod_Id] = @original_Prod_Id AND (([Prod_Name] = @original_Prod_Name) OR ([Prod_Name] IS NULL AND @original_Prod_Name IS NULL)) AND (([Prod_Desc] = @original_Prod_Desc) OR ([Prod_Desc] IS NULL AND @original_Prod_Desc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Prod_Id" Type="Int32" />
                <asp:Parameter Name="original_Prod_Name" Type="String" />
                <asp:Parameter Name="original_Prod_Desc" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Prod_Id" Type="Int32" />
                <asp:Parameter Name="Prod_Name" Type="String" />
                <asp:Parameter Name="Prod_Desc" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Prod_Name" Type="String" />
                <asp:Parameter Name="Prod_Desc" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="original_Prod_Id" Type="Int32" />
                <asp:Parameter Name="original_Prod_Name" Type="String" />
                <asp:Parameter Name="original_Prod_Desc" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>



</asp:Content>

