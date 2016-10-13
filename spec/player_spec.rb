require 'player.rb'

describe Player do
  subject(:player) {described_class.new('Anna')}
  #  let(:sarah)  {double :sarah}

  describe 'Returns players name' do
    it 'returns when called' do
      #player = Player.new("Anna")
      expect(player.name).to eq("Anna")
    end
  end
  describe 'deducts 10 points' do
    it 'deducts 10 points' do
        expect(player.receive_damage).to eq(Player::DEFAULT_HIT_POINTS-10)
    end
  end
end
