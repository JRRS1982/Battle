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
    describe '#current_turn' do
      it 'starts as player 1' do
        expect(game.current_turn).to eq bob
      end
    end

    describe '#switch_turns' do
      it 'switches turns' do
        game.switch_turns
        expect(game.current_turn).to eq rob
      end
    end
  end

