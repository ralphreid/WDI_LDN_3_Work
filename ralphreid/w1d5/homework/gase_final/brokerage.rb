class Brokerage
  attr_accessor :name, :clients

  def initialize name
    @name = name
    @clients = {}
  end
  
  def list_clients
    puts @clients.keys
  end

  def find_client
    print 'Client name:'
    name = gets.chomp
    puts "Client:\t#{@clients[name].name}\t\tPortfolios:\tAAAAAAAA" 
  end  
end 