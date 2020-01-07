# frozen_string_literal: true

# board Class
class Board
  attr_accessor :board_cells, :winning_combinations

  def initialize
    @board_cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @winning_combinations = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                             [1, 4, 7], [2, 5, 8], [3, 6, 9],
                             [1, 5, 9], [3, 5, 7]]
  end

  def print_board
    "
    \t \t #{@board_cells[0]} | #{@board_cells[1]} | #{@board_cells[2]}
    \t \t --+---+---
    \t \t #{@board_cells[3]} | #{@board_cells[4]} | #{@board_cells[5]}
    \t \t --+---+---
    \t \t #{@board_cells[6]} | #{@board_cells[7]} | #{@board_cells[8]}
    "
  end

  def check_winning_move(player)
    @winning_combinations.each do |arr|
      if player.moves.length >= 3 && player.moves.sort & arr == arr
        player.winner = true
        break
      end
    end
  end
end
