<%@ Page Title="Sign Up for a New Account" Language="C#" MasterPageFile="~/masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Login_SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>Sign Up!</p>
    <br /><br />
    <asp:Label ID="Label3" runat="server" Text="Password: "></asp:Label>
    <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="First Name: "></asp:Label>
    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
    <br />
     <asp:Label ID="Label1" runat="server" Text="Last Name: "></asp:Label>
    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
    <br />
    <!--
    <asp:Label ID="Label6" runat="server" Text="Location: "></asp:Label>
    <asp:DropDownList ID="StateDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateName">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JustTravel %>" SelectCommand="SELECT [StateName] FROM [Location]"></asp:SqlDataSource>
    <br />
    -->
    <asp:Label ID="Label8" runat="server" Text="How often do you travel? Choose: Often, Not Often, or Average: "></asp:Label>
     <asp:TextBox ID="TravelFreqTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Sign Up!" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="InputLabel" runat="server" Text="."></asp:Label>


</asp:Content>
