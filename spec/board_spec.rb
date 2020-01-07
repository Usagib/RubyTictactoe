require "board"

RSpec.describe Board do
  let(:board) { Board.new }
  it "has a layout and that have board cells" do
    expect(board.board_cells).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
  end

  context "has a winning staregry combinations logic" do
    it "first winning straegry" do
      expect(board.winning_combinations).to include([1, 2, 3])
    end
    it "second winning straegry" do
      expect(board.winning_combinations).to include([4, 5, 6])
    end
    it "thrid winning straegry" do
      expect(board.winning_combinations).to include([7, 8, 9])
    end
    it "fourth winning straegry" do
      expect(board.winning_combinations).to include([1, 4, 7])
    end
    it "fifth winning straegry" do
      expect(board.winning_combinations).to include([2, 5, 8])
    end
    it "sixth winning straegry" do
      expect(board.winning_combinations).to include([3, 6, 9])
    end
    it "seventh winning straegry" do
      expect(board.winning_combinations).to include([1, 5, 9])
    end
    it "eighth winning straegry" do
      expect(board.winning_combinations).to include([3, 5, 7])
    end
  end

  it "update board cell by position" do
    board.board_cells[0] = "X"
    expect(board.board_cells).to eq(["X", 2, 3, 4, 5, 6, 7, 8, 9])
  end

  it "has game board layout" do
    expect(board.print_board).to eq("
    \t \t #{board.board_cells[0]} | #{board.board_cells[1]} | #{board.board_cells[2]}
    \t \t --+---+---
    \t \t #{board.board_cells[3]} | #{board.board_cells[4]} | #{board.board_cells[5]}
    \t \t --+---+---
    \t \t #{board.board_cells[6]} | #{board.board_cells[7]} | #{board.board_cells[8]}
    ")
  end
end
