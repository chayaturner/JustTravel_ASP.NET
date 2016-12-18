<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="About_Contact" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="uc1" TagName="ContactForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <uc1:ContactForm runat="server" id="ContactForm" />
</asp:Content>

