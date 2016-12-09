<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="FormPage.aspx.cs" Inherits="Forms_FormPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Questions, comments, feedback? Send us mail!!</h1>
    Name: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    Email: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
    <br />
    What would you like to tell us?<br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Send" />
</asp:Content>

