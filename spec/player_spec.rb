# frozen_string_literal: true

require "player"

RSpec.describe Player do
  let(:player) { Player.new("Nyan", "X") }

  it "has player's name" do
    expect(player.name).to eq("Nyan")
  end

  it "has player's sign" do
    expect(player.sign).to eq("X")
  end

  it "can move and save his moves" do
    player.add_moves(2)
    player.add_moves(3)
    expect(player.moves).to eq([2, 3])
  end
end
