require './player.rb'
require './game.rb'
require './q_and_a.rb'

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")
game = Game.new(player_1, player_2)
q_and_a = QuestionAnswer.new

def turn(current_player, next_player)
  players = [current_player, next_player]
  puts "\n#{current_player.name} it's your turn!"
  answer = QuestionAnswer::quiz
  if Game::results(answer) == "correct"
    puts Player::check_score(players)
    puts "\n----NEW TURN----\n" 
    turn(next_player, current_player)
  else  
      Player::lose_a_life(current_player)
      if current_player.lives == 0
        puts "\n----WINNER!----\n\n#{next_player.name} Wins with a score of #{next_player.lives}/3! Congratutations!\n\n----GAME OVER----\n\nThank you for playing!\n\n-----------------\n"
      else
        puts Player::check_score(players)
        puts "\n----NEW TURN----\n"
        turn(next_player, current_player)
      end
  end
end


turn(player_1, player_2)
