$(document).ready(function () {
    // Troca a imagem da logo
    $("#lnkLogo img").hover(function () {
        $(this).attr("src", "../Images/logo-poob-info-over.png");
    }, function () {
        $(this).attr("src", "../Images/logo-poob-info.png");
    });

    // Troca o ícone do Facebook
    $("#lnkFacebook img").hover(function () {
        $(this).attr("src", "../Images/facebook-over.jpg");
    }, function () {
        $(this).attr("src", "../Images/facebook.jpg");
    });

    // Troca o ícone do Twitter
    $("#lnkTwitter img").hover(function () {
        $(this).attr("src", "../Images/twitter-over.jpg");
    }, function () {
        $(this).attr("src", "../Images/twitter.jpg");
    });

    // Troca a imagem da logo na página de erro
    $("#ContentPlaceHolder1_lnkPoobInfo img").hover(function () {
        $(this).attr("src", "../Images/logo-poob-info-over.png");
    }, function () {
        $(this).attr("src", "../Images/logo-poob-info.png");
    });
});