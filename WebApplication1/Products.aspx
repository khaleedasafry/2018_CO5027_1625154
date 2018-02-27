<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication1.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Products</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading" runat="server">
    <asp:Image ID="imgMain" runat="server"  ImageUrl="/Images/logo2.jpg" alt="logo" style="width: 881px; height: 200px" />Unicorn Store</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Product Description</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    
    <form id="form2" runat="server">   
    <ul class="items">
    <li>
        <a href="Products.aspx">
            <img src="/Images/purse.jpg" alt="item1" style="height: 165px; width: 178px"/>
            <h4>Unicorn Purse</h4>
            <p>$20.00<asp:Button ID="Button12" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>

    <li>
        <a href="Products.aspx">
            <img src="/Images/purse2.jpg" alt="item2" style="height: 165px; width: 178px">
            <h4>Unicorn Purse</h4>
            <p>$20.00<asp:Button ID="Button11" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>

        <li>
        <a href="Products.aspx">
            <img src="/Images/purse3.jpg" alt="item3" style="height: 165px; width: 178px">
            <h4>Unicorn Purse</h4>
            <p>$20.00<asp:Button ID="Button1" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>      
        </a>
    </li>

    <li>
        <a href="Products.aspx">
            <img src="/Images/purse4.jpg" alt="item4" style="height: 165px; width: 178px">
            <h4>Unicorn Purse</h4>
            <p>$20.00<asp:Button ID="Button2" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>
</ul>

    <ul class="items">
    <li>
        <a href="Products.aspx">
            <img src="/Images/mug.jpg" alt="item5" style="height: 165px; width: 178px">
            <h4>Unicorn Mug</h4>
            <p>$20.00<asp:Button ID="Button3" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>

    <li>
        <a href="Products.aspx">
            <img src="/Images/mug2.jpg" alt="item6" style="height: 165px; width: 178px">
            <h4>Unicorn Mug</h4>
            <p>$20.00<asp:Button ID="Button4" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>

        <li>
        <a href="Products.aspx">
            <img src="/Images/mug3.png" alt="item7" style="height: 165px; width: 200px">
            <h4>Unicorn Mug</h4>
            <p>$20.00<asp:Button ID="Button5" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>

    <li>
        <a href="Products.aspx">
            <img src="/Images/mug4.png" alt="item8" style="height: 165px; width: 197px">
            <h4>Unicorn Mug</h4>
            <p>$20.00<asp:Button ID="Button6" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>

            <ul class="items">
    <li>
        <a href="Products.aspx">
            <img src="/Images/lights.jpg" alt="item5" style="height: 165px; width: 178px">
            <h4>Unicorn Lights</h4>
            <p>$20.00<asp:Button ID="Button7" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>

    <li>
        <a href="Products.aspx">
            <img src="/Images/lights3.jpg" alt="item6" style="height: 165px; width: 178px">
            <h4>Unicorn Lights</h4>
            <p>$20.00<asp:Button ID="Button8" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>

        <li>
        <a href="Products.aspx">
            <img src="/Images/light3.gif" alt="item7" style="height: 165px; width: 200px">
            <h4>Unicorn Lights</h4>
            <p>$20.00<asp:Button ID="Button9" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>

    <li>
        <a href="Products.aspx">
            <img src="/Images/lights4.jpg" alt="item8" style="height: 165px; width: 197px">
            <h4>Unicorn Lights</h4>
            <p>$20.00<asp:Button ID="Button10" runat="server" Text="Add to Cart" BackColor="White" ForeColor="#CC99FF" Width="75px" ></asp:Button></p>
        </a>
    </li>
</ul>
        </form>
</asp:Content>