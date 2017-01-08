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
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" CancelSelectOnNullParameter="false" ConnectionString="<%$ ConnectionStrings:JustTravel %>" DeleteCommand="DELETE FROM [Activity] WHERE [ActivityID] = @ActivityID" InsertCommand="INSERT INTO [Activity] ([ActivityName], [Description], [Rating], [DateCreated]) VALUES (@ActivityName, @Description, @Rating, @DateCreated)" SelectCommand="SELECT [ActivityName], [Description], [Rating], [DateCreated], [ActivityID] FROM [Activity] WHERE ([ActivityName] like '%'+ @ActivityName + '%')" UpdateCommand="UPDATE [Activity] SET [ActivityName] = @ActivityName, [Description] = @Description, [Rating] = @Rating, [DateCreated] = @DateCreated WHERE [ActivityID] = @ActivityID">
       <DeleteParameters>
            <asp:Parameter Name="ActivityID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ActivityName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Rating" Type="Int32" />
            <asp:Parameter Name="DateCreated" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="SearchTextBox" Name="ActivityName" PropertyName="Text" Type="String"  DefaultValue="%" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ActivityName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Rating" Type="Int32" />
            <asp:Parameter Name="DateCreated" Type="DateTime" />
            <asp:Parameter Name="ActivityID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:TextBox ID="SearchTextBox" runat="server" OnTextChanged="SearchTextBox_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="SearchButton" runat="server" OnClick="SearchButton_Click" Text="Search for Activity" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ActivityID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="GridView_RowEditing">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ActivityID" HeaderText="Activity" InsertVisible="False" ReadOnly="True" SortExpression="ActivityID" />
            <asp:BoundField DataField="ActivityName" HeaderText="Name" SortExpression="ActivityName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />
    <asp:Label ID="ResultsLabel" runat="server" Text=""></asp:Label>
    <br />
    <br />
    </asp:Content>

