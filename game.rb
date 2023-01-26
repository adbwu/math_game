class Game 
  attr_accessor :round, :turn, :winner, :scores

  def initialize(player_1, player_2)
    puts "\n----NEW GAME----\n"
    @current_player = player_1
    @next_player = player_2
  end

  def self.check_lost(num) 
    if num == 0
      return true
    end     
  end

  def self.results(result) 
    if result[:player_answer] == true
      puts "Correct!"
      return "correct"
    else 
      puts "Wrong! The correct answer is #{result[:answer]}!"
    end
  end

end