
get '/take_survey/:survey_id' do
  @survey = Survey.find_by_id(params[:survey_id])
  erb :take_survey
end

get '/create_survey' do
  erb :create_survey
end

get '/survey_results' do
  # @surveys = Survey.find_by_user_id(current_user)
  # is this feature to be depracated?
  @surveys = Survey.all 
  erb :survey_results
end

get '/survey_results/:survey_id' do
  @survey = Survey.find_by_id(params[:survey_id])
  erb :individual_survey_results
end

post '/create_survey' do
  @survey = Survey.new(:title => params[:title])
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
