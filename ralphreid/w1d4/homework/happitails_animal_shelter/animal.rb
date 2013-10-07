

class Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize name, age, gender, species, toys
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = [] #array of strings
  end

  def to_s
    "#{@name} is a #{@age} year old #{species} that loves #{toys.join(", ")}"
  end

end