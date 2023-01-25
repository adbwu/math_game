require './player.rb'
require './game.rb'
require './q_and_a.rb'

player_1 = Player.new
player_2 = Player.new
game = Game.new
q_and_a = QuestionAnswer.new

q_and_a.generate_question
puts q_and_a.question
answer = gets.chomp.to_i
q_and_a.check_answer(answer)