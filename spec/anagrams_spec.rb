require 'anagrams'

describe Anagrams do

  describe "#anagrams" do
    it "returns [] if there are no anagrams" do
      expect(subject.anagrams("top", ["bye", "hi"])).to eq([])
    end

    it "raises error, there is 1 input arg" do
      expect {subject.anagrams("five")}.to raise_error ArgumentError
    end

    it "returns the anagrams of hte first argument that are in teh dictionary" do
      expect(subject.anagrams("looter", ["spooky", "retool", "rootle", "tooler", "toddler"])).to eq(["RETOOL", "ROOTLE", "TOOLER"])
    end
  end
end
