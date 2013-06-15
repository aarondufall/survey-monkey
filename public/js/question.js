(function (window) {
    function Question() {}
    Question.prototype = {
        addQuestionField: function (counter_one) {
            var addThis = "<div id='questions' class='info_box lob_heading form'><div class='qe'><i class='icon-remove-sign delete_question'></i><label>Question:</label><input id='enter' type='text' name='questions[question_"+counter_one+"][name]' placeholder='Enter your question' ><div class='q'><label>Option:</label> <input id='enter' type='text' name='questions[question_"+counter_one+"][options][opt_0]' placeholder='Enter your Option' ></i>&nbsp;<i class='icon-plus' id='add_answer'></i></div></div></div>";
            $("#wrapping").append(addThis);
        }
    };

    window.Question = Question;

})(window);




