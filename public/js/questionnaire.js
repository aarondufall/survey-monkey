(function (window) {
    function Questionnaire() {
        this.counter_one = 1;
    }

    Questionnaire.prototype = {
        addQuestion: function () {
            new Question().addQuestionField(this.counter_one);
            this.incrementQuestionCount();
        },

        incrementQuestionCount: function () {
            this.counter_one++;
        },

        addOption: function (closest, num, num2) {
            new Option().addOptionField(closest, num, num2);
        }
    };
    window.Questionnaire = Questionnaire;

})(window);
