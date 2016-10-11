require 'sinatra/base'
require 'shotgun'
require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:names]
  end


  run! if app_file == $0
end

# start the server if ruby file executed directly
