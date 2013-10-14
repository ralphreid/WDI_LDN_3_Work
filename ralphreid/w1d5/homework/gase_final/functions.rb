# this file contains all the functions that will be called from main.#!/usr/bin/env ruby
# there should be seven options in the menu when launched

def menu
#WORK - break into client and broker interfaces
# Batch create clients
  puts `clear`
  puts "=== General Assembley Brokerage === \n\n\n"
  puts "\t== - ==\n"
  puts '1 : Create Client'
  puts '2 : List Clients'
  puts '3 : Find a Client (by name)'
  puts '4 : List Client Portfolios'
  puts "\n\n\t== - ==\n"
  puts '5 : Create Portfolio'
  puts '6 : Buy Stock  = --- Testing Required'
  puts '7 : Sell Stock   = --- Under Construction & Testing Required'
  puts '8 : List Stocks in a Portfolio --- Under Construction'
  puts '9 : List Stocks All Portfolios --- Under Construction'
  puts "Q : Quit\n\n"
  print '--> '.color('#ff3300')
  gets.chomp
end

def create_client
  print "Name:\t"
  name = gets.chomp
  $brokerage.clients[name] = Client.new(name)
end

def create_client_portfolio
  print "Existing Client Name:\t"
  name = gets.chomp
  print "Name of the New Portfolio:\t"
  portfolio_name = gets.chomp
  $brokerage.clients[name].portfolios[portfolio_name] = Portfolio.new(portfolio_name)
end

def buy
    print "Client Name:\t"
    client = gets.chomp
    print "Portfolio Name:\t"
    portfolio_name = gets.chomp
    print "Ticker Symbol\t"
    stock_symbol = gets.chomp
    print "Number of Shares to Buy:\t"
    num_shares = gets.chomp
    price = YahooFinance::get_standard_quotes(stock_symbol)[stock_symbol].lastTrade
    
    $brokerage.clients[client].portfolios[portfolio_name].stocks[stock_symbol] = Stock.new(stock_symbol, num_shares)
    $brokerage.clients[client].portfolios[portfolio_name].stocks[stock_symbol].buy_price = price
  
    binding.pry

  end

  def sell
    print "Client Name:\t"
    client = gets.chomp
    print "Portfolio Name:\t"
    portfolio_name = gets.chomp
    print "Ticker Symbol\t"
    stock_symbol = gets.chomp
    print "Number of Shares to Sell:\t"
    num_shares = gets.chomp
   
     #$brokerage.clients[client].portfolios[portfolio_name].stocks[stock_symbol].sell_price = YahooFinance::get_standard_quotes(stock_symbol)[stock_symbol].lastTrade
   
    s = $brokerage.clients[client].portfolios[portfolio_name].stocks[stock_symbol]
    s.shares -= num_shares
  end

