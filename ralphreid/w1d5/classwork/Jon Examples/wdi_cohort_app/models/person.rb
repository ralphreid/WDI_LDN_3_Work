require_relative "../lib/acts_as_ageable"

class Person

  include ActsAsAgeable
  include Comparable

  attr_accessor :name, :dob

  def initialize(name, dob)
    @name = name
    @dob  = ActsAsAgeable.parse_date_string dob
  end

  def to_s
    str = "#{name} is a #{self.class}, and is #{age} years old."
    str += " *** BIRTHDAY TODAY ***" if birthday_today?
    str
  end

  def <=> (other)
    self.name <=> other.name
  end

end