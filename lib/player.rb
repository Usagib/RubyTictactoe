
class Player
  attr_accessor :moves, :winner
  attr_reader :name, :sign

  def initialize(name, sign, winner = false)
    @name = name
    @sign = sign
    @moves = []
    @winner = winner
  end

  def add_moves(move)
    @moves << move
  end
end
