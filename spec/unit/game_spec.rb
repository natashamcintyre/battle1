require  'game'


describe Game do 

    let(:player1) {double :player}
    let(:player2) {double :player}
    let(:game) {described_class.new(player1, player2)}

  it "attacking a player reduces hitpoints" do
    allow(player2).to receive(:reduce_hp) {true}
    
    expect(game.attack(player2)).to be true
  end
end 