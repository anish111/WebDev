<%@ Page Title="Latest News" Language="C#" MasterPageFile="~/Project Documentation/storyfiles/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" Runat="Server">
    Latest News Tab
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Details" Runat="Server">
    
    <strong>Description:</strong><br />
    
    This page is an important part of my project. It show the latest top 10 news from the world of tennis.
    I have used the ESPN API to get the news. 
    <br />
    <br />
    To display the news I desgined an accordian menu where in, initially
    only the main headlines get displayed and then if the user finds any news interesting they can click on it to get more
    details.On expanding it shows more information about the news along with an image. I have designed it in a way where at one time only one news can be opened.<br />
    <br />
    The advantage of this is that all the news can be shown in a compact way and the reader can decide which news
    they want to know more about.
    <br />
    <br />
&nbsp;<strong>Here's a Snapshot of it: </strong>
    <br/>
    <img id="image" src="../images/latestnews.jpg" /><br />
    <br />
    <strong>Implementation:</strong>
    <br />
&nbsp;<br />
    <ul>
    <li>Initially when the page loads the first thing that happens is call made to retrieve the API key which is stored in a folder
    not accessible to the user, thus providing successful key hiding. This is done by using C#.</li>
    <li>After this a call is made to the Jquery function to get the latest news. It then  makes an AJAX call to the ESPN API and
    retrieves the JSON file.</li>
   <li> The next step is to parse the JSON file to extract only the contents that are required. I have used three tags of the JSON file
    namely Headline,Description and Image. Depending upon the number of news, which I have restricted to 10, I dynamically create
    an unordered list where each element is one news.</li>
   <li> And finally when the accordian is ready and filled with content it gets displayed.</li> </ul> </asp:Content>

