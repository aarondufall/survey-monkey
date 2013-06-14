get '/take_survey/:survey_id' do
  @survey = Survey.find_by_id(params[:survey_id])
  # send to the page to take the survey
end


get '/create_survey' do
  erb :create_survey
end

get '/survey_results' do
  @surveys = Survey.find_by_user_id(current_user)
  erb :survey_results
end

get '/survey_results/:survey_id' do
  @survey = Survey.find_by_id(params[:survey_id])
  erb :individual_survey_results
end

post '/create_survey' do
  survey = Survey.new(params[:title])
  questions = (params[:questions])

    questions.each do |question_number, question_hash|

        q = survey.questions.build(:question_text => question_hash[:question_text],
                            :mandatory => question_hash[:mandatory],
                            :helper_text => question_hash[:helper_text])

        question_hash[:question_options].each do |option_number, option_text|
           q.options.build(:option_text => option_text)
        end
    end
  survey.save
  # redirect to view the survey or something
end


post '/take_survey' do
  survey = Survey.find(params[:survey_id])
  answers = (params[:answers])

  answers.each do |option, option_id|
    option = option.find_by_id(option_id])
    a = option.answers.create
    survey.answers << a
  end

  # redirect to thank you page or something
end
