$(document).ready(function() {
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

    $('#sample_search').on('change', function(){
        window.location.href = '/products'
    });
});