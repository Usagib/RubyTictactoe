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

<<<<<<< HEAD
    def move(cell, player)
      num = cell.to_i
      if num == 1
        if @@board[0][0] != "1"
          puts "Cell taken! Turn lost :("
        else
          @@board[0][0] = player.get_symbol
        end
        return true
      end
      if num == 2
        if @@board[0][1] != "2"
          puts "Cell taken! Turn lost :("
        else
          @@board[0][1] = player.get_symbol
        end
        return true
      end
      if num == 3
        if @@board[0][2] != "3"
          puts "Cell taken! Turn lost :("
        else
          @@board[0][2] = player.get_symbol
        end
        return true
      end
      if num == 4
        if @@board[1][0] != "4"
          puts "Cell taken! Turn lost :("
        else
          @@board[1][0] = player.get_symbol
        end
        return true
      end
      if num == 5
        if @@board[1][1] != "5"
          puts "Cell taken! Turn lost :("
        else
          @@board[1][1] = player.get_symbol
        end
        return true
      end
      if num == 6
        if @@board[1][2] != "6"
          puts "Cell taken! Turn lost :("
        else
          @@board[1][2] = player.get_symbol
        end
        return true
      end
      if num == 7
        if @@board[2][0] != "7"
          puts "Cell taken! Turn lost :("
        else
          @@board[2][0] = player.get_symbol
        end
        return true
      end
      if num == 8
        if @@board[2][1] != "8"
          puts "Cell taken! Turn lost :("
        else
          @@board[2][1] = player.get_symbol
        end
        return true
      end
      if num == 9
        if @@board[2][2] != "9"
          puts "Cell taken! Turn lost :("
        else
          @@board[2][2] = player.get_symbol
        end
        return true
      end
      puts "not a valid cell! turn lost!"
    end
=======
puts "Game is starting ....."
game_board = Board.new
puts game_board.print_board
game_on = true
i = 0
while game_on && i < 10
  i += 1
  player = (i % 2).zero? ? first_player : second_player
  puts "#{player.name} turn , choose a cell[1-9]:"
>>>>>>> development

  move = gets.chomp.to_i
  puts "#{player.name},you choose #{move} :"

<<<<<<< HEAD
    def tiecondition #not working
      arr = @@board
      puts arr.to_a
      print arr.to_a.all?
      if arr.to_a.all?{|x| x == "X" || x == "O"}
        puts "Nothing else to do! Tied Game!"
        return true
      end
      return false
    end

    def wincondition
      if @@board[0][0] == @@board[0][1] && @@board[0][0] == @@board[0][2] && @@board[0][1] == @@board[0][2]
        return true
      end
      if @@board[1][0] == @@board[1][1] && @@board[1][0] == @@board[1][2] && @@board[1][1] == @@board[1][2]
        return true
      end
      if @@board[2][0] == @@board[2][1] && @@board[2][0] == @@board[2][2] && @@board[2][1] == @@board[2][2]
        return true
      end
      if @@board[0][0] == @@board[1][0] && @@board[0][0] == @@board[2][0] && @@board[1][0] == @@board[2][0]
        return true
      end
      if @@board[0][1] == @@board[1][1] && @@board[0][1] == @@board[2][1] && @@board[1][1] == @@board[2][1]
        return true
      end
      if @@board[0][2] == @@board[1][2] && @@board[0][2] == @@board[2][2] && @@board[1][2] == @@board[2][2]
        return true
      end
      if @@board[0][0] == @@board[1][1] && @@board[0][0] == @@board[2][2] && @@board[1][1] == @@board[2][2]
        return true
      end
      if @@board[0][2] == @@board[1][1] && @@board[0][2] == @@board[2][0] && @@board[1][1] == @@board[2][0]
        return true
      end
      false
    end
end
=======
  until game_board.board_cells.include?(move)
    puts "Your move is duplicated, Please input a number between 1-9 in the available moves on the board"
    move = gets.chomp.to_i
  end
>>>>>>> development

  player.add_moves(move)
  game_board.board_cells[move - 1] = player.sign
  game_board.check_winning_move(player)

<<<<<<< HEAD
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
  puts "\n"
  gameBoard.print_board
  if gameBoard.wincondition == true
     game_on = false
     puts "Winner: #{player.get_name}"
  end
  if gameBoard.tiecondition
=======
  puts game_board.print_board

  if player.winner
    puts "The winner is: #{player.name}!"
>>>>>>> development
    game_on = false
    break
  end
  if i == 9
    puts "The game is tie."
    break
  end
end
