get '/' do
    erb :home
end

enable :sessions

get '/signup' do
  erb :signup
end

post '/signup' do
  @user = User.new(params[:user])
  if @user.save
    session[:user] = @user.id
    redirect '/'
  else
    @errors = @user.errors
    puts @user.errors.keys
    erb :signup
  end
end

get '/login' do
  erb :login
end


post '/login' do
  if User.authenticate(params[:user][:name], params[:user][:password])
    @user = User.find_by_name(params[:user][:name])
    session[:user] = @user.id
    redirect '/'
  else
    @errors = {error: "Invalid name or password."}
    erb :login
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
