get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:username], params[:password])
      session[:user_id] = @user.id
      redirect '/decks'
    else
      @message = "Invalid username or password. Please try again."
      erb :'sessions/new'
    end
end
