# require local classes
require_relative'brokerage'
require_relative'client'
# require_relative'porfolio'
# require_relative'stock'

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

# Instantiate portfolios.  Insert them into the TBC