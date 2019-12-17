#!/usr/bin/env ruby

require_relative "../lib/board.rb"
require_relative "../lib/player.rb"

puts "Welcome from the world Tic Tac Toe"
puts "Enter your first player name?"
first_player_name = gets.chomp
first_player = first_player_name.empty? ? Player.new("firstPlayer", "X") :
  Player.new(first_player_name, "X")
puts "Welcome #{first_player.name}, Your Radomly choose #{first_player.sign}"
puts "#################################"

puts "Enter your second player name?"
second_player_name = gets.chomp
second_player = second_player_name.empty? ? Player.new("second_player", "O") :
  Player.new(second_player_name, "O")

puts "Welcome #{second_player.name}, Your choose is #{second_player.sign}"

puts "\t### \t### \t### \n\t### \t### \t### \n\t### \t### \t###"
puts "###################################"
puts "###################################"
puts "\t### \t### \t### \n\t### \t### \t### \n\t### \t### \t###"
puts "###################################"
puts "###################################"
puts "\t### \t### \t### \n\t### \t### \t### \n\t### \t### \t###"

puts "Game is starting ....."
game_board = Board.new
puts game_board.print_board
game_on = true
i = 0
while game_on && i < 10
  i += 1
  player = (i % 2).zero? ? first_player : second_player
  puts "#{player.name} turn , choose a cell[1-9]:"

  move = gets.chomp.to_i
  puts "#{player.name},you choose #{move} :"

  until game_board.board_cells.include?(move)
    puts "Your move is duplicated, Please input a number between 1-9 in the available moves on the board"
    move = gets.chomp.to_i
  end

  player.add_moves(move)
  game_board.board_cells[move - 1] = player.sign
  game_board.check_winning_move(player)

  puts game_board.print_board

  if player.winner
    puts "The winner is: #{player.name}!"
    game_on = false
    break
  end
  if i == 9
    puts "The game is tie."
    break
  end
end
