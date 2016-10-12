require 'player.rb'
describe Player do
  subject(:player) {described_class.new}
  describe 'Returns players name' do
    it 'returns when called' do
      #player = Player.new("Anna")
      expect(player.name("Anna")).to eq("Anna")
    end
  end
end
