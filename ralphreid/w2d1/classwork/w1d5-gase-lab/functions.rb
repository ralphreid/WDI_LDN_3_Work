def menu
  puts `clear`
  puts '*** GASE ***'
  puts '1 - Create a client'
  puts '2 - Create a portfolio'
  puts '3 - Purchase Stocks'
  puts '4 - Sell Stocks'
  puts '5 - List all clients and their balances'
  puts "6 - List a client's portfolios and associated values"
  puts "7 - List all stocks in a portfolio and associated values"
  puts 'q - Quit program'
  print "--> "
  gets.chomp.downcase
end

def create_client(brokerage)
  print 'Client: '
  client = gets.chomp
  print 'Deposit: '
  deposit = gets.to_f
  brokerage.add_client(client, deposit)
end

def create_portfolio(brokerage)
  print 'Client: '
  client = gets.chomp
  print 'Portfolio: '
  portfolio = gets.chomp
  brokerage.client(client).create_portfolio(portfolio)
end

def purchase_stocks(brokerage)
  print 'Client: '
  client = gets.chomp
  print 'Portfolio: '
  portfolio = gets.chomp
  print 'Symbol: '
  symbol = gets.chomp.upcase
  print 'Shares: '
  shares = gets.to_i
  brokerage.client(client).add_stock_to_portfolio(portfolio, symbol, shares)
end

def sell_stocks(brokerage)
  print 'Client: '
  client = gets.chomp
  print 'Portfolio: '
  portfolio = gets.chomp
  print 'Symbol: '
  symbol = gets.chomp.upcase
  print 'Shares: '
  shares = gets.to_i
  brokerage.client(client).sell_stock_in_portfolio(portfolio, symbol, shares)
end

def list_clients(brokerage)
  puts brokerage.clients.values.join("\n")
  gets
end

def list_portfolios(brokerage)
  print 'Client: '
  client = gets.chomp
  puts brokerage.client(client).portfolios.values.join("\n")
  gets
end

def list_stocks(brokerage)
  print 'Client '
  print "(#{brokerage.clients.map {|key, client| client.name}.join(", ")}) : "
  client = gets.chomp
  print 'Portfolio '
  print "(#{brokerage.client(client).portfolios.map{|key, portfolio| portfolio.name}.join(", ")}) : "
  portfolio = gets.chomp
  puts brokerage.client(client).portfolios[portfolio].stocks.values.join("\n")
  gets
end
