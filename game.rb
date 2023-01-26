class Game 
  attr_accessor :round, :turn, :current_player, :waiting_player, :winner, :scores

  def initialize(player)
    @current_player = player
  end

  def self.check_lost(num) 
    if num == 0
      return true
    end     
  end 

  def self.whos_next(player) 
    just_played = @current_player
    @current_player = @waiting_player
    @waiting_player = just_played
    return @current_player
  end

  def self.results(result) 
    if result[:player_answer] == true
      puts "Correct!"
      self.whos_next(@current_player)
    else 
      puts "Wrong! The correct answer is #{result[:answer]}!"
      player_1.lose_a_life(@current_player)
      if game.check_lost(@current_player) 
        "Game over! #{@waiting_player.name} wins with a score of #{@waiting_player.lives}/3 "
      else 
        games.whos_next(@current_player)
      end
    end
  end

end