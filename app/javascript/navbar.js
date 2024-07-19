document.addEventListener('DOMContentLoaded', function() {

    $('.nav-link').removeClass('active');

    let currentPage = window.location.pathname;

    if (currentPage.includes('requests')) {
        $('#nav-requests').addClass('active');
    } else if (currentPage.includes('posts')) {
        $('#nav-posts').addClass('active');
    } else {
        $('#nav-home').addClass('active');
    }


});


