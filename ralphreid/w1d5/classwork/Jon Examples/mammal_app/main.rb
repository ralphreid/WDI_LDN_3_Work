require_relative "talkable"
require_relative "mammal"
require_relative "person"
require_relative "dog"

betty = Person.new
betty.say("hello")

ruff = Dog.new
ruff.shout("woof")