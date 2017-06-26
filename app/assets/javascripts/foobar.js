$(document).ready(function() {
    $('#categoryCarousel1 .glyphicon-chevron-right').on('click', function () {
        $('.myClass .carousel .carousel-inner .item:first-child').addClass('active');
    });
});