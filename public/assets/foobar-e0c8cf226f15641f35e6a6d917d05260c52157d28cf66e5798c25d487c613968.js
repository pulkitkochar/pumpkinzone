function onScroll(){var t=$(document).scrollTop();$("#scroll a").each(function(){var n=$(this),o=$(n.attr("href"));o.position().top<=t&&o.position().top+o.height()>t?($("#scroll ul li a").removeClass("active_nav"),n.addClass("active_nav")):n.removeClass("active_nav")})}$(document).on("turbolinks:load",function(){$("#sample_search").select2({theme:"bootstrap",ajax:{url:"/search",dataType:"json",type:"GET",delay:250,data:function(t){return{search_keyword:t.term}},processResults:function(t){return{results:$.map(t.items,function(t){return{text:t.name,children:$.map(t.children,function(t){return{id:t.id,text:t.name}})}})}},cache:!0},escapeMarkup:function(t){return t},minimumInputLength:1}),$("#sample_search").on("change",function(){window.location.href="/products"}),$(document).on("scroll",onScroll),$('a[href^="#"]').on("click",function(t){t.preventDefault(),$(document).off("scroll"),$("a").each(function(){$(this).removeClass("active_nav")}),$(this).addClass("active_nav");var n=this.hash;$target=$(n),$("html, body").stop().animate({scrollTop:$target.offset().top-130},500,"swing",function(){window.location.hash=n,$(document).on("scroll",onScroll)})})});