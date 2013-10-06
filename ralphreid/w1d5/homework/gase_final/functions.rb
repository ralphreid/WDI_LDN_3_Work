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
  puts '6 : Buy Stock'
  puts '7 : Sell Stock'
  puts '8 : List Stocks in a Portfolio'
  puts '9 : List Stocks All Portfolios'
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
