<%@ Page Title="Live Scores" Language="C#" MasterPageFile="~/Project/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link rel="stylesheet" type="text/css" href="css/livescores.css" />

     <div id="cover">
    <div id="heading">
          Live Scores:
          </div>

    <div id="live">
                <iframe id="score_frame"  
                    src="http://free.scorespro.com/tennis.php?style=ffffff,678d14,000033,636358,990000,000033,999999,ffffff,4DB84D,ffffff,C0C0C0,Tahoma,10,450"></iframe>
                </div>
         </div>
</asp:Content>

