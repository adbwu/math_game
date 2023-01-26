class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def self.lose_a_life(player)
    player.lives -= 1
  end

  def self.check_score(players)
    players_sorted = (players.sort_by { |p| [-p.lives, p.name] })
    return "\n----SCORE----\n\nCurrent score is #{players_sorted[0].name} in the lead with #{players_sorted[0].lives}/3 and #{players_sorted[1].name} with #{players_sorted[1].lives}/3"
  end

end