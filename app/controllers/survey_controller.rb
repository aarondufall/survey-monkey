

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

    questions.each do |question|
      q = s.questions.build(:question_text => question[:question_text]
                            :mandatory => question[:mandatory],
                            :helper_text => question[:helper_text])

        question[:question_options].each do |option|
           question.options.build(:option_text => params[:option_text])
        end
    end

  survey.save
  # redirect to view the survey or something
end




post '/take_survey' do
  params[:form]
end

t.text :question_text
      t.boolean :mandatory
      t.string :helper_text
