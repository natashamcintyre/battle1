require  'game'


describe Game do

  let(:player1) {double :player}
  let(:player2) {double :player}
  let(:game) {described_class.new(player1, player2)}

  before(:each) do
    allow(player1).to receive(:get_name) {player1}
    allow(player2).to receive(:get_name) {player2}
    allow(player2).to receive(:reduce_hp) {true}
    allow(player1).to receive(:reduce_hp) {true}
    allow(player2).to receive(:hp)
    allow(player1).to receive(:hp)
  end

  it "attacking a player reduces hitpoints" do
    expect(game.attack).to eq "#{player1} attacked #{player2}, your turn #{player2}"
  end

  it "attacking a player reduces hitpoints" do
    game.attack
    expect(game.attack).to eq "#{player2} attacked #{player1}, your turn #{player2}"
  end

  it "returns true if game over" do
    allow(player2).to receive(:hp) { 0 }
    allow(player1).to receive(:hp) { 0 }
    game.attack
    expect(game.over?).to be true
  end
end
