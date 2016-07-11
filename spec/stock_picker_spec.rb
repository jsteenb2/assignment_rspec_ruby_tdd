require 'stock_picker'

describe StockPicker do
  describe '#initialize' do
    it 'will accept input arrays' do
      expect { StockPicker.new([1])}.not_to raise_error
    end

    it "raises error if price array has anything but fixnums" do
      expect { StockPicker.new(['hey'])}.to raise_error
    end
  end

  describe '#pick_stocks' do
    let(:same_prices) {StockPicker.new([1, 1, 1, 1, 1])}
    let(:many_prices) {StockPicker.new([44, 30, 24, 32, 35, 30, 40, 38, 15])}
    let(:few_prices) {StockPicker.new([1,2,3])}


  
    it 'will return [0,2] in arr sample [1,2,3]' do
      expect(few_prices.pick_stocks).to eq [0,2]
    end
    

    it 'will return [2,6] with the large input array' do
      expect(many_prices.pick_stocks).to eq [2,6]
    end
    
    
    it 'will return first two days if all the prices are the same' do
      expect(same_prices.pick_stocks).to eq [0,1]
    end
    
  end
end
