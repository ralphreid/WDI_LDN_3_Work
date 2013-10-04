


class Shelter

  attr_accessor :name, :address, :animals, :clients

  def initialize name, address
    @name = name
    @address = address
    @animals = {}
    @clients = {}
  end

  def display_animals
  end

  def display_clients
  end

  def to_s
    "#{@name} Shelter at #{@address}"
  end
end