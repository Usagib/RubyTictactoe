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
        @@board[0][0] != "1" ? false : @@board[0][0] = player.get_symbol
      end
      if num == 2
        @@board[0][1] != "2" ? false : @@board[0][1] = player.get_symbol
      end
      if num == 3
        @@board[0][2] != "3" ? false : @@board[0][2] = player.get_symbol
      end
      if num == 4
        @@board[1][0] != "4" ? false : @@board[1][0] = player.get_symbol
      end
      if num == 5
        @@board[1][1] != "5" ? false : @@board[1][1] = player.get_symbol
      end
      if num == 6
        @@board[1][2] != "6" ? false : @@board[1][2] = player.get_symbol
      end
      if num == 7
        @@board[2][0] != "7" ? false : @@board[2][0] = player.get_symbol
      end
      if num == 8
        @@board[2][1] != "8" ? false : @@board[2][1] = player.get_symbol
      end
      if num == 9
        @@board[2][2] != "9" ? false : @@board[2][2] = player.get_symbol
      end
    end

    def print_board
      puts "#{@@board[0]}"
      puts "#{@@board[1]}"
      puts "#{@@board[2]}"
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
  gameBoard.print_board

  if i >= 9 #winner pattern match
    game_on = false
  end
end

puts "Winner: #{player.get_name}"
