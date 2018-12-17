require 'sinatra/base'

class Bounce < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:sign_in)
  end

  post '/login' do
    session[:username] = params[:username]
    redirect '/messages'
  end

  get '/messages' do
    @message = session[:message]
    @username = session[:username]
    erb(:messages)
  end

  post '/send_message' do
    session[:message] = params[:message]
    redirect '/messages'
  end

  run! if app_file == $0

end
