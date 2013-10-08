require_relative 'client'

class Brokerage
  attr_accessor :name, :clients

  def initialize(name)
    @name = name
    @clients = {}
  end

  def add_client(name, deposit)
    @clients[name] = Client.new(name, deposit) unless @clients[name]
  end

  def client(name) #this will return the value corresponding to the instance based on the key passed below
    @clients[name]
  end
end
