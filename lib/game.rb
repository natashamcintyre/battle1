require_relative 'player'
class Game
  attr_reader :player1, :player2, :turn, :message

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = 1
  end

  def attack
    if turn.odd?
      player2.reduce_hp
      @message = "#{@player1.get_name} attacked #{@player2.get_name}, your turn #{@player2.get_name}"
    else
      player1.reduce_hp
      @message = "#{@player2.get_name} attacked #{@player1.get_name}, your turn #{@player1.get_name}"
    end
    @turn +=1
    @message
  end

  def over?
    @player2.hp == 0 || @player1.hp == 0
  end

end
