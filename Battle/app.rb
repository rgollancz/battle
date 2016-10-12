require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    "name1 =" << session[:name1].inspect
    "name2 =" << session[:name2].inspect
    erb :index
  end

  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect to('/play')
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    @name2_hp = 10
    erb :play
  end

  get '/attack' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb :attack
  end

  run! if app_file == $0

end



# start the server if ruby file executed directly
