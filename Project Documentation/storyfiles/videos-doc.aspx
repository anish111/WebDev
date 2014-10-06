<%@ Page Title="Videos" Language="C#" MasterPageFile="~/Project Documentation/storyfiles/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" Runat="Server">

    Videos Tab
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Details" Runat="Server">

      <strong>Description:<br />
     </strong><br />
    To make my website more fun to browse I have added popular videos related to tennis. The users can browse through
    videos related to four major tournaments of tennis called the GrandSlams. 
    
      <br />
      Initailly when the page gets loaded I have displayed random popular videos.
    Thereafter users can click on any of the four buttons to get popular videos related to that tournament.
    I have used youtube api to get links of all the videos.<br />
&nbsp;
     <strong>
      <br />
      Here's a Snapshot of it: </strong>
    <br/>
    <img id="image" src="../images/videos.jpg" /><br />
    <br />

    <strong>Implementation:</strong> 
    <ul>
        <li>I have used youtube api to get the information for all the videos displayed.</li>
        <li>Whenever the user clicks on a button an AJAX call is made to the API which returns a JSON file</li>
        <li>Then I parse it to get the required information. As it makes an ajax call only the videos part of the page gets
            reloaded.
        </li>
        </ul>
</asp:Content>

