class Recipe < ActiveRecord::Base
  attr_accessible :name, :course, :cooktime, :serving_size, :image, :instructions
  has_many :quantities
  has_many :ingredients, through: :quantities
end


