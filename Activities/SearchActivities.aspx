<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="SearchActivities.aspx.cs" Inherits="Activities_SearchActivities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>Search Activities:</p>
    <br /><br />
    <asp:DropDownList ID="SearchDropDownList" runat="server">
        <asp:ListItem>Search by Name</asp:ListItem>
        <asp:ListItem>Search by Location</asp:ListItem>
    </asp:DropDownList>
    <br /><br />
    <asp:TextBox ID="SearchTextBox" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Button ID="SearchButton" runat="server" Text="Search" />
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField HeaderText="Activity Name" />
            <asp:BoundField HeaderText="Description" />
            <asp:BoundField HeaderText="State" />
            <asp:BoundField HeaderText="Address" />
            <asp:BoundField HeaderText="Contact" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>

