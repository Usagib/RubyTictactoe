#!/usr/bin/env ruby

require_relative "../lib/board.rb"
require_relative "../lib/player.rb"

def findSecondChar(val)
    if val == "X"
        return "O"
    else
        return "X"
    end
end


puts "Welcome from the world Tic Tac Toe"
puts "Enter your first player name?"
firstPlayer = Player.new
firstPlayer.set_name(gets.chomp)
puts "Welcome #{firstPlayer.get_name}, Please Choose your (X / 0):"
firstPlayer.set_symbol(gets.chomp)
puts "#{firstPlayer.get_name} is choosing #{firstPlayer.get_symbol}"
puts "####################"
puts "Enter your second player name?"
secondPlayer = Player.new
secondPlayer.set_name(gets.chomp)
secondPlayer.set_symbol(findSecondChar(firstPlayer.get_symbol))
puts "#{secondPlayer.get_name} is auto choosing #{secondPlayer.get_symbol}"
print "###\n ###\n ###\n"
puts "Game is starting ....."
gameBoard = Board.new
gameBoard.print_board
game_on = true
i = 0
winner = true
while game_on
  i = i + 1
  player = i % 2  == 0 ? firstPlayer : secondPlayer;
  puts "#{player.get_name} turn , choose a cell[1-9]:"
  gameBoard.move(gets.chomp, player)
  gameBoard.print_board
  if gameBoard.wincondition == true
     game_on = false
   else
     puts "keep playing ..."
   end

  if i >= 9 #winner pattern match
    game_on = false
  end
end

puts "Winner: #{player.get_name}"
