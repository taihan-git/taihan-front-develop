$(document).ready(function () {
    $('.button-menu').click(function (e) {
        e.preventDefault();
        if ($(this).hasClass('close')) {
            $(this).removeClass('close');
            $('#header').removeClass('active');
            $('.page-navigation').removeClass('sticky');
        } else {
            $(this).addClass('close');
            $('#header').addClass('active');
            $('.page-navigation').addClass('sticky');
        }
    });

    $(window).scroll(function () {
        var contentH = $('#content').offset().top;
        var historyH = $('.content-wrap').offset().top;
        if ($(window).scrollTop() > contentH) {
            $('body').addClass('spacer');
            $('.page-navigation').addClass("active");
            $('#header').addClass('sticky');
        } else {
            $('#header').removeClass('sticky active');
            $('.page-navigation').removeClass("active sticky");
            $('body').removeClass('spacer');
            $('.button-menu').removeClass('close');
        }

        if ($(window).scrollTop() > historyH) {
            $('.page-navigation').addClass("scroll");
        } else {
            $('.page-navigation').removeClass("scroll");
        }
    });
})