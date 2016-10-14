require 'player.rb'

describe Player do
  subject(:player_1) {described_class.new("player_1")}
  subject(:player_1) {described_class.new("player_1")}

  describe 'returns player\'s name' do
    it 'returns when called' do
      expect(player_1.name).to eq("player_1")
    end
  end

  describe 'when attacked' do
    it 'loses hit points' do
      expect(player_1.receive_damage).to eq(Player::DEFAULT_HIT_POINTS-10)
    end
  end
end
