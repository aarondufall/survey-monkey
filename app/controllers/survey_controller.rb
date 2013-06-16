
get '/take_survey/:survey_id' do
  @survey = Survey.find_by_id(params[:survey_id])
  erb :take_survey
end

get '/create_survey' do
  if session[:user]
    erb :create_survey
  else
    redirect to 'login'
  end
end

get '/survey_results' do
  @surveys = Survey.all
  erb :survey_results

  # @surveys = Survey.find_all_by_user_id(current_user)
  # if @surveys
  #   erb :survey_results
  # else
  #   erb :create_survey
  # end
end

get '/edit/:id' do
  survey_id = params[:id]

  @survey = current_user.surveys.find(survey_id)

  erb :edit
end

post '/edit/:id' do
  old_survey = Survey.find(params[:id])

  @survey = current_user.surveys.build(:title => params[:title])
  questions = (params[:questions])

    questions.each do |question_number, question_hash|

        q = @survey.questions.build(:question_text => question_hash[:name])

        question_hash[:options].each do |option_number, option_text|
           q.options.build(:option_text => option_text)
        end
    end
  if @survey.save
    old_survey.destroy
    redirect "/survey_results"
  else
    redirect "/edit/#{old_survey.id}"
  end  
end

get '/survey_results/:survey_id' do
  @survey = Survey.find_by_id(params[:survey_id])
  erb :individual_survey_results
end

post '/create_survey' do
  @survey = current_user.surveys.build(:title => params[:title])
  questions = (params[:questions])

    questions.each do |question_number, question_hash|

        q = @survey.questions.build(:question_text => question_hash[:name])

        question_hash[:options].each do |option_number, option_text|
           q.options.build(:option_text => option_text)
        end
    end
  @survey.save
  erb :individual_survey_results
end


post '/take_survey' do

  @survey = Survey.find(params[:survey_id])
  answers = params[:answers]

  answers.each do |option, option_id|
    option = Option.find_by_id(option_id)
    a = option.answers.create
    @survey.answers << a
  end
  erb :individual_survey_results
end
