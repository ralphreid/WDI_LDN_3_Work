require'yahoofinance'
class Stock
  attr_accessor :stock_symbol, :shares, :buy_price, :sell_price#if you have AAPL you could have mulitpls shares

  def initialize stock_symbol, shares
    @stock_symbol = stock_symbol
    @shares = shares
    @buy_price = buy_price
    @sell_price = sell_price
  end

  # def self.get_quote   # ?? I do not fully understand this statement
    
  #   #YahooFinance::get_standard_quotes('AAPL')['AAPL'].lastTrade

  # end
  
  def name
  
  end
  

  
  def sell
    print "Number of Shares to Sell:\t"
    num_shares = gets.chomps
    @shares -= num_shares
  end
  
  def position
    @shares = Stock.get_quote * @shares
  end

end