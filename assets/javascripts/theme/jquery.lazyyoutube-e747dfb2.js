var youTube=function(){"use strict";var e={init:function(){$(".bt-video-container a.youtube").each(function(){var e=$(this),t=e.data("videoid");e.html(""),e.prepend('<div class="bt-video-container-div"></div>&nbsp;'),e.css("background","#000 url(http://i2.ytimg.com/vi/"+t+"/0.jpg) center center no-repeat");var i="//www.youtube-nocookie.com/embed/"+t+"?autoplay=1&rel=0",r='<iframe width="'+parseInt(e.data("width"),10)+'" height="'+parseInt(e.data("height"),10)+'" style="vertical-align:top;" src="'+i+'" frameborder="0" allowfullscreen></iframe>';e.click(function(t){return t.preventDefault(),e.replaceWith(r),!1})})}};return e}();youTube.init();