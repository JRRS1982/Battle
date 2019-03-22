require './lib/Game'

describe Game do
  let(:bob) { double :player }
  let(:rob) { double :player }
  subject(:game) { described_class.new(bob, rob) }

  it 'has two instances of player class' do
    expect(game).to have_attributes(:player_1 => bob)
    expect(game).to have_attributes(:player_2 => rob)
  end

    describe '#attack' do
      it 'damages the player' do
        expect(rob).to receive(:receive_damage)
        game.attack(rob)
      end
    end
  
end
