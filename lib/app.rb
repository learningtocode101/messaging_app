require 'sinatra/base'
require './lib/message'

class Bounce < Sinatra::Base
  enable :sessions

  get '/' do
    session[:id] ||= 0
    session[:message_history] ||= []
    @messages = session[:message_history]
    session[:id] += 1
    erb(:index)
  end

  post '/send_message' do
    p session[:id]
    session[:message_history] << Message.new(params[:message], session[:id])
    #p session[:message_history]
    redirect '/'
  end

  get '/full_message' do
    @full_message = session[:message_history]
    erb(:full_message)
  end

  run! if app_file == $0

end
