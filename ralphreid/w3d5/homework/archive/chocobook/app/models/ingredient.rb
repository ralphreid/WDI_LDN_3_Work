class Ingredient < ActiveRecord::Base
  attr_accessible :name, :image
  has_many :amounts
  has_and_belongs_to_many :recipes
end
