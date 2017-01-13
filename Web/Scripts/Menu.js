$(document).ready(function () {
    var idMenuBtn; // Guarda o valor do ID do botão
    var idMenuSuspenso; // Guarda o valor do ID do menu suspenso
    var idMenuBtnSuspenso; // Guarda o valor do ID do botão dentro do menu suspenso

    $(".menuBtn").mouseover(function () {
        // Caso tenha menu suspenso ele abre
        idMenuBtn = $(this).attr("id");
        $("#" + idMenuBtn + " .menuSuspenso").css("display", "block");
        idMenuSuspenso = $("#" + idMenuBtn + " .menuSuspenso").attr("id");
        $("#" + idMenuSuspenso + " div").mouseover(function () {
            idMenuBtnSuspenso = $(this).attr("id");
            $("#" + idMenuBtnSuspenso + " div").css("display", "block");
        });
    });

    $(".menuBtn").mouseout(function () {
        // Caso tenha menu suspenso ele fecha
        $("#" + idMenuBtn + " .menuSuspenso").css("display", "none");
        $("#" + idMenuSuspenso + " div").mouseout(function () {
            $("#" + idMenuBtnSuspenso + " div").css("display", "none");
        });
    });

    // Deixa o link ativo em laranja
    var url = window.location.pathname.substring(1);

    if (url == "" || url.indexOf("Home") >= 0) {
        url = "Home";
    } else if (url.indexOf("Solucoes") >= 0) {
        url = "Solucoes";
    }

    $("#lnk" + url).css("color", "#FBA63A");
});