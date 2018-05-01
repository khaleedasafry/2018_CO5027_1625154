<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication1.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Products</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="/Images/logo2.jpg" alt="logo" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Product Description</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">


    <form id="form1" runat="server" style="height: 500px">

        
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Prod_Id" DataSourceID="SqlDataSource">
         
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
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Img" runat="server"  height="300" width="300" ImageUrl='<%#"~/ProductImage/" + Eval("prod_Id")+ ".jpg"%>'/>
                <br />
                Prod_Id:
                <asp:Label ID="Prod_IdLabel" runat="server" Text='<%# Eval("Prod_Id") %>' />
                <br />
                Prod_Name:
                <asp:Label ID="Prod_NameLabel" runat="server" Text='<%# Bind("Prod_Name") %>' />
                <br />
                Prod_Desc:
                <asp:Label ID="Prod_DescLabel" runat="server" Text='<%# Bind("Prod_Desc") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />

            </ItemTemplate>

        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1625154_co5027_asgaConnectionString %>" SelectCommand="SELECT [Prod_Id], [Prod_Name], [Prod_Desc], [Price] FROM [tblProduct] WHERE ([Prod_Id] = @Prod_Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Prod_Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
       <p><asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label> <asp:DropDownList ID="quantitylist" runat="server" Height="22px" Width="42px">
           <asp:ListItem>1</asp:ListItem>
           <asp:ListItem>2</asp:ListItem>
           <asp:ListItem>3</asp:ListItem>
           <asp:ListItem>4</asp:ListItem>
           <asp:ListItem>5</asp:ListItem>
           </asp:DropDownList></p>
        <p>
            <asp:ImageButton ID="shopnowbtn" runat="server" Height="39px" ImageUrl="~/Images/BUY-NOW-BUTTON.png" OnClick="ImageButton1_Click" Width="110px" />
        </p>
    </form>


</asp:Content>