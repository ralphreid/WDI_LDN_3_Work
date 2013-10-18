class Movie < ActiveRecord::Base
  attr_accessible :title, :year, :rated, :director, :image
  has_and_belongs_to_many :actors
end
