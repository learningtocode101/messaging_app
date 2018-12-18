require 'sinatra/base'

class Bounce < Sinatra::Base
  enable :sessions

  get '/' do
    @message_history = []
    @message_history << session[:message]
    erb(:index)
  end

  post '/send_message' do
    session[:message] = params[:message]
    redirect '/'
  end

  run! if app_file == $0

end
