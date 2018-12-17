require 'sinatra/base'

class Bounce < Sinatra::Base
  get '/' do
    'Bounce'
  end

  run! if app_file == $0

end