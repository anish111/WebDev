<%@ Page Language="C#" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset='utf-8' />

    <meta name="viewport"
        content="initial-scale=1.0, minimum-scale=1.0" />
    <title>Master Page</title>
    <link rel="icon" type="image/jpg" href="ball.png" />
    <link rel="stylesheet" type="text/css" href="master.css" />
   
    
</head>
<body>

    
        <div id="header-content">

            <div id="logo">
               <a href="masterpage.aspx" target="_blank"> <img src="logo.png" class="img_logo" >&nbsp;</a>
            </div>


        </div>
        <div id="container">
             <div id="main-content">
            
                    <div id="nav_bar">
                <ul>
                    <li><a href='#'><span>Home</span></a></li>
                    <li><a href="latestnews.aspx" target='_blank'><span>Latest News</span></a></li>
                    <li><a href="livescores.aspx" target='_blank'><span>Live Scores</span></a></li>
                    <li><a href='#' target='_blank'><span>Shop Merchandise</span></a></li>
                    <li><a href='#'target='_blank' ><span>Courts near you</span></a></li>
                    <li><a href="contactus.aspx" target='_blank'>Contact Us</a></li>
                </ul>
            </div>
        </div>

        <div id="footer-content">

            <div id="copyright">
                <h3 id="copyright-text">Copyrights © Anish Deshmukh, 2014. All rights reserved.</h3>
            </div>

        </div>
    </div>

</body>
</html>
