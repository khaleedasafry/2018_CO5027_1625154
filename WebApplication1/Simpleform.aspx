<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Simpleform.aspx.cs" Inherits="WebApplication1.Simpleform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome</h1>
            <p>
                what is your name?
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </p>
            <p>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </p>
        </div>
    </form>
</body>
</html>
