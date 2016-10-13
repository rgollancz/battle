require 'game.rb'

describe Game do
  subject(:game) {described_class.new}
  let(:player) {double :player }

  describe 'player 1 attacks player 2' do
    it 'responds to attack' do
      expect(game).to respond_to(:attack)
    # expect(game.attack(player)).to eq(Player::DEFAULT_HIT_POINTS-10)
    end

    it 'responds to receive_damage' do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end
  end
end
