(function (window) {
    function Option() {}
    Option.prototype = {
        addOptionField: function (closest, questionNum, optionNum) {
            var addThis = "<div class='q'><label>Option:</label> <input id='enter' type='text' name='questions[question_"+questionNum+"][options][opt_"+optionNum+"]' placeholder='Enter your Option' >&nbsp;<i class='icon-trash delete_option'></i></i></div>";
            closest.append(addThis);
        }
    };

    window.Option = Option;

})(window);
