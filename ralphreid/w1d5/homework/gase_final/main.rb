# the file we use to launch the appliction. this file should contain the logic of the menu
# and call the function depending on user choice

# there should be seven options in the menu when launched; when you chose it
# should run a function in main.rb
require 'pry'
require 'rainbow'
# require_relative 'foo'   did not work so I tried
require_relative'functions'
# require_relative'data' 


response = menu
while response != 'q'
  case response
  when '1' then puts 'THIS IS A PLACE HOLDER for future Dev 1 : Create Clients'
  when '2' then puts 'THIS IS A PLACE HOLDER for future Dev 2 : List Clients'
  when '3' then puts 'THIS IS A PLACE HOLDER for future Dev 3 : Find a Client (by name)'
  when '4' then puts 'THIS IS A PLACE HOLDER for future Dev 4 : List Client Portfolios'
  when '5' then puts 'THIS IS A PLACE HOLDER for future Dev 5 : Create Portfolio'
  when '6' then puts 'THIS IS A PLACE HOLDER for future Dev 6 : Buy Stock'
  when '7' then puts 'THIS IS A PLACE HOLDER for future Dev 7 : Sell Stock'
  when '8' then puts 'THIS IS A PLACE HOLDER for future Dev 8 : List Stocks in a Portfolio'
  when '9' then puts 'THIS IS A PLACE HOLDER for future Dev 9 : List Stocks All Portfolios'
  end

  response = menu
end


# should call function to fake data here

# stuff showing menu


