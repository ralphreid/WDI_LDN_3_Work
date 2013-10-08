**Requirements**

* Create an account for client (name, balance).
* Every client can create multiple portfolios.
* A client can buy stocks at market rate; these stocks will be added to a portfolio and the purchase amount subtracted from cash. (You cannot go to a negative cash balance).
* A client can sell a stock. The proceeds go into his account.
* List all client portfolios and their values (each portfolio value and sum of portfolio values) and the account balance.
* List all stocks in a portfolio.
* List all clients.

**Note:**

Each time a portfolio balance is calculated, the program needs to go out to the web and get current stock prices.

`gem install yahoofinance`
`YahooFinance::get_standard_quotes('AAPL')['AAPL'].lastTrade`

`=> 438.62`


install the gem with students 

create the structure with them 

brokerage.rb
client.rb
data.rb
functions.rb
main.rb
protfolio.rb
stock.rb


tell a bit more about what the file are gonna be

to run the program we will call main.rb. this file contain the menu logic, the prompt and the functions that should be called depending on the user choice

the functions called will be in functions.rb so functions.rb will do all the storing logic for the user input

brokerage.rb contain the brokerage class which is gonna be the main object of the app, this object will have to be instantiated at the beginning of the app workflow. the class brokerage have a property clients 

client.rb contain the class client

portfolio is also a class 

stock

brokerage (:name, :clients)
  |
  |
client (:name, :portfolios)
  |
  |
Portfolio (:name, :portfolios)
  |
  |
Stock