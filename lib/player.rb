class Player
  attr_reader :hp

  def initialize(name)
    @player_name = name
    @hp = 60
  end

  def get_name
    @player_name
  end

  def reduce_hp
    @hp -= 10
  end

end
