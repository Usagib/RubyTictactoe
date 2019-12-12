#!/usr/bin/env ruby
puts "Hello world!"

class Tictactoe
  def initialize()
    @player1 = Player.new(1, 'X')
    @player2 = Player.new(2, 'O')
    @board = Board.new
    start()
  end
end

class Player
  def initialize(number, symbol = nil)
      @number = number
      @symbol = symbol
  end
end

class Board
    def initialize
        @board = [
                  ["1", "2", "3"],
                  ["4", "5", "6"],
                  ["7", "8", "9"]
                ]
    end
end
