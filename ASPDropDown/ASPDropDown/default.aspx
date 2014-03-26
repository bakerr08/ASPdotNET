<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ASPDropDown._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1><asp:Label ID="lblMessage" runat="server" Text="DropDown Demo"></asp:Label></h1>
        <br />
        <asp:DropDownList ID="ddList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddList_SelectedIndexChanged">
            <asp:ListItem Value="1">Red</asp:ListItem>
            <asp:ListItem Value="2">Green</asp:ListItem>
            <asp:ListItem Value="3">Blue</asp:ListItem>
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>
