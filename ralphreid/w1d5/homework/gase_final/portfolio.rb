class Portfolio
  attr_accessor :name, :stocks #if you have AAPL you could have mulitpls shares

  def initialize portfolio_name
    @portfolio_name = portfolio_name
    @stocks = {}
  end

  # def buy_stock
  # end

  # def sell_stock

  # end

  # def position

  # end

  def create_portfolio
    print "Portfolio Name:\t"
    portfolio_name = gets.chomp
    $brokerage.portfolio_name[portfolio_name] = Portfolio.new(portfolio_name)
  end

end