$(document).ready(function () {
    $("#form1 [placeholder]").focus(function () {
        var campo = $(this);
        if (campo.val() == campo.attr("placeholder")) {
            campo.val("");
            campo.removeClass("placeholder");
            $(campo).css("color", "#414042");
        }

    }).blur(function () {
        var campo = $(this);
        if (campo.val() == "" || campo.val() == campo.attr("placeholder")) {
            campo.addClass("placeholder");
            campo.val(campo.attr("placeholder"));
        }
        else {
            $(campo).css("color", "#414042");
        }

    }).blur().parents("form").submit(function () {
        $(this).find("[placeholder]").each(function () {
            var campo = $(this);
            if (campo.val() == campo.attr("placeholder")) {
            }
        });
    });
});