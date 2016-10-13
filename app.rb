require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

# enable :sessions

  get '/' do
    # $name << session[:name1].inspect
    # $name << session[:name2].inspect
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name1])
    $player_2 = Player.new(params[:name2])
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_score = $player_1.score
    @player_2_score = $player_2.score
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    $player_2.hit_points
    erb :attack
  end

  run! if app_file == $0

end



# start the server if ruby file executed directly
