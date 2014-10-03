<%@ Page Title="Videos" Language="C#" MasterPageFile="~/Project/MasterPage.master" %>


<script runat="server">

    protected void Page_Load(object source, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            type.Text = "Popular Videos";
            ScriptManager.RegisterStartupScript(this, GetType(), "id", "display('default')", true);
            
        }
        
    }

    protected void fetchvideos(object sender, EventArgs e)
    {
        
        Button b = (Button)sender;
        String find = b.ID;
        String channel = "";
        if (find == "aust")
        {
            channel = "australianopentv";
            type.Text = "Australian open";
        }
        else if (find == "fre")
        {
            channel = "ROADTOROLANDGARROS";
            type.Text = "French Open";
        }
        else if (find == "wimb")
        {
            channel = "Wimbledon";
            type.Text = "Wimbledon";
        }
        else
        {
            channel = "USOPEN";
            type.Text = "US Open";
        }
        
        ScriptManager.RegisterStartupScript(this, GetType(), "id", "display('" + channel + "')", true);
        //type.Text = "US Open";
    }


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href='css/videos.css' rel='stylesheet' type='text/css'>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <div id="cover">

        <div id="controls">

            <div id="head">
                Categories:
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div id="aus" class="button">
                <asp:Button ID="aust" class="myButton" Text="Australian Open" OnClick="fetchvideos" runat="server" />

            </div>
            <div id="fr" class="button">
                <asp:Button ID="fre" class="myButton" Text="French Open" OnClick="fetchvideos" runat="server" />

            </div>
            <div id="wim" class="button">
                <asp:Button ID="wimb" class="myButton" Text="Wimbledon" OnClick="fetchvideos" runat="server" />
            </div>
            <div id="us" class="button">
                <asp:Button ID="uso" class="myButton" Text=" US Open" OnClick="fetchvideos" runat="server" />
            </div>
            
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        <div id="videostype">
         <asp:Literal ID="type" runat="server" />
        </div>


        <div id="videospanel">
         
        </div>
                </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="aust" EventName="Click"></asp:AsyncPostBackTrigger>
                <asp:AsyncPostBackTrigger ControlID="fre" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="uso" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="wimb" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>

       

        <script type="text/javascript">

            function display(channel) {
                var url = "";
                var htmlString = '<ul id="videoslisting">'
                if (channel === 'default') {
                    url = 'https://gdata.youtube.com/feeds/api/videos?q=popular+tennis+videos&max-results=10&alt=json';
                }
                else {
                    url = 'http://gdata.youtube.com/feeds/api/users/' + channel + '/uploads?alt=json&max-results=10';
                }

                $.getJSON(url, function (data) {
                    $.each(data.feed.entry, function (i, item) {
                        var title = item['title']['$t'];
                        var videoid = item['id']['$t'];
                        var thumbimg = item['media$group']['media$thumbnail'][2]['url'];
                        var link = item['media$group']['media$player'][0]['url'];
                        htmlString += '<li class="clearfix">';
                        htmlString += '<div class="videothumb"><a href="' + link + '" target="_blank"><img src="' + thumbimg + '" width="35%" height="150"></a><div id="videotext">' + title + '</div><hr/></div>';
                    });

                    $('#videospanel').html(htmlString + "</ul>");
                }); // end json parsing
            } // end click event handler

        </script>
    </div>



</asp:Content>

