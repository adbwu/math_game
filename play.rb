require './player.rb'
require './game.rb'

player_1 = Player.new
player_2 = Player.new
game = Game.new
game.generate_question
puts game.question
puts game.answer