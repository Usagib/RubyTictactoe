#!/usr/bin/env ruby
class Tictactoe
  def initialize()
    @player1 = Player.new(1, 'X')
    @player2 = Player.new(2, 'O')
    @board = Board.new
    start()
  end
end

class Player
  def initialize(name = nil, symbol = nil)
      @name = name
      @symbol = symbol
  end

  def set_name(name)
    @name = name
  end

  def set_symbol(symbol)
    @symbol = symbol
    while @symbol != 'X' && @symbol != 'O'
      puts "Try again with X (uppercase x) or O (uppercase o)"
      @symbol = gets.chomp
    end
  end

  def get_name
    @name
  end

  def get_symbol
    @symbol
  end

end

class Board
    def initialize
        @@board = [
                  ["1", "2", "3"],
                  ["4", "5", "6"],
                  ["7", "8", "9"]
                ]
    end

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

    def print_board
      puts "#{@@board[0]}"
      puts "#{@@board[1]}"
      puts "#{@@board[2]}"
    end

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
    game_on = false
  end
end
