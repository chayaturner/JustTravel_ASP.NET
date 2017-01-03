<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="SearchActivities.aspx.cs" Inherits="Activities_SearchActivities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #TextArea1 {
            height: 239px;
            width: 443px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>Search Activities by name:</p>
    <asp:TextBox ID="SearchTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="SearchButton" runat="server" OnClick="SearchButton_Click" Text="Search for Activity" />
    <br />
    <asp:Label ID="NameResultsLabel" runat="server"></asp:Label> <br />
    <asp:Label ID="DescriptionResultsLabel" runat="server"></asp:Label><br />
    <asp:Label ID="RatingResultsLabel" runat="server"></asp:Label><br />
    <asp:Label ID="DateResultsLabel" runat="server"></asp:Label>
    <br />
    </asp:Content>

