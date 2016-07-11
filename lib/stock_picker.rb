class StockPicker
  def initialize(array)
    @stock_day_prices = array
  end

  def pick_stocks
    (0..(@stock_day_prices.length - 2)).times do |buy|
      (1..(@stock_day_prices.length - 1))
      @stock_day_prices[buy]
  end
end
