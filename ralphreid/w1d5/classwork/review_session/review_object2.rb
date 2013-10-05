require "pry"

class Wdi
  attr_accessor :computers, :classroom
  attr_reader :students, :instructors
  attr_writer :random_attr

  def initialize arguments_students
    @students = arguments_students
    @instructors = ["gerry", "julien"]
  end

end



binding.pry