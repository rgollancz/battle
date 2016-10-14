require './lib/player'

class Game

  attr_reader :player_1, :player_2, :current_player, :game

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player_2
  end

  def current_player_name
    @current_player.name
  end

  def player_1_name
    @player_1.name
  end

  def player_2_name
    @player_2.name
  end

  def current_player_hp
    @current_player.hit_points
  end

  def player_1_hp
    @player_1.hit_points
  end

  def player_2_hp
    @player_2.hit_points
  end

  def attack
    @current_player.receive_damage
  end

  def turn_switcher
    @current_player == @player_1 ? @current_player = @player_2 : @current_player = @player_1
  end

end
