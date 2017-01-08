<%@ Page Title="Administrator Login" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Administrator_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:Login ID="AdminLogin" runat="server" DestinationPageUrl="~/Administrator/Default.aspx">
            </asp:Login>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <!-- button for viewing users only appears when admin is logged in -->
            <asp:Button ID="Button1" runat="server" Text="Admin: View Users" OnClick="Button1_Click" />
        </LoggedInTemplate>
        <RoleGroups>
            <asp:RoleGroup Roles="Administrator">
            </asp:RoleGroup>
        </RoleGroups>
    </asp:LoginView>

    <br />

    
</asp:Content>

