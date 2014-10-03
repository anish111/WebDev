<%@ Page Title="Player Profile" Language="C#" MasterPageFile="~/Project/MasterPage.master" %>

<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="edu.neu.ccis.rasala" %>

<script runat="server">

    protected void displayplayer(object sender, EventArgs e)
    {
        String value = list.SelectedItem.Text;

        info.Visible = true; ;
        String apikey = "";
        apikey = KeyTools.GetKey(this, "espnkey");

        int dropid = Convert.ToInt32(list.SelectedValue);

        String url = "Data/Players.xml";
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath(url));

        XmlNode root = doc.DocumentElement;
        XmlNodeList player = root.SelectNodes("player");
        String sid = "";

        for (int i = 0; i < player.Count; i++)
        {
            XmlNode n = player[i];
            sid = n.Attributes["id"].Value;
            int id = Convert.ToInt32(sid);
            if (id == dropid)
            {
                name.Text = n.SelectSingleNode("name").ChildNodes[0].Value;
                rank.Text = "Current Ranking:" + "   " + n.SelectSingleNode("ranking").ChildNodes[0].Value;
                about.Text = n.SelectSingleNode("about").ChildNodes[0].Value;
                shoplink.HRef = n.SelectSingleNode("shop").ChildNodes[0].Value;
                shoplink.Target = "_blank";
                shoplink.InnerText = "Shop Merchandise";
                XmlNode aust = n.SelectSingleNode("aus");
                if (aust.HasChildNodes)
                    aus.Text = "<strong>" + "Australian Open: " + "</strong>" + aust.ChildNodes[0].Value;

                XmlNode fre = n.SelectSingleNode("fr");
                if (fre.HasChildNodes)
                    fr.Text = "French Open: " + fre.ChildNodes[0].Value;
    
                XmlNode wim = n.SelectSingleNode("wim");
                if (wim.HasChildNodes)
                    wimbdn.Text = "Wimbledon Open: " + wim.ChildNodes[0].Value;

                XmlNode uso = n.SelectSingleNode("us");
                if (uso.HasChildNodes)
                    us.Text = "US Open: " + uso.ChildNodes[0].Value;

                photo.ImageUrl = n.SelectSingleNode("image").ChildNodes[0].Value;
                update.Text = "Latest Updates:";
                achieve.Text = " Achievements :";
            }

            if (value == "---Select---")
            {
                info.Visible = false;
            }


        }
        ScriptManager.RegisterStartupScript(this, GetType(), "id", "display('" + apikey + "','" + dropid + "')", true);



    }

    protected void XmlDataSource1_Transforming(object sender, EventArgs e)
    {

    }
</script>

<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <link href='http://fonts.googleapis.com/css?family=Freckle+Face' rel='stylesheet' type='text/css'>
     <link href='css/playerprofile.css' rel='stylesheet' type='text/css'>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <div id="main">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div id="head">
                Choose a player:
            </div>

        <div id="drop-down">
            <asp:DropDownList ID="list" AutoPostBack="True" OnSelectedIndexChanged="displayplayer" runat="server" DataSourceID="XmlDataSource1" DataTextField="name" DataValueField="id" AppendDataBoundItems="true" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Calibri">
                <asp:ListItem Text="---Select---" Value="0" Selected="True" />
            </asp:DropDownList>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Project/Data/Players.xml" OnTransforming="XmlDataSource1_Transforming"></asp:XmlDataSource>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="Server">
            <ContentTemplate>
                <div id="info" runat="server">


                    <div id="image">
                        <asp:Image ID="photo" CssClass="photo" runat="server" />
                    </div>

                    <div id="name_div">
                        <asp:Literal ID="name" runat="server" />

                    </div>

                    <div id="ranking_div">
                        <asp:Literal ID="rank" runat="server" />

                    </div>

                    <div id="about_div">
                        <asp:Literal ID="about" runat="server" />

                    </div>
                   

                    <div id="achievements">
                        <asp:Literal ID="achieve" runat="server" />
                        <br />
                    </div>
                    <div id="achievements-text">
                        <asp:Literal ID="aus" runat="server" />
                        <br />
                        <asp:Literal ID="fr" runat="server" />
                        <br />
                        <asp:Literal ID="wimbdn" runat="server" />
                        <br />
                        <asp:Literal ID="us" runat="server" />
                    </div>

                     <div id="shop">              
                         <a id="shoplink" runat="server"> </a>
                        <br />
                    </div>

                    <div id="updates">
                        <asp:Literal ID="update" runat="server" />
                    </div>

                    <div id="news">
                        <ul id="nav">
                            <script type="text/javascript" src="js/playerprofile-news.js">
                            </script>
                        </ul>

                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="list" EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>

