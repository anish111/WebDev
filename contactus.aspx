<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Project/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link rel="stylesheet" type="text/css" href="css/contactus.css" />
    <div id="cover">
            <div id="address">
                <p class="name">World of Tennis</p>
                <p style="margin-top: 0px; margin-bottom: 0px;">
                    75 St. Alphonsus Street, 
Boston, MA, 02120 <br/>
                    Ph:617-938-7291<br/>
                 Email: deshmukh.ani@husky.neu.edu
                </p>
            </div>

            <div id="map_wrapper">

                <iframe id="map" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=75+St+Alphonsus+St,+Boston,+MA&amp;aq=0&amp;oq=75&amp;sll=53.388886,-2.354726&amp;sspn=0.029023,0.084543&amp;ie=UTF8&amp;hq=&amp;hnear=75+St+Alphonsus+St,+Boston,+Suffolk,+Massachusetts+02120&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
            </div>
        </div>
</asp:Content>

