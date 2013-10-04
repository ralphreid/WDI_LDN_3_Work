

  def menu
    puts `clear`
    puts "What foo would you like to do?"
    puts "\t1: create animal" 
    m = gets.chomp
    binding.pry
    case m
    when "1"
      create_animal
      puts "run the method"
    else
      exit
    end
  end
  
  def create_animal 
    # prompts for attribute, create a new animal and then add to animals hash in $shelter.....
    #recomend to use the name of the animal as a key
      puts "What is the ANIMAL's Name?"
      name = gets.to_sym
      puts "What is the ANIMAL's Age?"
      age = gets
      puts "What is the ANIMAL's Gender?"
      gender = gets
      puts "What is the ANIMAL's Species?"
      species = gets
      puts "What is the ANIMAL's Toys"
      toys = gets.chomp.split (" ")


      new_animal = Animal.new(name, age, gender, species, toys)
      $shelter.animals[name] = new_animal

  end
  
  def create_client

  end
  
  def create_client
  end
  
  def adopt_animal
  end
  
  def return_animal
  end
