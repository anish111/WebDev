<%@ Page Title="" Language="C#" MasterPageFile="~/Project Documentation/storyfiles/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" Runat="Server">
    Limitations and Future Scope

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Details" Runat="Server">

    
      <strong>Limitations:<br />
     </strong><br />

    One of the limitation which I faced was getting data from the API's I have used. ESPN API provided me
     with only latest news information. It provided very minimal information about player profiles and thus limited 
    the scope a bit. I had added the Players Profile page to show the profiles of as many players as possible. But due 
    to less amount of data available I had to create my own dataset to display their profiles. This limited the number
    of profiles that I could display but it helped to learn a lot by extracting the data from local XML files.

    I was going to add one more feature to find the nearest tennis courts but had to drop that idea because the API 
    providing company had stopped issuing API keys.

     <strong>
      <br />
      <br />
      <br />
      Future Enchancements:<br />
     </strong><br />
    Future enhancement could be making it as a forum where the users can subsribe to latest updates about players,
    more information about individual players. 


</asp:Content>

