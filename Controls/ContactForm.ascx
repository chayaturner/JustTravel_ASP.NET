<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }

    .ErrorMessage {
        color: Red;
    }

    .auto-style2 {
        height: 26px;
    }
</style>

<h1>Get in touch with us!</h1>

<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3">
            <h4>Use the form below to get in touch with us. Enter your name, e-mail address, and your home or business phone number to get in touch with us.</h4>
        </td>
    </tr>
    <tr>
        <td>Name</td>
        <td>
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>E-mail Address</td>
        <td>
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an e-mail address">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Repeat E-mail Address</td>
        <td>
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm the e-mail address">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="The e-mail addresses don't match">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Home Phone Number</td>
        <td>
            <asp:TextBox ID="PhoneHome" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Business Phone Number</td>
        <td>
            <asp:TextBox ID="PhoneBusiness" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Comments</td>
        <td>
            <asp:TextBox ID="Comments" runat="server" Height="66px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" />
        </td>
    </tr>
</table>
<asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false" />

