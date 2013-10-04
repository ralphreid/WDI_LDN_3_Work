require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

$shelter = Shelter.new( "Happitails", "Main Street")
$client = Client.new("Bob", 22, "male", 2)
$animal = Animal.new("Fido", 9, "male", "Boxer")



# add all the initial data
###example below 2 is the number of childern.......this helps show the §
#  $shelter.clients['bob'] = Client.new('Bob', 22, 'male', 2)