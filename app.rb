ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require './lib/message'
require './config/data_mapper'
require 'pry'

class Bounce < Sinatra::Base
  # enable :sessions

  get '/' do
    @messages = Message.all
    erb(:index)
  end

  post '/send_message' do
    Message.create(:content =>(params[:message]))
    redirect '/'
  end

  get '/full_message/:id' do
    @full_message = Message.get(params[:id])
    erb(:full_message)
  end

  run! if app_file == $0

end
