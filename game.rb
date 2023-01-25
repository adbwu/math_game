class Game 
  attr_accessor :round, :turn, :current_player, :waiting_player, :winner, :scores

  def initialize(player)
    @current_player = player
  end

  def check_lost(num) 
    if num == 0
      return true
    end     
  end 

  def whos_next(player) 
    just_played = @current_player
    @current_player = @waiting_player
    @waiting_player = just_played
    return @current_player
  end
end