
function display(apikey, pid) {

    var headlines = [];
    var headline = [];
    var description = [];
    var images = [];
    var photo = [];
    var url;
    var k = 0;
    var url_1 = "http://api.espn.com/v1/sports/tennis/news/?limit=5&athletes=";
    var url_2 = "&apikey=" + apikey;
    var url = url_1 + pid + url_2;

    $.ajax({
        type: 'GET',
        url: url,
        data: "",
        dataType: 'json',
        success: function (data) {

            //alert(JSON.stringify(data));
            headlines = data.headlines;

            for (var i in headlines) {

                headline.push(headlines[i].headline);
                description.push(headlines[i].description);

            }
            for (var i in headline) {

                var div_h = document.createElement('div');
                var div_d = document.createElement('div');
                var item_d = document.createElement('li');

                j = parseInt(i, 10) + 1;
                // alert(headline[i]);
                div_h.innerHTML = j + ". " + headline[i];

                div_d.id = "desc";
                div_h.id = "headline";

                div_d.innerHTML = description[i];
                item_d.style.height = "inherit";
                div_d.style.height = "inherit";
                div_h.style.height = "inherit";
                //div_d.style.width = "90%";



                $(div_h).appendTo(item_d);
                //$(div_d).appendTo(item_d);

                $("#nav").append(item_d);
            }
        },
        error: function (xhr, errorType, exception) {
            var errorMessage = xhr.statusText;
            //alert("There was an error loading the news...Please try again");
            var div_error = document.createElement('div');
            div_error.id = "error";
            div_error.innerHTML = "No News Available";
            $("#nav").append(div_error);
        }
    });
}
