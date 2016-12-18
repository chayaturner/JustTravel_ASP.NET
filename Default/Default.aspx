<%@ Page Title="JusTTravel" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">

    <h1>Welcome!! Website coming soon!!</h1>
    <h2>Features to look out for:
    <a href="#">Create</a>,
    <a href="#">Search</a>, and 
    <a href="#">Save</a> activities!</h2>

    <p>Where would you like to go next?</p>
    <br />

    <div>
        <ul class="rslides">
            <li>
                <img src="../Images/slideshow/1.jpg" alt="" /></li>
            <li>
                <img src="../Images/slideshow/2.jpg" alt="" /></li>
            <li>
                <img src="../Images/slideshow/3.jpg" alt="" /></li>
            <li>
                <img src="../Images/slideshow/4.jpg" alt="" /></li>
            <li>
                <img src="../Images/slideshow/5.jpg" alt="" /></li>
            <li>
                <img src="../Images/slideshow/6.jpg" alt="" /></li>
            <li>
                <img src="../Images/slideshow/7.jpg" alt="" /></li>
            <li>
                <img src="../Images/slideshow/8.jpg" alt="" /></li>
        </ul>
        <br />
    </div>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="/Scripts/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $(".rslides").responsiveSlides();
        });
    </script>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <h1>The BEST place to travel!!!!</h1>

</asp:Content>
