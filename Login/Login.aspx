<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Login" %>

<%@ Register Src="~/Controls/LoginForm.ascx" TagPrefix="uc1" TagName="LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <uc1:LoginForm runat="server" ID="LoginForm" />
</asp:Content>

