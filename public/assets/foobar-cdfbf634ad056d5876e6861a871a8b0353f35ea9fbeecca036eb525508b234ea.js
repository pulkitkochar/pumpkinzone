function onScroll(){var t=$(document).scrollTop();$("#scroll a").each(function(){var e=$(this),n=$(e.attr("href"));n.position().top<=t&&n.position().top+n.height()>t?($("#scroll ul li a").removeClass("active_nav"),e.addClass("active_nav")):e.removeClass("active_nav")})}$(document).on("turbolinks:load",function(){$("#sample_search").select2({theme:"bootstrap",ajax:{url:"/search",dataType:"json",type:"GET",delay:250,data:function(t){return{search_keyword:t.term}},processResults:function(t){return{results:$.map(t.items,function(t){return{text:t.name,children:$.map(t.children,function(t){return{id:t.id,text:t.name}})}})}},cache:!0},escapeMarkup:function(t){return t},minimumInputLength:1}),$("#sample_search").on("select2:select",function(t){$(t.currentTarget).find("option:selected").val();window.location.href="/products/1"}),"products"==document.URL.split("/")[document.URL.split("/").length-1].split("#")[0]&&(-1==document.URL.indexOf("#")&&(url=document.URL+"#",location="#",location.reload(!0)),""!=document.URL.split("/")[document.URL.split("/").length-1].split("#")[1]&&$('[href="#'+document.URL.split("/")[document.URL.split("/").length-1].split("#")[1]+'"]').trigger("click")),$(document).on("scroll",onScroll),$('a[href^="#"]').on("click",function(t){t.preventDefault(),$(document).off("scroll"),$("a").each(function(){$(this).removeClass("active_nav")}),$(this).addClass("active_nav");var e=this.hash;$target=$(e),$("html, body").stop().animate({scrollTop:$target.offset().top-130},500,"swing",function(){window.location.hash=e,$(document).on("scroll",onScroll)})})});