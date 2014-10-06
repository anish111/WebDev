<%@ Page Title="" Language="C#" MasterPageFile="~/Project Documentation/storyfiles/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" Runat="Server">
    API Key Hiding
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Details" Runat="Server">

     <strong>Description:</strong><br />
 I have used ESPN API to get data for my website which requires a key to get access. As that key is private it was necessary
    to hide it. I have used Prof.Rasala's Keytools functionality to implement this.
 I have stored key in the text file and then accessed that key from aspx file using following code:

     <strong>
     <br />
     <br />
     Code:<br />
     </strong>string apikey = "";<br />
&nbsp;if (!IsPostBack)
     <br />
     {
     <br />
&nbsp;&nbsp;&nbsp; apikey = KeyTools.GetKey(this, "Filename");<br />
}

     <br />
     <br />
     As key.txt file is stored at the same level at v4.0 folder i.e. outside v4.0 folder on the server. Hence this folder is not accessible from website and thus it remains hidden. 
    Since this file contains the key, key is not visible to any user from website. Hence key is not visible inside the code and key hiding is done successfully. 

</asp:Content>

