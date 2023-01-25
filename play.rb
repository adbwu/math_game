require './player.rb'
require './game.rb'
require './q_and_a.rb'

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")
game = Game.new(player_1)
q_and_a = QuestionAnswer.new

def turn(player)
  puts player
  puts "#{player.name} it's your turn!"
  q_and_a.generate_question
  puts q_and_a.question
  answer = gets.chomp.to_i
  if q_and_a.check_answer(answer) 
    puts "Correct!"
    game.whos_next(player)
  else 
    puts "Incorrect! The answer is #{q_and_a.answer}"
    player_1.lose_a_life(player)
    if game.check_lost(player) 
      "Game over! #{game.waiting_player.name} wins with a score of #{game.waiting_player.lives}/3 "
    else 
      games.whos_next(player)
    end
  end
end

turn(game.current_player)
