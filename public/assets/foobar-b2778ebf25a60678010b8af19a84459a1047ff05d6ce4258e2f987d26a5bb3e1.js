function onScroll(){var t=$(document).scrollTop();$("#scroll a").each(function(){var o=$(this),e=$(o.attr("href"));e.position().top<=t&&e.position().top+e.height()>t?($("#scroll ul li a").removeClass("active_nav"),o.addClass("active_nav")):o.removeClass("active_nav")})}$(document).on("turbolinks:load",function(){$("#sample_search").select2({theme:"bootstrap",ajax:{url:"/search",dataType:"json",type:"GET",delay:250,data:function(t){return{search_keyword:t.term}},processResults:function(t){return{results:$.map(t.items,function(t){return{text:t.name,children:$.map(t.children,function(t){return{id:t.id,text:t.name}})}})}},cache:!0},escapeMarkup:function(t){return t},minimumInputLength:1}),$("#sample_search").on("select2:select",function(t){var o=$(t.currentTarget).find("option:selected").val();window.location.href="/products/"+o}),$("#category_nav").affix({offset:{bottom:130}}),$(document).on("scroll",onScroll),$('a[href^="#"]').on("click",function(t){t.preventDefault(),$(document).off("scroll");var o=this.hash;$target=$(o),$("html, body").stop().animate({scrollTop:$target.offset().top-130},500,"swing",function(){window.location.hash=o,$(document).on("scroll",onScroll)})})}),$(document).on("turbolinks:load",function(){document.URL.split("/")[document.URL.split("/").length-1].split("#")[1]!==undefined&&($("#scroll ul li a").removeClass("active_nav"),$('[href="#'+document.URL.split("/")[document.URL.split("/").length-1].split("#")[1]+'"]').addClass("active_nav"),$("html, body").stop().animate({scrollTop:$("#"+document.URL.split("/")[document.URL.split("/").length-1].split("#")[1]).offset().top-130},500,"swing",function(){}))});