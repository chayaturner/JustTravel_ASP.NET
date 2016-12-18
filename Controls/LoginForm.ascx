<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginForm.ascx.cs" Inherits="Controls_LoginForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }

    .ErrorMessage {
        color: Red;
    }
    .auto-style3 {
        height: 31px;
    }
</style>

<table class="auto-style1" runat="server" id="EmailTable">
    <tr>
        <td colspan="3">
            <h2>Login to your account:</h2>
        </td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="LoginEmail" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="LoginEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LoginEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your email">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Password:</td>
        <td>
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your password">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style3">
            <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" />
        </td>
    </tr>
</table>
<asp:Label ID="EmailMessage" runat="server" Text="Logged In" Visible="false" />

