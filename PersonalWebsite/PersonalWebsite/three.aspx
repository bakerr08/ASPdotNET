<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="three.aspx.cs" Inherits="PersonalWebsite.three" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Page 3</h1>
<p>
    <asp:Label ID="lblUser" runat="server" Text="Customer name"></asp:Label>
</p>
<p>
    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btnGetCustomer" runat="server" OnClick="btnGetCustomer_Click" Text="Get Customer" />
</p>
<p>&nbsp;</p>
</asp:Content>
