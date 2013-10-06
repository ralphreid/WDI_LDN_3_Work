

This weekend, you’ve been tasked by a client, a bank, to build a stock portfolio management app. It should remain fairly simple, but have the following functionality: 

Requirements:

In your app, you can:

* Create an account for client (name, balance),
* Every client can create multiple portfolios,
* A client can buy stocks at market rate; these stocks will be added to a portfolio and the purchase amount subtracted from cash. (You cannot go to a negative cash balance),
* A client can sell a stock. The proceeds go into his account,
* List all client portfolios and their values (each portfolio value and sum of portfolio values) and the account balance,
* List all stocks in a portfolio,
* List all clients.

Note:

Each time a portfolio balance is calculated, the program needs to go out to the web and get current stock prices.

In order to do that, we can use a gem! “yahoofinance” will do the trick.

Remember to first install the gem in terminal:
```
$ gem install yahoofinance
```
And to test it:
```
$ YahooFinance::get_standard_quotes('AAPL')['AAPL'].lastTrade
=> 438.62
```
To include it in your app, you add the line:
require ‘yahoofinance’