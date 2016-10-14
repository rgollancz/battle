require 'game.rb'

describe Game do
  subject(:game) {described_class.new("Anna", "Sarah")}
  let(:player_2) {double :player_2 }

  describe 'game accepts two player instances' do
    it 'creates two players' do
      expect(game.player_1).to eq("Anna")
      expect(game.player_2).to eq("Sarah")
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
