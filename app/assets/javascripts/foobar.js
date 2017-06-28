$(document).ready(function() {
    //$('#categoryCarousel1 .glyphicon-chevron-right').on('click', function () {
    //    $('.myClass .carousel .carousel-inner .item:first-child').addClass('active');
    //});

    $('#mainCarousel').carousel({
        interval: 4000
    });

    $('#categoryCarousel1').carousel({
      interval: false
    });

    $('#categoryCarousel2').carousel({
      interval: false
    });

    $('#categoryCarousel3').carousel({
      interval: false
    });

    var searchRequest = null;

    $(function () {
        var minlength = 3;

        $("#sample_search").keyup(function () {
            var that = this,
                value = $(this).val();

            if (value.length >= minlength ) {
                if (searchRequest != null)
                    searchRequest.abort();
                searchRequest = $.ajax({
                    type: "GET",
                    url: "/search",
                    data: {
                        'search_keyword' : value
                    },
                    dataType: "text",
                    success: function(data){
                        $("#products").html(data);
                    }
                });
            }
        });
    });
});