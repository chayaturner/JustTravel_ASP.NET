<%@ Page Title="JusTTravel - Management" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <h1>JusTTravel Management Section</h1>
    <p>Welcome to the management section of JusTTravel web site. </p>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="LocationID" HeaderText="LocationID" SortExpression="LocationID" />
            <asp:BoundField DataField="TravelFreq" HeaderText="TravelFreq" SortExpression="TravelFreq" />
            <asp:BoundField DataField="UserTypeID" HeaderText="UserTypeID" SortExpression="UserTypeID" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#1C5E55" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />

    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="3" DataKeyNames="UserID" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" Width="125px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <EditRowStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="LocationID" HeaderText="LocationID" SortExpression="LocationID" />
            <asp:BoundField DataField="TravelFreq" HeaderText="TravelFreq" SortExpression="TravelFreq" />
            <asp:BoundField DataField="UserTypeID" HeaderText="UserTypeID" SortExpression="UserTypeID" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#1C5E55" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#1C5E55" HorizontalAlign="Left" />
        <RowStyle ForeColor="#1C5E55" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:JustTravel %>" SelectCommand="SELECT [Password], [UserID], [FirstName], [LastName], [Email], [LocationID], [TravelFreq], [UserTypeID] FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [User] ([Password], [FirstName], [LastName], [Email], [LocationID], [TravelFreq], [UserTypeID]) VALUES (@Password, @FirstName, @LastName, @Email, @LocationID, @TravelFreq, @UserTypeID)" UpdateCommand="UPDATE [User] SET [Password] = @Password, [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [LocationID] = @LocationID, [TravelFreq] = @TravelFreq, [UserTypeID] = @UserTypeID WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="LocationID" Type="Int32" />
            <asp:Parameter Name="TravelFreq" Type="String" />
            <asp:Parameter Name="UserTypeID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="LocationID" Type="Int32" />
            <asp:Parameter Name="TravelFreq" Type="String" />
            <asp:Parameter Name="UserTypeID" Type="Int32" />
            <asp:Parameter Name="UserID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

