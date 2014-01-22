<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="prjHelloWorld._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblHello" runat="server" Text="Hello World"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnBye" runat="server" OnClick="btnBye_Click" Text="Goodbye World" />
        <br />
        <br />
        <asp:Label ID="lblStuff" runat="server" Text="Stuff"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnRun" runat="server" OnClick="btnRun_Click" Text="Run" />
        <br />
    
    </div>
    </form>
</body>
</html>
