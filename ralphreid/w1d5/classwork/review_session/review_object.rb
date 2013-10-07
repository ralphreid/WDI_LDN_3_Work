require "pry"

class Wdi
  attr_accessor :computers, :classroom
  attr_reader :students, :instructors
  attr_writer :random_attr
end


binding.pry