require 'game.rb'

describe Game do
  subject(:game) {described_class.new("Anna", "Sarah")}
  #let(:player_1) {double :player_1 }
  let(:player_2) {double :player_2 }

  describe 'game accepts two player instances' do
    it 'creates two players' do
      #it { is_expected.to respond_to(:).with(1).argument }
      expect(game.player_1).to eq("Anna")
      expect(game.player_2).to eq("Sarah")
    end
  end

  describe 'player 1 attacks player 2' do
    it 'responds to attack' do
      expect(game).to respond_to(:attack)
    # expect(game.attack(player)).to eq(Player::DEFAULT_HIT_POINTS-10)
    end

    it 'responds to receive_damage' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
