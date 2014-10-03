function display(apikey) {

    $("#espn").hide();
    var headlines = [];
    var headline = [];
    var description = [];
    var images = [];
    var photo = [];
    var url;
    var k = 0;
    var blank = "../images/default.png";
    var url = "http://api.espn.com/v1/now/?leagues=tennis&content=video&apikey="+ apikey;
    $("#update").css('display', 'inline');

    $.ajax({
        type: 'GET',
        url: url,
        data: "",
        dataType: 'jsonp',
        success: function (data) {

            headlines = data.feed;

            for (var i in headlines) {

                headline.push(headlines[i].headline);
                description.push(headlines[i].description);
                images = headlines[i].images[0];
                if (images != null) {

                    photo.push(images.url);
                }
                else {
                    photo.push(blank);
                }
            }
            for (var i in headline) {


                var item_h = document.createElement('li');
                var link = document.createElement('a');
                link.href = '#';
                var j = 0;
                j = parseInt(i, 10) + 1;
                link.innerHTML = j + ". " + headline[i];

                $(link).appendTo(item_h);

                var item_d = document.createElement('li');
                var list_d = document.createElement('ul');
                var div_content = document.createElement('div');
                var div_d = document.createElement('div');
                var div_img = document.createElement('div');
                var news_img = document.createElement('img');


                div_content.id = "content";
                div_d.id = "info";
                div_img.id = "image";

                div_d.innerHTML = description[i];
                news_img.src = photo[i];

                $(div_img).prepend(news_img);
                //$(div_img).appendTo(div_content);
                //$(div_d).appendTo(div_content);
                // $(div_img).appendTo(div_content);
                //$(div_d).insertAfter(div_img);
                //div_content.style.width = "100%";
                div_d.style.width = "90%";
                div_img.style.width = "90%";
                // div_d.style.marginLeft = "3%";
                //div_d.style.cssFloat = "left";
                // $(div_img).nextUntil(div_d).wrapAll(div_content);
                /*var link_child = document.createElement('a');
                link_child.href = '#';
                link_child.innerHTML = description[i];*/
                $(div_img).appendTo(item_d);
                $(div_d).insertAfter(div_img);

                $(item_d).appendTo(list_d);

                $(item_h).append(list_d);
                $("#update").css('display', 'none');
                $("#nav").append(item_h);
                $("#espn").show();
            }
        },
        error: function () {
            
            alert("error");
            var div_error = document.createElement('div');
            div_error.id = "error";
            div_error.innerHTML = "News Update Unavailable....Please Try after Sometime";
            $("#news").append(div_error);
            $("#espn").show();

        }
    });
}


$(document).ready(function () {

    $('#nav > li > a').live('click', function (e) {
        var tempScrollTop = $(window).scrollTop();
        if ($(this).attr('class') != 'active') {
            $('#nav li ul').slideUp();
            $(this).next().slideToggle();
            $('#nav li a').removeClass('active');
            $(this).addClass('active');
        }
        else {
            $('#nav li ul').slideUp();
            $(this).removeClass('active');

        }
        e.preventDefault();
    });
});

setTimeout(function () {
    $('#dialog').fadeOut('slow');
}, 3000);