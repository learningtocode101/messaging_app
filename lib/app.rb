require 'sinatra/base'

class Bounce < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:sign_in)
  end

  post '/login' do
    session[:username] = params[:username]
    redirect '/bounce'
  end

  get '/bounce' do
    @username = session[:username]
    p @username
  end


  run! if app_file == $0

end
