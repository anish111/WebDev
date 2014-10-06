<%@ Page Title="Player Profile" Language="C#" MasterPageFile="~/Project Documentation/storyfiles/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" Runat="Server">

    Player Profile Tab
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Details" Runat="Server">


     <strong>Description:<br />
     </strong><br />
    In this page the user can select any player from the drop-down box to display the information about that player.
    As this data was available from any API I took Prof. Rasala's suggestion to create local files with all the
    information stored in them and them retrieve it as and when required. I used XML files to store all the information about
    the players. This page has following parts:
    
    <br />
     <br />
     1. Drop-down box which lists all the player's information which is available. There are only a limited number of players
        as I had to manually input all the information.
     <br />
     <br />
     2. On Selecting any player its information gets displayed which includes name, current ranking, short description ,achievements
      and their merchandise link.All this information is retrieved from local XML file.
     <br />
     <br />
     3. The latest updates information which shows the latest news about that player. I have used ESPN API to get player specfic
       information.   
       <br />
    <br />
    &nbsp;<strong>Here's a Snapshot of it: </strong>
    <br/>
    <img id="image" src="../images/playerprofile.jpg" /><br />
    <br />
    <strong>Implementation:</strong> 
    Implementing this page was quite a challenge and I learned a lot doing this. I have used C#,javacsript,XML etc to develop this.
    <ul>
        <li>Initially when a user name is selected a request is made to retrieve the XML file which contains all the information of
            the players. I have made only one XML file for all the players. 
        </li>
        <li>Then the XML file is parsed to get the information about the player being selected.</li>
        <li>After this I have also used jquery to call ESPN API to get player specific information.</li>
        <li>All the processing is handled within an AJAX call and this it prevents reloading of the entire page every time a new player
            is selected.
        </li>
    </ul>

</asp:Content>

