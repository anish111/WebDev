<%@ Page Title="" Language="C#" MasterPageFile="~/Project Documentation/storyfiles/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" Runat="Server">
    Master Page Design
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Details" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/masterpage.css" />

    A Masterpage is very convienient way to maintain same design across multiple pages of a website.
    Most website have few things common on each page so a single master page can be very helpful.
    In my website also I have devloped a single page called MasterPage.master and placed various asp:Contectplaceholder
    to add content to it. Other advantage include changing links within the website becomes quite easy as it needs to be updated
    only in one place.
    <br />
    <br/>
    In my website I have defined three main elements.
    <br />
    <br/>
    <strong>1. Header content:</strong>
     <br/>
     &nbsp;&nbsp;&nbsp;
     This contains the logo of my website and has a different background.
    <br />
    <br/>
   <strong> 2. Main Content </strong>
    <br/>
     &nbsp;&nbsp;&nbsp;
     In this I have included the navigation bar and also the dynamic content of each page goes here. This portion also&nbsp; has a different background.
    <br />
    <br/>
    <strong> 3. Footer content </strong>
    <br/>
     &nbsp;&nbsp;
     In this I have add the copyright sentence with a background of itself to set it apart from the rest of page.<br />
    <br />
    <br />
    <br />
&nbsp;

    Here's a Snapshot of my Masterpage:
    <br/>
    <img id="image" src="../images/masterpage.jpg" />

</asp:Content>

