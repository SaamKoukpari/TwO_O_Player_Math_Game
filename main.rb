require './game'
require './player'
require './question'

puts "Player 1, please enter your name"
player1 = $stdin.gets.chomp

puts "Player 2, please enter your name"
player2 = $stdin.gets.chomp

new_game = Game.new(player1, player2)

new_game.start