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
    print "Client name:\t"
    name = gets.chomp
    puts "Client:\t#{@clients[name].name} is a client" 
  end  
end 