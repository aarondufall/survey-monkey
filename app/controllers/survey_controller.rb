

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
  params[:form]
  survey = Survey.new(params[:survey])
    #iterate through questions
    q = s.questions.build(params[:question])
      #iterate through options
      o = q.options.build(params[:options])

end


post '/take_survey' do
  params[:form]
end

