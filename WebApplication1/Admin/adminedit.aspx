<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminedit.aspx.cs" Inherits="WebApplication1.Admin.adminedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Admin Edit Page</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
   <asp:Image ID="imgMain" runat="server"  ImageUrl="~/Images/logo2.jpg" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Edit Product Page</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource" DataKeyNames="Prod_Id" DefaultMode="Edit">
            <EditItemTemplate>
                Prod_Id:
                <asp:Label ID="Prod_IdLabel1" runat="server" Text='<%# Eval("Prod_Id") %>' />
                <br />
                Prod_Name:
                <asp:TextBox ID="Prod_NameTextBox" runat="server" Text='<%# Bind("Prod_Name") %>' />
                <br />
                Prod_Desc:
                <asp:TextBox ID="Prod_DescTextBox" runat="server" Text='<%# Bind("Prod_Desc") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Prod_Id:
                <asp:TextBox ID="Prod_IdTextBox" runat="server" Text='<%# Bind("Prod_Id") %>' />
                <br />
                Prod_Name:
                <asp:TextBox ID="Prod_NameTextBox" runat="server" Text='<%# Bind("Prod_Name") %>' />
                <br />
                Prod_Desc:
                <asp:TextBox ID="Prod_DescTextBox" runat="server" Text='<%# Bind("Prod_Desc") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Prod_Id:
                <asp:Label ID="Prod_IdLabel" runat="server" Text='<%# Eval("Prod_Id") %>' />
                <br />
                Prod_Name:
                <asp:Label ID="Prod_NameLabel" runat="server" Text='<%# Bind("Prod_Name") %>' />
                <br />
                Prod_Desc:
                <asp:Label ID="Prod_DescLabel" runat="server" Text='<%# Bind("Prod_Desc") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1625154_co5027_asgaConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [Prod_Id] = @original_Prod_Id AND (([Prod_Name] = @original_Prod_Name) OR ([Prod_Name] IS NULL AND @original_Prod_Name IS NULL)) AND (([Prod_Desc] = @original_Prod_Desc) OR ([Prod_Desc] IS NULL AND @original_Prod_Desc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([Prod_Id], [Prod_Name], [Prod_Desc], [Quantity], [Price]) VALUES (@Prod_Id, @Prod_Name, @Prod_Desc, @Quantity, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct] WHERE ([Prod_Id] = @Prod_Id)" UpdateCommand="UPDATE [tblProduct] SET [Prod_Name] = @Prod_Name, [Prod_Desc] = @Prod_Desc, [Quantity] = @Quantity, [Price] = @Price WHERE [Prod_Id] = @original_Prod_Id AND (([Prod_Name] = @original_Prod_Name) OR ([Prod_Name] IS NULL AND @original_Prod_Name IS NULL)) AND (([Prod_Desc] = @original_Prod_Desc) OR ([Prod_Desc] IS NULL AND @original_Prod_Desc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="Prod_Id" QueryStringField="Prod_Id" Type="Int32" />
            </SelectParameters>
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
    <a href="~/Admin/index.aspx" runat="server">BACK</a>
</asp:Content>

