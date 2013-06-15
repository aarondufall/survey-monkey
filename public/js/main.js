$(document).ready(function () {
    questionnaire = new Questionnaire();

    $("#add_question").on('click', addQuestion);

    $("body").on('click', "#add_answer", addOption);

    $("body").on('click', ".delete_question", deleteQuestion);

    $("body").on('click', ".delete_option", deleteOption);
});

var addQuestion = function (event) {
    event.preventDefault();
    questionnaire.addQuestion();
};

var addOption = function (event) {
    event.preventDefault();
    var closest = $(this).parent(".q").parent(".qe");
    var num = closest.index(".qe");
    var num2 = closest.children(".q").last().index(".q")+1;
    questionnaire.addOption(closest, num, num2);
};

var deleteQuestion = function (event) {
    event.preventDefault();
    $(this).parent(".qe").parent("#questions").remove();
};

// var findClosestQuestion = function (target) {
//     return $(target).parent(".qe");
// };

var deleteOption = function (event) {
    event.preventDefault();
    var target = this;
    var closest = findClosestOption(target);
    closest.remove();
};

var findClosestOption = function (target) {
    return $(target).parent(".q");
};
