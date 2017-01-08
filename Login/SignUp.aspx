<%@ Page Title="Sign Up for a New Account" Language="C#" MasterPageFile="~/masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Login_SignUp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <p>Sign Up!</p>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Password: "></asp:Label>
    <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter password" ControlToValidate="PasswordTextBox" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="First Name: "></asp:Label>
    <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter first name" ControlToValidate="FirstNameTextBox" CssClass=".ErrorMessage" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Last Name: "></asp:Label>
    <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter last name" ControlToValidate="LastNameTextBox" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter email" ControlToValidate="EmailTextBox" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    <br />
    <!--
    <asp:Label ID="Label6" runat="server" Text="Location: "></asp:Label>
    <asp:DropDownList ID="StateDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateName">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JustTravel %>" SelectCommand="SELECT [StateName] FROM [Location]"></asp:SqlDataSource>
    <br />
    -->
    <asp:RadioButtonList ID="TravelFreqTextBox" runat="server">
        <asp:ListItem Text="Often" Value="Often" />
        <asp:ListItem Text="Average" Value="Average" />
        <asp:ListItem Text="Not Often" Value="Not Often" />
    </asp:RadioButtonList>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Sign Up!" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="InputLabel" runat="server" Text="."></asp:Label>


    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />


</asp:Content>
