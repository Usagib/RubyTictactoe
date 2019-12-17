#!/usr/bin/env ruby

require_relative "../lib/board.rb"
require_relative "../lib/player.rb"

puts "Welcome from the world Tic Tac Toe"
puts "Enter your first player name?"
firstPlayerName = gets.chomp
firstPlayer = firstPlayerName.empty? ? Player.new("firstPlayer", "X") :
  Player.new(firstPlayerName, "X")
puts "Welcome #{firstPlayer.name}, Your Radomly choose #{firstPlayer.sign}"
puts "#################################"

puts "Enter your second player name?"
secondPlayerName = gets.chomp
secondPlayer = secondPlayerName.empty? ? Player.new("secondPlayer", "O") :
  Player.new(secondPlayerName, "O")

puts "Welcome #{secondPlayer.name}, Your choose is #{secondPlayer.sign}"

puts "\t### \t### \t### \n\t### \t### \t### \n\t### \t### \t###"
puts "###################################"
puts "###################################"
puts "\t### \t### \t### \n\t### \t### \t### \n\t### \t### \t###"
puts "###################################"
puts "###################################"
puts "\t### \t### \t### \n\t### \t### \t### \n\t### \t### \t###"

puts "Game is starting ....."
gameBoard = Board.new
puts gameBoard.print_board
game_on = true
i = 0
while game_on && i < 10
  i += 1
  player = i % 2 == 0 ? firstPlayer : secondPlayer
  puts "#{player.name} turn , choose a cell[1-9]:"

  move = gets.chomp.to_i
  puts "#{player.name},you choose #{move} :"

  until gameBoard.board_cells.include?(move)
    puts "Your move is duplicated, Please input a number between 1-9 in the available moves on the board"
    move = gets.chomp.to_i
  end

  player.add_moves(move)
  gameBoard.board_cells[move - 1] = player.sign
  gameBoard.check_winning_move(player)

  puts gameBoard.print_board

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
