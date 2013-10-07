require_relative'brokerage'
require_relative'client'
require_relative'portfolio'
require_relative'stock'

# Instantiate a Brokerage
$brokerage = Brokerage.new("Goldman Assembly")

# Instantiate clients.  Insert them into the brokerage's clients hash
$brokerage.clients['bob'] = Client.new("bob")
$brokerage.clients['jimmy'] = Client.new("jimmy")
$brokerage.clients['sean'] = Client.new("sean")
$brokerage.clients['missy'] = Client.new("missy")
$brokerage.clients['alpha'] = Client.new("alpha")
$brokerage.clients['luciano'] = Client.new("luciano")
$brokerage.clients['delly'] = Client.new("delly")
$brokerage.clients['piero'] = Client.new("piero")
$brokerage.clients['garnet'] = Client.new("garnet")

# Instantiate portfolios.
$brokerage.clients['bob'].portfolios['HIGH'] = Portfolio.new('HIGH')
$brokerage.clients['bob'].portfolios['Aggressive'] = Portfolio.new('Aggressive')
$brokerage.clients['bob'].portfolios['Risky'] = Portfolio.new('Risky')
$brokerage.clients['alpha'].portfolios['HIGH'] = Portfolio.new('HIGH')
$brokerage.clients['alpha'].portfolios['Aggressive'] = Portfolio.new('Aggressive')
$brokerage.clients['alpha'].portfolios['Risky'] = Portfolio.new('Risky')
$brokerage.clients['jimmy'].portfolios['HIGH'] = Portfolio.new('HIGH')
$brokerage.clients['delly'].portfolios['Aggressive'] = Portfolio.new('Aggressive')
$brokerage.clients['sean'].portfolios['Risky'] = Portfolio.new('Risky')
$brokerage.clients['garnet'].portfolios['HIGH'] = Portfolio.new('HIGH')
$brokerage.clients['piero'].portfolios['Aggressive'] = Portfolio.new('Aggressive')
$brokerage.clients['garnet'].portfolios['Risky'] = Portfolio.new('Risky')
$brokerage.clients['delly'].portfolios['HIGH'] = Portfolio.new('HIGH')
$brokerage.clients['jimmy'].portfolios['Aggressive'] = Portfolio.new('Aggressive')
$brokerage.clients['jimmy'].portfolios['Risky'] = Portfolio.new('Risky')

# Instantiate stock portfolios.
$brokerage.clients['bob'].portfolios['Aggressive'].stocks['AAPL'] = Stock.new('AAPL', 10)
$brokerage.clients['bob'].portfolios['Aggressive'].stocks['YHOO'] = Stock.new('YHOO', 50)
$brokerage.clients['bob'].portfolios['Aggressive'].stocks['MSFT'] = Stock.new('MSFT', 10)
