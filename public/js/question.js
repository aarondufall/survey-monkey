(function (window) {
    function Question() {}
    Question.prototype = {
        addQuestionField: function (counter_one) {
            var addThis = "<br><br><hr><div class='qe'> <p>Question: <input id='enter' type='text' name='question_"+counter_one+"[name]' placeholder='Enter your question' ><button class='delete_question'>Delete</button></p><p><button id='add_answer'>Add Option</button></p><hr><div class='q'> <p>Option: <input id='enter' type='text' name='question_"+counter_one+"[options][opt_0]' placeholder='Enter your Option' ><button class='delete_option'>Delete</button></p><p></p><hr></div></div>";
            $("#questions").append(addThis);
        }
    };

    window.Question = Question;

})(window);
