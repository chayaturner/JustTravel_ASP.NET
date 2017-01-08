<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<%@ Register Src="~/Controls/LoginForm.ascx" TagPrefix="uc1" TagName="LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <uc1:LoginForm runat="server" ID="LoginForm" />
    <asp:Label ID="logoutlabel" runat="server" Text="You are logged in already. To log into another account, click on the logout button."></asp:Label>
    <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
</asp:Content>

