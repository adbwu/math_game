class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_a_life(player)
    player.lives -= 1
  end

end