(function (window) {
    function Option() {}
    Option.prototype = {
        addOptionField: function (closest, questionNum, optionNum) {
            var addThis = "<div class='q'> <p>Option: <input id='enter' type='text' name='questions[question_"+questionNum+"][options][opt_"+optionNum+"]' placeholder='Enter your Option' ><button class='delete_option'>Delete</button></p><p></p></div><hr>";
            closest.append(addThis);
        }
    };

    window.Option = Option;

})(window);

