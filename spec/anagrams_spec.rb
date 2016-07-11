require 'anagrams'

describe Anagrams do

  describe "#anagrams" do
      it "returns [] if thre are no anagrams" do
        expect(subject.anagrams("none-here", ["nope"]))
      end

      it "raises error, there is 1 input arg" do
        expect {subject.anagrams("five")}.to raise_error ArgumentError
      end

      it "returns the anagrams of hte first argument that are in teh dictionary" do
        expect(subject.anagrams("looter", %w[spooky retool rootle tooler toddler])).to eq(["RETOOL", "ROOTLE", "TOOLER"])
      end
  end
end
