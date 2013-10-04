class Client

attr_accessor :name, :age, :gender, :num_pets

  def initialize name, age, gender, num_pets
    @name = name
    @age = age
    @gender = gender
    @num_pets = num_pets
  end

  def display_clients
  end

  def to_s
    "#{@name} of #{@age} years old is a #{gender} with #{@num_pets} pets"
  end

end
