require'yahoofinance'
class Stock
  attr_accessor :stock_symbol, :shares, :buy_price, :sell_price#if you have AAPL you could have mulitpls shares

  def initialize stock_symbol, shares
    @stock_symbol = stock_symbol
    @shares = shares
    @buy_price = buy_price
    @sell_price = sell_price
  end

end
  