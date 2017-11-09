// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets

//= require_tree .

//= require toastr



$(window).on('load', function() {
  $('.flexslider').flexslider({
    animation: "slide",
    animationLoop: false,
    itemWidth: 210,
    itemMargin: 5,
    minItems: 2,
    maxItems: 4
  });
});

$(document).ready(ready);
$(document).on('page:load', ready);

var ready = function() {    
   setTimeout(clearNotice, 1000);  //Flash fade
};

function clearNotice(){
  $(".notice").animate({opacity:'0'}, 1500);
}

 /*
    Get Disqus comment counts given an array of URLs
    Considerations
    --------------
    + In most cases, you should use the default comment counting script
    + This example will make client-side API calls, which on a busy site, will exhaust your 1000 requests/hour limit quickly.
    Consider requesting comment counts server-side and caching the results. 
    + Make sure the domain you're hosting this page on has been added to your whitelisted domains in your application: http://disqus.com/api/applications/
    Cases where you might use this
    ------------------------------
    1. When you're counting comments on an element other than a <a> tag
    2. If you're counting comments from another Disqus shortname on a page where you're using the default comment counting script
*/
/*$(document).ready(function () {
    var disqusPublicKey = "YOUR_PUBLIC_KEY";
    var disqusShortname = "did";
    var urlArray = [];
    $('.count-comments').each(function () {
        var url = $(this).attr('data-disqus-url');
        urlArray.push('link:' + url);
    });
    $('#GetCountsButton').click(function () {
        $.ajax({
            type: 'GET',
            url: "https://disqus.com/api/3.0/threads/set.jsonp",
            data: { api_key: disqusPublicKey, forum : disqusShortname, thread : urlArray }, // URL method
            cache: false,
            dataType: "jsonp",
            success: function (result) {
                for (var i in result.response) {
                    var countText = " comments";
                    var count = result.response[i].posts;
                    if (count == 1) countText = " comment";
                    $('h4[data-disqus-url="' + result.response[i].link + '"]').html(count + countText);
                }
            }
        });
    });
});*/