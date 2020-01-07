require "board"

RSpec.describe Board do
  let(:board) { Board.new }
  it "has a layout and that have board cells" do
    expect(board.board_cells).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
  end
end
