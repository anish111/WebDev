<%@ Page Title="Live Scores" Language="C#" MasterPageFile="~/Project Documentation/storyfiles/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" Runat="Server">
    Live Scores Tab
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Details" Runat="Server">

    <strong>Description:</strong><br />

    This page shows the live scores of all tournaments that are ongoing. This information is courtesy ScoresPro.com.
    Being a Tennis fan myself I know that everyone likes to keep the track of scores of live/recent matches. This is
    the reason I decided to add this information to my website. 
    <br />
    <br />
    In this it shows the following three things:

    <br />
    <br />
&nbsp; 1. Scores of all the live matches going on.<br />
&nbsp;
    2. Scores of all the recently completed matches.
    <br />
&nbsp; 3. Updates about the schedule of upcoming matches.
    <br />
    <br />
&nbsp;<strong>Here's a Snapshot of it: </strong>
    <br/>
    <img id="image" src="../images/livescores.jpg" /><br />
    <br />
    <strong>Implementation:</strong> 

    <ul><li> As I was not getting this information from any API, I used the Iframe link provided 
        by ScoresPro.com to get this information.</li>
        <li> After getting the data I only had to change the styling of the elements to match my website's design.</li>
        </ul>

</asp:Content>

