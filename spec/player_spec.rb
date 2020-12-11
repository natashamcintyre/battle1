require 'player'

describe Player do
  let(:name){ double :name }
  subject(:player1) { described_class.new(name) }
  let(:player2) { described_class.new(name) }

  it 'should return the player name' do
    expect(player1.get_name).to eq name
  end

  it "attacking a player reduces hitpoints" do
    expect { player1.attack(player2) }.to change { player2.hp }
  end
end
