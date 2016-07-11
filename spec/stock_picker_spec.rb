require 'stock_picker'

describe StockPicker do
  describe '#initialize' do
    it 'will accept input arrays' do
      expect { StockPicker.new([1])}.not_to raise_error
    end
  end

  describe '#pick_stocks' do
    context 'when array is small' do
      let(:stock_days) {StockPicker.new([1,2,3])}
      it 'will return [0,2] in arr sample [1,2,3]' do
        expect(stock_days.pick_stocks).to eq [0,2]
      end
    end

    context "when array is big" do
      let(:stock_days) {StockPicker.new([44, 30, 24, 32, 35, 30, 40, 38, 15])}

      it 'will return [2,6] with the large input array' do
        expect(stock_days.pick_stocks).to eq [2,6]
      end

    end
  end
end
