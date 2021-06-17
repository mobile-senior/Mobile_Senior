$(document).ready(function() {
    $("#formCustomCheckbox94").click(function() {
        $("#formCustomCheckbox94").prop('checked', true);
        $("#formCustomCheckbox94").val($("#formInput47").val());
    });

    $("#formInput47").change(function() {
        $("#formCustomCheckbox94").prop('checked', true);
        $("#formCustomCheckbox94").val($("#formInput47").val());
    });

    $("#materials-link").click(function() {
        window.location.href = "/materials"
    })
});

function setUserIdToRecommend(userId) {
    $("#user-to-recommend").val(userId);
}

function activateSaveBtn() {
    $('#save-answer-btn').css('display', 'inline')
    $('#no-answer-message').css('display', 'none')
}

function changeLanguagePtBr() {
    current_url = window.location.href;
    new_url = current_url.replace("/es/", "/pt-BR/");
    window.location.href = new_url;

    $("#option1-pt-br").prop("checked", true);
    $("#option2-es").prop("checked", false);
}

function changeLanguageEs() {
    current_url = window.location.href;
    new_url = current_url.replace("/pt-BR/", "/es/");
    window.location.href = new_url;

    $("#option1-pt-br").prop("checked", false);
    $("#option2-es").prop("checked", true);
}

function markCurrentLanguage(current_language) {
    if (current_language == 'pt-BR') {
        $("#btn-site-pt-br").addClass('active');
        $("#btn-site-es").removeClass('active');
    } else {
        $("#btn-site-pt-br").removeClass('active');
        $("#btn-site-es").addClass('active');
    }
}