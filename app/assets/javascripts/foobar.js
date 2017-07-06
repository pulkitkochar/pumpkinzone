$(document).on('turbolinks:load',function() {
    $("#sample_search").select2({
        theme: "bootstrap",
        ajax: {
            url: "/search",
            dataType: 'json',
            type: "GET",
            delay: 250,
            data: function (params) {
                return {
                    search_keyword: params.term
                };
            },
            processResults: function (data) {
                return {
                    results: $.map(data.items, function (item, i) {
                        return {
                            text: item.name,
                            children: $.map(item.children, function(child){
                                return {
                                    id: child.id,
                                    text: child.name
                                }
                            })
                        }
                    })
                }
            },
            cache: true
        },
        escapeMarkup: function (markup) { return markup; }, // let our custom formatter work
        minimumInputLength: 1,
    });

    $('#sample_search').on("select2:select", function(event) {
        var value = $(event.currentTarget).find("option:selected").val();
        window.location.href = '/products/' + value;
    });

    $("#category_nav").affix({
        offset: {
            bottom: 130
        }
    });

    $(document).on("scroll", onScroll);

    $('a[href^="#category"]').on('click', function (e) {
        e.preventDefault();
        $(document).off("scroll");

        var target = this.hash,
            menu = target;
        $target = $(target);
        $('html, body').stop().animate({
            'scrollTop': $target.offset().top - 130
        }, 500, 'swing', function () {
            window.location.hash = target;
            $(document).on("scroll", onScroll);
        });
    });
});

$(document).on('turbolinks:load',function(){
    if (document.URL.split('/')[document.URL.split('/').length - 1].split('#category')[1] !== undefined){
        $('#scroll ul li a').removeClass("active_nav");
        $('[href="#' + document.URL.split('/')[document.URL.split('/').length - 1].split('#')[1] + '"]').addClass("active_nav");
        $('html, body').stop().animate({
            'scrollTop': $('#' + document.URL.split('/')[document.URL.split('/').length - 1].split('#')[1] +'').offset().top - 130
        }, 500, 'swing', function () {
        });
    };
});

function onScroll(event){
    var scrollPos = $(document).scrollTop();
    $('#scroll a').each(function () {
        var currLink = $(this);
        var refElement = $(currLink.attr("href"));
        if (refElement.position().top <= scrollPos && refElement.position().top + refElement.height() > scrollPos) {
            $('#scroll ul li a').removeClass("active_nav");
            currLink.addClass("active_nav");
        }
        else{
            currLink.removeClass("active_nav");
        }
    });
}