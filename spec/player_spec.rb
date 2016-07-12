require 'player'

describe Player do
  # Player
    # @wins
    # roll_dice

  describe "#initialize" do

    it "will initialize a player with 0 wins" do
      expect(Player.new.wins).to eq(0)
    end

    it "will throw an error if initialized with input args" do
      expect {Player.new(0)}.to raise_error ArgumentError
    end

  end

end
