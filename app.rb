require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:name1])
    player_2 = Player.new(params[:name2])
    $game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb :play
  end

  get '/attack' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.attack($game.player_2)
    erb :attack
  end

  run! if app_file == $0

end



# start the server if ruby file executed directly
