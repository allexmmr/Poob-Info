$(document).ready(function () {
    $("#form1 [placeholder]").keypress(function () {
        var campo = $(this);
        $(campo).css("color", "#414042");

    }).blur(function () {
        var campo = $(this);
        if (campo.val() == "" || campo.val() == campo.attr("placeholder")) {
            $(campo).css("color", "#BBBBBB");
        }
    });
});