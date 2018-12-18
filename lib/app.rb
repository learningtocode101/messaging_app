require 'sinatra/base'
require './lib/message'

class Bounce < Sinatra::Base
  enable :sessions

  get '/' do
    session[:message_history] ||= []
    @messages = session[:message_history]
    erb(:index)
  end

  post '/send_message' do
    session[:message_history] << Message.new(params[:message])
    redirect '/'
  end

  run! if app_file == $0

end
