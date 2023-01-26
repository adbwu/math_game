require './player.rb'
require './game.rb'
require './q_and_a.rb'

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")
game = Game.new(player_1)
q_and_a = QuestionAnswer.new
# whos_next = game.whos_next

def turn(player)
  puts "#{player.name} it's your turn!"
  answer = QuestionAnswer::quiz
  puts answer
  Game::results(answer)
end


turn(game.current_player)
