class Ingredient < ActiveRecord::Base
  attr_accessible :name, :image
  has_many :quantities
  has_many :recipes, through: :quantities
end