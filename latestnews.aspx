<%@ Page Title="Latest News" Language="C#" MasterPageFile="~/Project/MasterPage.master" %>

<%@ Import Namespace=" System.Web" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="edu.neu.ccis.rasala" %>

<script runat="server">

    protected void page_load(object sender, EventArgs e)
    {
        String apikey = "";
        apikey = KeyTools.GetKey(this, "espnkey");
        ClientScript.RegisterStartupScript(GetType(), "id", "display('" + apikey + "')", true);
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/latestnews.js"></script>   
    <link rel="stylesheet" type="text/css" href="css/latestnews.css" />

    <div id="cover">
        <div id="heading">
            Latest News:
        </div>

        <div id="dialog">
            Click to Expand
        </div>

        <div id="update">
                    <img src="images/ajaxloader.gif"/>
                    </div>
        <div id="news">
            <ul id="nav">
             
            </ul>
        </div>

        <div id="espn">
            <a href="http://espn.go.com/" target="_blank">
                <img src="http://a.espncdn.com/i/apis/attribution/powered-by-espn-red_150.png" />
            </a>
        </div>

    </div>
</asp:Content>

