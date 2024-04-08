class Player
  attr_accessor :lives
  attr_accessor :player_name

  def initialize(player_name)
    @player_name = player_name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

end


