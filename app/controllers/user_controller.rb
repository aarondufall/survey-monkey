get '/' do
  erb :home
end

get '/signup' do
  erb :signup
end

get '/login' do
  erb :login
end

post '/login' do
  user = User.authenticate(params[:name], params[:password])
  if user
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end

post '/create' do
  user = User.create(params[:form])
  if user.valid?
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login'
  end
end
