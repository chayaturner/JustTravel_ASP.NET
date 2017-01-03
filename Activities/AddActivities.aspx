<%@ Page Title="Add Activity" Language="C#" MasterPageFile="~/masterpages/MasterPage.master" AutoEventWireup="true" CodeFile="AddActivities.aspx.cs" Inherits="Activities_AddActivities" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1> Add Activity: </h1>
    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Description:"></asp:Label>
    <asp:TextBox ID="DescriptionTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Rating:"></asp:Label>
    <asp:DropDownList ID="RatingDropDownList" runat="server" DataSourceID="SqlDataSource2" DataTextField="Rating" DataValueField="Rating">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JustTravel %>" SelectCommand="SELECT [Rating] FROM [Activity]"></asp:SqlDataSource>
    <br />
    <br />
    <p>Address:</p>
    <asp:Label ID="Label9" runat="server" Text="Street:"></asp:Label>
    <asp:TextBox ID="StreetTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label10" runat="server" Text="City:"></asp:Label>
    <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="State Name:"></asp:Label>
    <asp:DropDownList ID="StateDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateName">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JustTravel %>" SelectCommand="SELECT [StateName] FROM [Location]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label11" runat="server" Text="Zip:"></asp:Label>
    <asp:TextBox ID="ZipTextBox" runat="server"></asp:TextBox>
    <br /><br />
    <p>Contact Info:</p>
    <asp:Label ID="Label13" runat="server" Text="Contact Name:"></asp:Label>
    <asp:TextBox ID="ContactNameTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label14" runat="server" Text="Contact E-mail:"></asp:Label>
    <asp:TextBox ID="ContactEmailTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label15" runat="server" Text="Contact Phone:"></asp:Label>
    <asp:TextBox ID="ContactPhoneTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label16" runat="server" Text="Other Contact Info:"></asp:Label>
    <asp:TextBox ID="OtherInfoTextBox" runat="server"></asp:TextBox>
    <br />
<p> 
    <asp:Button ID="AddButton" runat="server" Text="Add Activity" OnClick="Button1_Click" />
    </p>
    <br />
    <asp:Label ID="DisplayLabel" runat="server"></asp:Label>
</asp:Content>

