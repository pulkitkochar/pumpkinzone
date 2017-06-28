$(document).ready(function() {
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