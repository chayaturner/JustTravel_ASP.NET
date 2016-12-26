<%@ Page Title="Administrator Login" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Administrator_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:Login ID="AdminLogin" runat="server" DestinationPageUrl="~/Administrator/Default.aspx">
            </asp:Login>
        </AnonymousTemplate>
        <RoleGroups>
            <asp:RoleGroup Roles="Administrator">
            </asp:RoleGroup>
        </RoleGroups>
    </asp:LoginView>
</asp:Content>

