require_relative 'brokerage'

def setup_brokerage_data(brokerage)
  brokerage.add_client('Bob', 50_000)
  brokerage.add_client('Sue', 120_000)
  brokerage.add_client('Jil', 99_000)

  brokerage.client('Bob').create_portfolio('Tech')
  brokerage.client('Bob').create_portfolio('Energy')
  brokerage.client('Bob').create_portfolio('Fashion')
  brokerage.client('Sue').create_portfolio('Finance')
  brokerage.client('Sue').create_portfolio('Medical')
  brokerage.client('Jil').create_portfolio('Retail')

  brokerage.client('Bob').add_stock_to_portfolio('Tech', 'AAPL', 10)
  brokerage.client('Bob').add_stock_to_portfolio('Tech', 'GOOG', 5)
  brokerage.client('Bob').add_stock_to_portfolio('Tech', 'AMZN', 3)
  brokerage.client('Bob').add_stock_to_portfolio('Tech', 'MSFT', 18)
  brokerage.client('Bob').add_stock_to_portfolio('Energy', 'GE', 10)
  brokerage.client('Bob').add_stock_to_portfolio('Energy', 'FLWS', 7)
  brokerage.client('Bob').add_stock_to_portfolio('Fashion', 'FCCY', 9)
  brokerage.client('Sue').add_stock_to_portfolio('Finance', 'VNET', 12)
  brokerage.client('Sue').add_stock_to_portfolio('Medical', 'JOBS', 11)
  brokerage.client('Jil').add_stock_to_portfolio('Retail', 'EGHT', 4)
  brokerage.client('Jil').add_stock_to_portfolio('Retail', 'AAON', 8)
end