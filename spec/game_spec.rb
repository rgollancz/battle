require 'game.rb'

describe Game do
  let(:player_1) { Player.new("Anna") }
  let(:player_2) { Player.new("Sarah") }
  subject(:game) {described_class.new(player_1,player_2)}

  describe 'game accepts two player instances' do
    it 'returns players\' names' do
      expect(game.player_1_name).to eq("Anna")
      expect(game.player_2_name).to eq("Sarah")
    end

    it 'returns players\' hit points' do
      expect(game.player_1_hp).to eq(Player::DEFAULT_HIT_POINTS)
      expect(game.player_2_hp).to eq(Player::DEFAULT_HIT_POINTS)
    end

    it 'returns current player\'s name' do
      expect(game.current_player_name).to eq player_1.name
    end

    it 'returns current player\'s hit points' do
      expect(game.current_player_hp).to eq player_1.hit_points
    end
  end

  describe 'after an attack' do
    it 'switches the current player' do
      expect { game.turn_switcher }.to change {game.current_player}
    end
  end

  describe 'player 1 attacks player 2' do
    it 'responds to attack' do
      expect(game).to respond_to(:attack)
    end

    it 'responds to receive_damage' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
