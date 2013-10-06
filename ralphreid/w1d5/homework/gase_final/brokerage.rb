class Brokerage
  attr_accessor :name, :clients

  def initialize name
    @name = name
    @clients = {}
  end
  
  def list_clients
    puts @clients.keys
    # binding.pry
  end

  def client(name)
    #find a client with the name
  end  
end 