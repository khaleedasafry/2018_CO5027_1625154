<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminadd.aspx.cs" Inherits="WebApplication1.Admin.adminadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Admin Add Page</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="/Images/logo2.jpg" alt="logo" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Add Product Page</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
    
    
    
    
    
    
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Prod_Id" DataSourceID="SqlDataSource" DefaultMode="Insert">
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
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1625154_co5027_asgaConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [Prod_Id] = @original_Prod_Id AND (([Prod_Name] = @original_Prod_Name) OR ([Prod_Name] IS NULL AND @original_Prod_Name IS NULL)) AND (([Prod_Desc] = @original_Prod_Desc) OR ([Prod_Desc] IS NULL AND @original_Prod_Desc IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([Prod_Id], [Prod_Name], [Prod_Desc]) VALUES (@Prod_Id, @Prod_Name, @Prod_Desc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [Prod_Name] = @Prod_Name, [Prod_Desc] = @Prod_Desc WHERE [Prod_Id] = @original_Prod_Id AND (([Prod_Name] = @original_Prod_Name) OR ([Prod_Name] IS NULL AND @original_Prod_Name IS NULL)) AND (([Prod_Desc] = @original_Prod_Desc) OR ([Prod_Desc] IS NULL AND @original_Prod_Desc IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Prod_Id" Type="Int32" />
                <asp:Parameter Name="original_Prod_Name" Type="String" />
                <asp:Parameter Name="original_Prod_Desc" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Prod_Id" Type="Int32" />
                <asp:Parameter Name="Prod_Name" Type="String" />
                <asp:Parameter Name="Prod_Desc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Prod_Name" Type="String" />
                <asp:Parameter Name="Prod_Desc" Type="String" />
                <asp:Parameter Name="original_Prod_Id" Type="Int32" />
                <asp:Parameter Name="original_Prod_Name" Type="String" />
                <asp:Parameter Name="original_Prod_Desc" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    
    
    
    
    
    
    </form>
    </asp:Content>

