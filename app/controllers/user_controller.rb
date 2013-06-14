get '/' do
  erb :index
end

get '/signup' do
  erb :signup
end

get '/login' do
  erb :login
end



post '/signup' do
  @user = User.create(params[:form])
  # redirect to be determined
end

post '/login' do
  @user = User.authenticate(params[:form])
  # redirect to be determined
end
