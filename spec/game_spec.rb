require 'game.rb'

describe Game do
  let(:player_1) { Player.new("Player_1") }
  let(:player_2) { Player.new("Player_2") }
  subject(:game) {described_class.new(player_1,player_2)}

  describe 'accepts two player instances' do
    it 'returns players\' names' do
      expect(game.player_1_name).to eq("Player_1")
      expect(game.player_2_name).to eq("Player_2")
    end

    it 'returns players\' hit points' do
      expect(game.player_1_hp).to eq(Player::DEFAULT_HIT_POINTS)
      # expect(game.player_2_hp).to eq(Player::DEFAULT_HIT_POINTS)
    end

    it 'returns current victim\'s name' do
      expect(game.current_victim_name).to eq player_1.name
    end

    it 'returns the victim\'s hit points' do
      expect(game.current_victim_hp).to eq player_2.hit_points
    end
  end

  describe 'after an attack' do
    it 'switches the current victim' do
      expect { game.turn_switcher }.to change {game.victim}
    end
  end

  it 'makes the victim receive_damage' do
    expect(game.victim).to receive(:receive_damage)
    game.attack
  end
end
